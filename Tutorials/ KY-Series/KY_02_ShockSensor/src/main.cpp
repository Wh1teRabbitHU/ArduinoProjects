#include "Arduino.h"

bool prevState = false;

void setup() {
	Serial.begin(9600);

	pinMode(9, INPUT);
	pinMode(2, OUTPUT);
}

void loop() {
	digitalWrite(2, prevState ? HIGH : LOW);

	if (digitalRead(9) == 1) {
		prevState = !prevState;
	}

	delay(10);
}