#include <Arduino.h>

#define RED_PIN 11 // Select the pin for the red LED
#define GREEN_PIN 10 // Select the pin for the green LED
#define UPDATE_DELAY 15 // Delay between two changes

#define HAS_LOGGING false // Toggle logging

void writeLed(int red, int green) {
    analogWrite(RED_PIN, red);
    analogWrite(GREEN_PIN, green);

    if (HAS_LOGGING) {
        Serial.print("Red: ");
        Serial.print(red);
        Serial.print(", Green: ");
        Serial.println(green);
    }

    delay(UPDATE_DELAY);
}

void setup () {
    if (HAS_LOGGING)
        Serial.begin(9600);

    pinMode(RED_PIN, OUTPUT);
    pinMode(GREEN_PIN, OUTPUT);
}

void loop () {
    int val;

    // 255, 0 -> 255, 255
    for (val = 255; val > 0; val--) {
        writeLed(255, 255 - val);
    }

    // 255, 255 -> 0, 255
    for (val = 0; val < 255; val++) {
        writeLed(255 - val, 255);
    }

    // 0, 255 -> 255, 255
    for (val = 255; val > 0; val--) {
        writeLed(255 - val, 255);
    }

    // 255, 255 -> 255, 0
    for (val = 0; val < 255; val++) {
        writeLed(255, 255 - val);
    }
}