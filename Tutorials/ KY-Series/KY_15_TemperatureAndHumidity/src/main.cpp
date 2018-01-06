#include "Arduino.h"

int DH_PIN = 8; // A kommunikációs pin száma

// Segédfüggvények, hogy átláthatóbb legyen a kód

// Megadott állapotra vár
void waitForState(int state) {
	while (digitalRead (DH_PIN) == (state == HIGH ? LOW : HIGH));
}

// HIGH jelet küld
void sendHigh() {
	digitalWrite (DH_PIN, HIGH);
}

// LOW jelet küld
void sendLow() {
	digitalWrite (DH_PIN, LOW);
}

// Átvált olvasásra
void changeToRead() {
	pinMode (DH_PIN, INPUT);
}

// Átvált írásra
void changeToWrite() {
	pinMode (DH_PIN, OUTPUT);
}

// Feldolgozó függvények

/*
 * 8 bites (1 byte) adatokat olvas be, bitenként
 *
 * Példa az adatok érkezésére:
 *
 * A példa végeredmény: 01011001
 *
 * i = 0, input = low,  data = 00000000; -
 * i = 1, input = high, data = 01000000; data = 00000000 {data} | (1 << (6)) {01000000}
 * i = 2, input = low,  data = 01000000; -
 * i = 3, input = high, data = 01010000; data = 01000000 {data} | (1 << (4)) {00010000}
 * i = 4, input = high, data = 01011000; data = 01010000 {data} | (1 << (3)) {00001000}
 * i = 5, input = low,  data = 01011000; -
 * i = 6, input = low,  data = 01011000; -
 * i = 7, input = high, data = 01011001; data = 01011000 {data} | (1 << (0)) {00000001}
 *
 */
byte readOneByte() {
	byte data = 0; // Változó inicializálása

	for (int i = 0; i < 8; i ++) {
		waitForState(HIGH); // Várunk HIGH jelre, hogy megkezdhessük a feldolgozást

		delayMicroseconds(30); // Várni kell us-ot, hogy megkülönböztethető legyen a jel az előzőtől
		if (digitalRead (DH_PIN) == HIGH) { // Csak akkor adunk hozzá, ha HIGH érkezik be (0-t felesleges hozzáadni)
			data = data | (digitalRead(DH_PIN) << (7-i)); // Biteltolással kerül a helyére az adat, példát lásd fenn
		}

		waitForState(LOW); // Várunk, hogy visszaváltson LOW jelre, ezzel jelezve, hogy végzett az adatküldéssel
	}

	return data;
}

/*
 * Kiolvassa az érzékelő értékeit és visszatér egy 4 elemű byte tömbbel
 * Az első 2 elem A páratartalom, a második 2 elem a hőmérséklet
 *
 * pl:
 *
 * data = [ 35, 1, 26, 5 ];
 *
 * Páratartalom: 35.1%
 * Hőmérséklet: 26.5C
 *
 */
byte *readSensorData() {
	byte *data = (byte *) malloc(4); // Inicializáljuk az adattömbünket (Ide kerül az eredmény)

	changeToWrite(); // Kezdésnek írás módba állítjuk a kimenetet

	sendLow(); // LOW állapotba állítjuk az adatbitet, ezzel jelezve az érzékelőnek, hogy elkezdjük az olvasást
	delay (30); // 30ms-ot várunk arra, hogy a szenzornak legyen ideje aktiválódni
	sendHigh(); // Küldünk egy HIGH jelet, hogy készek vagyunk fogadni az adatokat
	delayMicroseconds (40); // Várunk 40 us-ot a válaszra

	changeToRead(); // átállunk olvasásra

	waitForState(LOW); // LOW jelig várunk
	delayMicroseconds (160); // Várunk 160 us-ot amíg elkezdi küldeni az adatokat a szenzor

	for (int i = 0; i < 4; i ++) { // Hőmérséklet és páratartalom adatokat fogadunk, nincs paritásbit
		data[i] = readOneByte();
	}

	changeToWrite(); // Visszaváltunk írás módba

	sendHigh(); // HIGH állapotba állítjuk a jelet, ezzel jelezve a szenzornak, hogy várakozzon

	return data;
}

// Setup

void setup () {
  Serial.begin (9600); // Soros kommunikáció inicializálása

  changeToWrite();
}

// Loop

void loop () {
  byte *result = readSensorData(); // Az értékek kiolvasása

  Serial.print ("Current humidity =");
  Serial.print (result[0], DEC); // display the humidity-bit integer;
  Serial.print ('.');
  Serial.print (result[1], DEC); // display the humidity decimal places;
  Serial.println ('%');
  Serial.print ("Current temperature =");
  Serial.print (result[2], DEC); // display the temperature of integer bits;
  Serial.print ('.');
  Serial.print (result[3], DEC); // display the temperature of decimal places;
  Serial.println ('C');

  free(result); // A változó felszabadítása a memóriacímen

  delay (1000);
}
