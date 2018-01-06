#include "Arduino.h"

const int BUTTON_PIN = 9;
const int LED_PIN = 2;

void setup() {
	Serial.begin(9600);

	pinMode(BUTTON_PIN, INPUT);
	pinMode(LED_PIN, OUTPUT);
}

void loop() {
	int buttonState = digitalRead(BUTTON_PIN);

	digitalWrite(LED_PIN, buttonState == 0 ? HIGH : LOW);

	Serial.println(buttonState);

	delay(100);
}