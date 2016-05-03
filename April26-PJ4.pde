//  PROJECT 4 Narada Brooks //

String title=  "PROJECT 4:  array of integers";
String help=  "Press first letter of a function (or 'q' to quit)";
String author=  "NARADA";

int[] z=  { 888, 44, 24, 76, 105, 333, 71, 80, 106, 2, 99 };
int many=  z.length;

void setup() {
  size( 500,400 );
}

void draw() {
  background( 250,20,250 );
  fill( 0, 250, 100 );
  textSize(16);
  int next=20;
  
  // Show the numbers in a line.
  float x=50, y=50;
  for (int j=0; j<many; j++) {
    text( z[j], x, y );
    y += next;              // next line
  }
  //// Skip a line and display total and average
  y += next;
  int total=  sum( z, many );
  float avg=  float(total) / many;  
  text( "The total is:      "+total, 100, y );
  y += next;
  text( "The average is:  "+avg, 100, y );
  
  //// Title and Help keys ///
  textSize(20);
  text( title, width/4, 20 );
  textSize(16);
  text( help, width/4, 40 );
  text( "Keys:  b, s, i, d, t", width/4, 55 );

  
  text( author, 100, height-10 );
}

//// Return the sum total ////
int sum( int a[], int m ) {
  int result=0;
  for (int j=0; j<m; j++ ) {
    result += a[j];
  }
  return result;
}

void keyPressed() {
  if (key == 'q') exit();
  else if (key == 'b') big( z, many );
  else if (key == 's') small( z, many );
  //  
  else if (key == 'i') inc( z, many );
  else if (key == 'd') dec( z, many );
  else if (key == 't') triple( z, many );
  //
  else if (key == 'r') randomize( z, many );
  else text( "NOPE TRY AGAIN:  "+key, width/2, height/2 );
}

void big( int a[], int m ) {
  // Move the biggest number to the end of the array. 
  // (Swap array elements, to keep all of the numbers.)
  int w=0;
  for (int j=1; j<m; j++) {
    if (a[j] > a[w]) w=j;
  }
  int tmp;
  tmp=  a[m-1];              // Save last element of array.
  a[m-1]=  a[w];             // Store biggest at end.
  a[w]=  tmp;
}

void small( int a[], int m ) {
  // Move the smallest number to the beginning of the array 
  // (Swap, to keep all numbers.)
  int w=0;
  for (int j=1; j<m; j++) {
    if (a[j] < a[w]) w=j;
  }
  int tmp;
  tmp=  a[0];                // Save first element of array.
  a[0]=  a[w];               // Move selected element to the beginning.
  a[w]=  tmp;
}

void inc( int a[], int m ) {
  // Increase each number by one.
  for (int j=0; j<m; j++) {
    a[j]++;
  }
}

void dec( int a[], int m ) {
  // Decrease each number by one.
 for (int j=0; j<m; j++) {
    a[j]--;
  }
}

void triple( int a[], int m ) {
  // Triple each number.
 for (int j=0; j<m; j++) {
    a[j] *= 3;
  }
}
void randomize( int a[], int m ) {
  // Replace all numbers with random values.
 for (int j=0; j<m; j++) {
    a[j]=  int( random( 1, 999 ) );
  }
}
