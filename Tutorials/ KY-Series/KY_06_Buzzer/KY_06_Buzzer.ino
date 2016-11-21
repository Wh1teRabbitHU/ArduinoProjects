#include "Arduino.h"

const int BUZZER_PIN = 13;

const int UPPER_LIMIT = 200;
const int LOWER_LIMIT = 10;
const int SPEED = 1;

bool isOn = false;

int delayTime = 10;
int change = 1;

void setup() {
	pinMode(BUZZER_PIN, OUTPUT);
}

// The loop function is called in an endless loop
void loop() {
	digitalWrite(BUZZER_PIN, isOn ? HIGH : LOW);

	isOn = !isOn;

	delay(delayTime);

	if (delayTime > UPPER_LIMIT) {
		change = -1 * SPEED;
	} else if (delayTime < LOWER_LIMIT) {
		change = SPEED;
	}

	delayTime = delayTime + change;
}
