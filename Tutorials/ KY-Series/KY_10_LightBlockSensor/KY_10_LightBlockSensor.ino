#include "Arduino.h"

const int LIGHT_BLOCK_PIN = A0;
const int TRESHOLD = 300;

void setup() {
	Serial.begin(9600);
}

void loop() {
	int value = analogRead(LIGHT_BLOCK_PIN);

	if (value > TRESHOLD) {
		Serial.println("Interrupted: " + (String) value);
	}

	delay(500);
}
