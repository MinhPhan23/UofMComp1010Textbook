final int max=1000000;
boolean[] isPrime= new boolean[max];

for (int i=2; i<max; i++) isPrime[i]=true;
int i=2;

while (i<=sqrt(max)) {
  isPrime[i]=true; //<>//
  for (int j=2; j<=max/i; j++) {
    if (i*j<max) isPrime[i*j]=false;
  }
  i++;
  while(isPrime[i]==false) i++;
}

println(isPrime);
