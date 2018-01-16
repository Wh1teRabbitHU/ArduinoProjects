#include <Arduino.h>

#define SENSOR_PIN A0

int prevValue = -1;

void setup() {
	Serial.begin(9600);
}

void loop() {
	int rawValue = analogRead(SENSOR_PIN);
	int lightIntensity = map(rawValue, 1023, 0, 0, 100);

	if (prevValue != lightIntensity) {
		prevValue = lightIntensity;

		Serial.print(lightIntensity);
		Serial.println("%");
	}
}