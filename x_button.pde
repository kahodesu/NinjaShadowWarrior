//STUFF RELATED TO THE BIG BUTTON

/////////////////////LIBRARIES////////////////////
import processing.serial.*; //library for serial communication

/////////////////////VARIABLES////////////////////
Serial myPort;  // Create object from Serial class
int button;

/////////////////////FUNCTIONS////////////////////
void readSerial() {// Function that reads values coming in serial
  if ( myPort.available() > 0) {  // If data is available,
     button = myPort.read();
     if(button == 1) { //if button is pressed
       if (mode == 0) { //if it is at REST mode, then it starts to game
         switch(1); //game mode
       }
       else if (mode == 1 || mode == 2 || mode = 3) { //if button is pressed at other times
         switch(0); //resets the game
       }
     }   
  }
}
