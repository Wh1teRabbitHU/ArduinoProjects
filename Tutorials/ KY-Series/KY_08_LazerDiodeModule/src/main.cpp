#include "Arduino.h"

const int LASER_PIN = 8;

void setup() {
	pinMode(LASER_PIN, OUTPUT);
}

void loop() {
	digitalWrite(LASER_PIN, LOW);

	delay(3000);

    digitalWrite(LASER_PIN, HIGH);

	delay(3000);
}