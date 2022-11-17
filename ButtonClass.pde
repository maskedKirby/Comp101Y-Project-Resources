PVector Pos = new PVector(0,0); //this is a vector that represents button position
int Width;
int Height;
int colr;
int colr2;
int stroke_w; //stroke weight
String text;
int text_size;
boolean pressed;
boolean clicked;

//constructor of Button
Button(int x, int y, int w, int h, String t,int ts, int col,int col2) 
{
  Pos.x = x;
  Pos.y = y;
  Width = w;
  Height = h;
  text = t;
  text_size = ts;
  colr = col;
  colr2 = col2;
 
}

void Render(){  //draw the button
  fill(colr);
  rect(Pos.x,Pos.y, Width , Height);
  textAlign(CENTER,CENTER);
  fill(colr2);
  textSize(text_size);
  text(text,Pos.x+100,Pos.y+10);  
}

void update(){

if(mousePressed == true && pressed == false){ // if we clicked
  pressed = true;
  //and if mouse is in the button bounds
  if(mouseX >= Pos.x && mouseX <= Pos.x+Width && mouseY >= Pos.y && mouseY <= Pos.y + Height){
    clicked = true;    
      }
    }
else {
pressed = false;
clicked = false;
}

}

boolean isClicked()
{
  return clicked;
}

}


