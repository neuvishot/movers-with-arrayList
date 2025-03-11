// mover checkpint 1
// static colors
ArrayList<mover> mymover;
int NumberOfMovers;

void setup() {
  size(600, 600);
  NumberOfMovers = 30;
  mymover = new ArrayList(); // instantiate array list

  int i = 0;
  while (i < NumberOfMovers) {
    mymover.add(new mover()); // calling mover constructors
    i++; // you make 50 movers with teh array list
  }
}

void draw() {
  background(#A24343);
  int i = 0;
  while (i < NumberOfMovers) {
    mover m = mymover.get(i);
    m.show();
    m.act();
    m.connections();
    // add .showbody && .showConnection
    i++;
  }
}
