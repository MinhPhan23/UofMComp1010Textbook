void setup() { //<>//
  int[] a= {1, 2, 3};
  println(doubleArray(a));
}

int[] half(int[] oldA) {
  int[] newA =new int[oldA.length/2];
  int count=0;
  for (int i=0; i<oldA.length; i++) {
    if (i%2==0) {
      newA[count]=oldA[i];
      count++;
    }
  }
  return newA;
}

float[] doubleArray(int[] oldA) {
  float[] newA= new float[oldA.length*2-1];
  int count=0;
  for (int i=0; i<oldA.length; i++) {
    newA[count]=oldA[i];
    count++;
    if (i+1<oldA.length) {
      newA[count]=(oldA[i]+oldA[i+1])/2.0;
      count++;
    }
  }
  return newA;
}
