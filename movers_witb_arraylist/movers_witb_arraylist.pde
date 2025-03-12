// mover checkpint 1
// static colors
ArrayList<mover> mymover;

void setup() {
  size(600, 600);
  mymover = new ArrayList(); // instantiate array list

  //int i = 0;
  //while (i < NumberOfMovers) {
  //  mymover.add(new mover()); // calling mover constructors
  //  i++; // you make 50 movers with teh array list
  //}
}

void draw() {
  background(#A24343);
  int i = 0;
  while (i < mymover.size()) { // the .size is the sytem telling you how many movers there are
    mover m = mymover.get(i);
    m.show();
    m.act();
    m.connections();
    if (m.alive == false){
     mymover.remove(i); 
    }
    i++;
  }
}

void mouseReleased() {
  mymover.add(new mover(mouseX, mouseY));
}
