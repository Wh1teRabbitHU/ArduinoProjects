#include "Arduino.h"

const int RED_PIN = 1;
const int GREEN_PIN = 2;
const int BLUE_PIN = 3;

void setup() {
	pinMode(RED_PIN, OUTPUT);
	pinMode(GREEN_PIN, OUTPUT);
	pinMode(BLUE_PIN, OUTPUT);

	digitalWrite(RED_PIN, LOW);
	digitalWrite(GREEN_PIN, LOW);
	digitalWrite(BLUE_PIN, LOW);
}

void loop() {
	digitalWrite(BLUE_PIN, LOW);
	digitalWrite(RED_PIN, HIGH);
	delay(1000);

	digitalWrite(RED_PIN, LOW);
	digitalWrite(GREEN_PIN, HIGH);
	delay(1000);

	digitalWrite(GREEN_PIN, LOW);
	digitalWrite(BLUE_PIN, HIGH);
	delay(1000);
}