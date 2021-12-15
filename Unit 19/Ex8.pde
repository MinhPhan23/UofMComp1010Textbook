final int MAX=100; //<>// //<>//
int[] currentX= new int[MAX], currentY= new int[MAX];
int[] previousX= new int[MAX], previousY= new int[MAX];
final int currentColor=255;
final int prevColor=128;
boolean change=false;
int count=0;
int     preCount=0;

void setup() {
  size(500, 500);
}

void draw() {
  //background(255);
  if (change) {
    previousX=currentX;
    previousY=currentY;
    currentX=new int[MAX]; //<>//
    currentY=new int[MAX];
    change=false;
    preCount=count;
    count=0;
  }
  if (mousePressed) {
    currentX[count]=mouseX;
    currentY[count]=mouseY;
    count++;
  }
  if (count==MAX) change=true;
  stroke(255);
  drawArray(currentX, currentY, count);
  stroke(125);
  drawArray(previousX, previousY, preCount);
}

void drawArray(int[] a, int[] b, int n) {
  for (int i=1; i<n; i++) {
    line(a[i-1], b[i-1], a[i], b[i]);
  }
}

void mousePressed() {
  change=!change;
}
