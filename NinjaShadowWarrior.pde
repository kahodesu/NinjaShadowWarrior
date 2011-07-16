/////////////////////LIBRARIES////////////////////

import org.openkinect.*;
import org.openkinect.processing.*;
import ddf.minim.*;//for sound
import javax.mail.*;//for mailing
import javax.mail.internet.*;//for mailing

/////////////////////VARIABLES////////////////////

int mode = 0; //modes REST, GAME, FINAL


/////////////////////MAIN CODE/////////////////////
void setup()  {
  
  //BASIC SCREEN STUFF
  size(1024,768);
  background(0);
  smooth();
  
  //FOR SERIAL COMMUNICATION
  String portName = Serial.list()[0]; //chooses what is assumed is the port being used for serial communication
  myPort = new Serial(this, portName, 9600); //sets up myPort
}

void draw() {
  
  switch(mode) {

    case 0: //REST
      
    case 1: //SHOW OBJECT

    case 2://CAM SET UP,COUNTDOWN and SNAPSHOT

    case 3: //CALC

  }
  button();  //checks big button!
}
