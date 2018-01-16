#include <Arduino.h>

#define SIGNAL_LED_PIN 13
#define SENSOR_PIN 3

void setup() {
    pinMode(SIGNAL_LED_PIN, OUTPUT);
    pinMode(SENSOR_PIN, INPUT);
}

void loop() {
    int status = digitalRead(SENSOR_PIN);

    digitalWrite(SIGNAL_LED_PIN, status);
}