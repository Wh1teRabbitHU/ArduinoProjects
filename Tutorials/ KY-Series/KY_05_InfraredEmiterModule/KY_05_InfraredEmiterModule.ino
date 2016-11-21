#include "Arduino.h"
#include "IRremote.h"

const int IRRECV_PIN = 11;

IRsend irsend;
IRrecv irrecv (IRRECV_PIN);

decode_results results;

void setup() {
	Serial.begin(9600);

	irrecv.enableIRIn();
}

void loop() {
	if (irrecv.decode(&results)) {
		Serial.println("Decoded value: " + results.value);
		Serial.println("Sending forward...");

		for (int i = 0; i < 10; i++) {
			irsend.sendSony(results.value, 12);
			delay(40);
		}

		irrecv.enableIRIn();
	}
}
