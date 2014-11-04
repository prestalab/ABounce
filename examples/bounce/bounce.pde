#include <ABounce.h>

#define BUTTON A0

// Instantiate a Bounce object with a 5 millisecond debounce time
ABounce bouncer = ABounce(BUTTON, 100); 

void setup() {
	Serial.begin(9600);
}

void loop() {
	if (bouncer.update()) {
		Serial.println(bouncer.read());
	}
}