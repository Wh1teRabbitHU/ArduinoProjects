#include <Arduino.h>

#define BUZZER_PIN 8

void setup() {
	pinMode(BUZZER_PIN, OUTPUT);
}

void loop() {

	// Speeding up
	for (int i = 100; i >= 0; i--) {
		digitalWrite(BUZZER_PIN, HIGH);
		delay(i);
		digitalWrite(BUZZER_PIN, LOW);
		delay(i);
	}

	// Slowing down
	for (int i = 0; i < 100; i++) {
		digitalWrite(BUZZER_PIN, HIGH);
		delay(i);
		digitalWrite(BUZZER_PIN, LOW);
		delay(i);
	}
}