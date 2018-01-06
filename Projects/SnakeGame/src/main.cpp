#include "Arduino.h"
#include "math.h"
#include "LedControl.h" // https://github.com/wayoda/LedControl

LedControl lc = LedControl(12, 11, 10, 2);

byte snake[16];

bool isAlive = true;

int snakeSize = 0;
int direction = 1; // 0: right, 1: up, 2: left, 3: down

int snakePointsRow[10], snakePointsCol[10];

int prevXValue = 0;

int leftTresholdIn = 800;
int leftTresholdOut = 600;
int rightTresholdIn = 200;
int rightTresholdOut = 400;

int tick = 0;

byte revesreBinary(byte v) {
	byte r = v;
	int s = sizeof(v) * 8 - 1;
	for(v >>= 1; v; v >>= 1) {
		r <<= 1;
		r |= v & 1;
		s--;
	}
	r <<= s;

	return r;
}

void setupLedControl() {
	lc.shutdown(0, false);
	lc.shutdown(1, false);
	lc.setIntensity(0, 5);
	lc.setIntensity(1, 5);
	lc.clearDisplay(0);
	lc.clearDisplay(1);
}

void addPointToTheSnake(int row, int col) {
	snake[row] |= B1 << col;

	snakePointsRow[snakeSize] = row;
	snakePointsCol[snakeSize] = col;

	snakeSize++;
}

void setupSnake() {
	for (int i = 0; i < 16; i++) {
		snake[i] = B00000000;
	}

	addPointToTheSnake(7, 6);
	addPointToTheSnake(7, 5);
	addPointToTheSnake(7, 4);
	addPointToTheSnake(8, 4);
	addPointToTheSnake(9, 4);

	direction = 1;
	isAlive = true;
}

void drawDotsOnDisplay(byte* dots) {
	for (int i = 0; i < 8; i++) {
		lc.setRow(0, i, dots[i]);
	}

	for (int i = 15; i > 7; i--) {
		lc.setRow(1, 7 - (i - 8), revesreBinary(dots[i]));
	}
}

void turnLeft() {
	Serial.println("Turn left");
	direction = direction == 3 ? 0 : direction + 1;
}

void turnRight() {
	Serial.println("Turn right");
	direction = direction == 0 ? 3 : direction - 1;
}

bool checkIfWayBlocked(int row, int col) {
	if (row < 0 || row > 15 || col < 0 || col > 7) {
		return true;
	}

	for (int i = 1; i < snakeSize - 1; i++ ) {
		if (snakePointsRow[i] == row && snakePointsCol[i] == col) {
			return true;
		}
	}

	return false;
}

void goForward() {
	int lastRow = snakePointsRow[snakeSize - 1]; // get head row point
	int lastCol = snakePointsCol[snakeSize - 1]; // get head col point

	snake[snakePointsRow[0]] &= ~ (1 << snakePointsCol[0]); // remove tail point

	// Copy backward the points
	for (int i = 1; i < snakeSize; i++ ) {
		snakePointsRow[i - 1] = snakePointsRow[i];
	}

	for (int i = 1; i < snakeSize; i++ ) {
		snakePointsCol[i - 1] = snakePointsCol[i];
	}

	int newRow, newCol = 0;

	switch(direction) {
		case 0:
			newRow = lastRow;
			newCol = lastCol + 1;
			break;
		case 1:
			newRow = lastRow + 1;
			newCol = lastCol;
			break;
		case 2:
			newRow = lastRow;
			newCol = lastCol - 1;
			break;
		case 3:
			newRow = lastRow - 1;
			newCol = lastCol;
			break;
		default:
			break;
	}

	isAlive = !checkIfWayBlocked(newRow, newCol);

	// Setup new head point
	snake[newRow] |= B1 << newCol;

	snakePointsRow[snakeSize - 1] = newRow;
	snakePointsCol[snakeSize - 1] = newCol;
}

void handleControl() {
	int xValue = analogRead(A0);

	if (prevXValue != -1 && xValue > leftTresholdIn) {
		turnLeft();
		prevXValue = -1;
	}

	if (prevXValue != 1 && xValue < rightTresholdIn) {
		turnRight();
		prevXValue = 1;
	}

	if (xValue < leftTresholdOut && xValue > rightTresholdOut) {
		prevXValue = 0;
	}
}

void setup() {
	Serial.begin(9600);

	setupLedControl();
	setupSnake();
}

void loop() {
	if (isAlive) {
		drawDotsOnDisplay(snake);
		handleControl();
		if (tick > 10) {
			tick = 1;
			goForward();
		} else {
			tick++;
		}
	} else {
		// Serial.println("Game over!");
	}

	delay(100);
}
