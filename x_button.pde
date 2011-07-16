//STUFF RELATED TO THE BIG BUTTON

/////////////////////LIBRARIES////////////////////
import processing.serial.*; //library for serial communication

/////////////////////VARIABLES////////////////////
Serial myPort;  // Create object from Serial class
int button = 0; //the value from the big button
int firstDoubleClick = 0; //to keep track of double clicking
int timer = 0; //timer for double clicking
int doubleClickLimit = 1000; //time limit for double clicking 
/////////////////////FUNCTIONS////////////////////


void button() {
  if (myPort.available() > 0) {  // If data is available,
    button = myPort.read(); //read the value coming in thru myPort and set it to button
    if( button == 1) { //if the button is pressed during rest mode, it starts the game
      if (mode ==0) {
        mode = 1; //goes to game mode
      }
    }
    else if (firstDoubleClick == 0 && mode!=0) {
      firstDoubleClick = 1; //this is the first click
      timer = millis(); //start timer
    }
    else if (firstDoubleClick == 1 && (millis() - timer < doubleClickLimit)) {//if the first click has been made and it's still under the time limit
      firstDoubleClick = 0; //then not the first click anymore
      timer = 0; //timer resets
      mode = 0; //game goes back to rest mode
    }
  }
}

