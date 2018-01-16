#include <Arduino.h>

#define PIN_RED 11
#define PIN_GREEN 10
#define PIN_BLUE 9

void ledColors(int red, int green, int blue) {
	analogWrite(PIN_RED, red);
	analogWrite(PIN_GREEN, green);
	analogWrite(PIN_BLUE, blue);
}

void setup () {
	pinMode(PIN_RED, OUTPUT);
	pinMode(PIN_GREEN, OUTPUT);
	pinMode(PIN_BLUE, OUTPUT);
}

void loop () {
	for (int red = 0; red < 256; red++) {
		ledColors(red, 0, 0);

		delay(10);
	}

	for (int green = 0; green < 256; green++) {
		ledColors(0, green, 0);

		delay(10);
	}

	for (int blue = 0; blue < 256; blue++) {
		ledColors(0, 0, blue);

		delay(10);
	}
}