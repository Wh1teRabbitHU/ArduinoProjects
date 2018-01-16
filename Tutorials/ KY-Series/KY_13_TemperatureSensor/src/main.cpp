#include <Arduino.h>
#include <math.h>

/**
 *	Pins are connected to: (Sensor facing to you, left-to-right)
 *	3.3V	-	GND	-	Analog port (A0)
 */

#define SENSOR_PIN A0

double temperature(int rawData) {
	double temp;

	temp = log(10000.0 * ((1024.0 / rawData - 1)));
	temp = 1 / (0.001129148 + (0.000234125 + (0.0000000876741 * temp * temp)) * temp);
	temp = temp - 273.15; // Convert Kelvin to Celcius

	return temp;
}

void setup() {
	Serial.begin(9600);
}

void loop() {
	int rawData = analogRead(SENSOR_PIN);
	double temp = temperature(rawData);

	Serial.print(temp);
	Serial.println(" °C");

	delay(500);
}