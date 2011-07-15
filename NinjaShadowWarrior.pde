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

  //FOR SERIAL COMMUNICATION
  String portName = Serial.list()[0]; //chooses what is assumed is the port being used for serial communication
  myPort = new Serial(this, portName, 9600); //sets up the port

}

void draw() {
  
  switch(mode) {

    case 0: //REST

    case 1: //GAME

    case 2:

    case 3:  

  }
  
  
}
