//oct mover array checkpoint

//colors
color blue   = color(29, 178, 242);
color brown  = color(166, 120, 24);
color green  = color(74, 163, 57);
color red    = color(224, 80, 61);
color yellow = color(242, 215, 16);
color white  = color(255, 255, 255);
color black  = color(0, 0, 0);

//Mover variable

ArrayList<Mover> movermans;
int movernumber = 50;


void setup() {
  size(800, 800);

  movermans = new ArrayList();

  int i = 0;

  while (i < movernumber) {
    movermans.add(new Mover());
    i++;
  }
}

void draw() {

  background(green);
  int i = 0;
 

  while (i < movernumber ) {
    Mover m = movermans.get(i);
    m.act();
    m.showbody();
    m.connect();
    i++;
  }
}
