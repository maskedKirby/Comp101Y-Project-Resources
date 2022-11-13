/*
Desc: void TimeSystem()
Isaiah Turner
Desc: After the player presses the title screen, they go to the game and the
stopwatch begins. there are 15 weeks in total. For simplicity, we will scale
down the hours so that playtime is reasonable.
Key:
300 frames = 1 hour
5 hours = 1 day
7 days = 1 week

*/

int minutes = 0;
int hours = 0;
int days = 0;
int week = 0;
boolean thresh1Met; //thrsholds that when crossed trigger the next unit of counting
boolean thresh2Met;
boolean thresh3Met;



void setup(){
size(500,500);
}


void draw() {
  background(0);
  TimeSystem();

}

void TimeSystem(){
  
  
  thresh1Met = false;
  thresh2Met = false;
  thresh3Met = false;
  
  minutes++;
  if(minutes>300 && !thresh1Met){
    minutes = 0;
    hours+=1;
    thresh1Met = true;
    }
  
  if(hours>5 && !thresh2Met){
    hours = 0;
    days+=1;
    thresh2Met = true;
  }


  if(days>=7 && !thresh3Met){
    week+=1;
    thresh3Met = true;
  }
  
  PFont font;
  font = createFont("PixeloidMono-1G8ae.ttf",16);  
  textFont(font);
  //println("Time: ", minutes);
  textSize(16);
  text("Hours: " + str(hours) + " " + "Day: " + str(days)+" " + "Weeks: " + str(week),50,100);

}


