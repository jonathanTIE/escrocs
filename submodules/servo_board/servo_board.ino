#include <SPI.h>

#include "servos.h"
#include "servo_resources.h"

void setup()
{
  Serial.begin(9600);
  
  Servos.begin();
  SERVO_FLAG_LOWER();
  delay(500);
}

void loop()
{
  for (int i = 1000; i < 2000; i += 30) {
      Servos.writeMicroseconds(1, i);
      delay(100);
  }
}
