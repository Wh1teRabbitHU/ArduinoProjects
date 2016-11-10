#include "Arduino.h"

const int ledPin = 13;
const int analogPin = 0;

const int delayMsec = 60;

const int maxSampleSize = 5;
const int maxFaultSize = 5;

const float treshold = 0.1;

bool heartbeatDetected() {
	static int prevValue = 0;
	static bool isPeak = false;

	bool result = false;

	int rawValue = analogRead(analogPin);

	if (rawValue > prevValue) {
		if (isPeak == false) {
			result = true;
			isPeak = true;
		}
	} else {
		isPeak = false;
	}

	prevValue = rawValue;

	return result;
}

void dataProcess(int bpm) {
	static int sample[5];
	static int fault[5];

	static int sampleSize = 0;
	static int faultSize = 0;

	if (sampleSize < maxSampleSize) {
		if (sampleSize > 0) {
			int prevValue = sample[sampleSize - 1];

			if (bpm * (1 + treshold) > prevValue && bpm * (1 - treshold) < prevValue) {
				sample[sampleSize] = bpm;
				sampleSize++;

				faultSize = 0;
			} else if (faultSize < maxFaultSize) {
				fault[faultSize] = bpm;
				faultSize++;
			} else {
				for (int i = 0; i < maxSampleSize ; i++) {
					sample[i] = fault[i];
				}

				sampleSize = 5;
				faultSize = 0;
			}
		} else {
			sample[0] = bpm;
			sampleSize++;
		}
	} else {
		int avgValue = getAverageValue(sample);

		if (bpm * (1 + treshold) > avgValue && bpm * (1 - treshold) < avgValue) {
			for (int i = 0; i < maxSampleSize - 1 ; i++) {
				sample[i] = sample[i + 1];
			}

			sample[maxSampleSize - 1] = bpm;
			faultSize = 0;

			Serial.println(getAverageValue(sample));
		} else if (faultSize < maxFaultSize) {
			fault[faultSize] = bpm;
			faultSize++;
		} else {
			for (int i = 0; i < maxSampleSize ; i++) {
				sample[i] = fault[i];
			}

			faultSize = 0;
		}
	}
}

int getAverageValue(int data[]) {
	int sum = 0;

	for (int i = 0; i < maxSampleSize; i++) {
		sum += data[i];
	}

	return sum / maxSampleSize;
}

void setup() {
	pinMode(ledPin, OUTPUT);

	Serial.begin(9600);
	Serial.println("Heartbeat detection sample code.");
}

void loop() {
	static int elapsedMs = 0;

	if (heartbeatDetected()) {
		int heartRateBPM = 60000 / elapsedMs;

		if (heartRateBPM < 200 &&  heartRateBPM > 45) {
			dataProcess(heartRateBPM);

			digitalWrite(ledPin, 1);
		}

		elapsedMs = 0;
	} else {
		digitalWrite(ledPin, 0);
	}

	delay(delayMsec);

	elapsedMs += delayMsec;
}
