               TreeNode tree;
TreeNode current;
String s="Welcome to the Ramani's awesome personality quiz! Press an arrow to play!";
BinarySearchTree t;
Scenes sc;

boolean one=false;
boolean two=false;
boolean zero=false;
private int levelCount=0;

void setup() {
  size(2000, 2000);
  t=new BinarySearchTree();
  tree=t.buildTree();
  current=tree;
  sc=new Scenes();
}

void draw() {
  background(0);
  fill(255);
  textSize(20);
  text(s, 500, 500);
  if (zero==true) {
   // sc.scene0();
   
  } else if (one==true) {
    //sc.scene1();
    text("play again? (press down arrow)", 600, 600);
  } else if (two==true) {
    //sc.scene2();
    text("play again? (press down arrow)", 600, 600);
  } else {
    zero=true;
  }
}

void keyPressed() {
  check();

  if (keyCode == LEFT) {
    s=(String)current.getValue();
    System.out.println(s);

    if (s.equals("You are a severe extrovert! You love to hang out with friends and you're outgoing!")) {
      one=true;
      zero=false;
    } else if (s.equals("You are a severe introvert! You like to have close relationships and you keep your thought to your self!")) {
      two=true;
      zero=false;
    } else {
      current= current.getLeft();
    }
  } else if (keyCode == RIGHT) {
    s=(String)current.getValue();
    System.out.println(s);

    if (s.equals("You are a severe extrovert! You love to hang out with friends and you're outgoing!")) {
      one=true;
      zero=false;
    } else if (s.equals("You are a severe introvert! You like to have close relationships and you keep your thought to your self!")) {
      two=true;
      zero=false;
    } else {
      current = current.getRight();
    }
  }
}

void check() {

  println(levelCount);
  if (levelCount>3 && keyCode==DOWN) {
    println("play Again");
    zero=true;
    levelCount=0;
    current=tree;
    s="Personality Quiz Again! Really? press any arrow";
    System.out.println(s);
  }
  levelCount+=1;
}


interface Treeable {
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
