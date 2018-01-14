#include <Arduino.h>

#include <OneWire.h>
#include <DallasTemperature.h>

// Data wire is plugged into port 10 on the Arduino
#define ONE_WIRE_BUS 10

// Delay between two measures in ms
#define MEASURE_INTERVAL 1000

// Setup a oneWire instance to communicate with the temperature sensor
OneWire oneWire(ONE_WIRE_BUS);

// Pass our oneWire reference to Dallas Temperature.
DallasTemperature sensor(&oneWire);

void setup(void) {
	Serial.begin(9600);
	Serial.println("Dallas Temperature IC Control Library Demo");

	sensor.begin();	// Start up the library
}

void loop(void) {
	sensor.requestTemperatures(); // Send the command to get temperatures

	Serial.print("Temperature is: ");
	Serial.println(sensor.getTempCByIndex(0));

  delay(MEASURE_INTERVAL);
}