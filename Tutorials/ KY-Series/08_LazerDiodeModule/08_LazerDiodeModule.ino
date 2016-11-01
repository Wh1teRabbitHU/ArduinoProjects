#include "Arduino.h"

const int LASER_PIN = 8;

void setup() {
	pinMode(LASER_PIN, OUTPUT);
}

// The loop function is called in an endless loop
void loop() {
	digitalWrite(LASER_PIN, LOW);

	delay(3000);
}
