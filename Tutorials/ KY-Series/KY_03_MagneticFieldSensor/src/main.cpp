#include "Arduino.h"

const int SENSOR_PIN = 9;
const int LED_PIN = 2;

void setup() {
	Serial.begin(9600);

	pinMode(SENSOR_PIN, INPUT);
	pinMode(LED_PIN, OUTPUT);
}

void loop() {
	int isMagneticFieldPresent = digitalRead(SENSOR_PIN);

	digitalWrite(LED_PIN, isMagneticFieldPresent == 0 ? HIGH : LOW);

	Serial.println(isMagneticFieldPresent);

	delay(100);
}