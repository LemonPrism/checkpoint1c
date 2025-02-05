float sunY, moonY;
boolean day, phase;


void setup() {
  size ( 800, 800);

  //Sun and Moon Animation ///////////////////////////////////
  sunY= 850;
  moonY=700;
  day=true;
  phase=true;
  ////////////////////////////////////////////////////////////\
 
}



void draw() {


  // Sun and Moon Animation //////////////////////////////////
  if (sunY < 150) {

    day=false;
  }

  if (moonY < 150) {

    day=true;
    sunY=1300;
  }




  if (day==false) {
    background(#243447);
    moonY=moonY-5;
    sunY=sunY+5;
  } else if (day==true) {


    moonY = moonY+5;
    sunY=sunY-5;
  }


  if (moonY< 700) {

    phase=false;
  } else if (moonY > 700) {



    phase=true;
  }

  if (phase==true) {
    background(#d4ebf2);
  } else if (phase==false) {
    background(#243447);
  }



  ////////////////////////////////////////////////////////////////////////////





  //sun
  fill(#FFCC33);
  circle ( 150, sunY, 100);


  //mountains








  //moon
  fill(#F6F1D5);
  circle( 150, moonY, 100);



  //Ground
  fill( #3f9b0b);
  noStroke();
  rect(-10, 650, width*2, height/5); // Grass


 
house ( 500 , 650 );

  //Trees
  fill ( #806517);
  noStroke();
  rect( 150, 500, 50, 150);


  //leaves
  fill (43, 147, 75, 70);

  int i = 140;

  while (i < 210 ) {
    circle (i, 500, 100);
    i = i + 5;
  }
}


void house(float x, float y) {


  pushMatrix();

  translate(x, y);
  scale (random(0.2,0.4));
 
  base();
  door();
  roof();
  window();





  popMatrix();
}

void base() {
  fill(#99cfe0);
  square( 0, 0, 200);
}


void door () {

  fill(#00008B);
  rect(50, 150, 30, 50);
  //knob
  fill(255);
  circle(70, 180, 5);
}

void roof() {


  //roof
  fill ( #D3D3D3);
  triangle(-50, 0, 100, -100, 250, 0);
}



void window() {


  //windows

  if (phase==true) {
    fill(255);
  } else {
    fill(255, 200, 0  );
  }
  square (100, 50, 50);

  stroke(5);
  line ( 125, 50, 125, 100);
  stroke(5);
  line ( 100, 75, 150, 75);
}
