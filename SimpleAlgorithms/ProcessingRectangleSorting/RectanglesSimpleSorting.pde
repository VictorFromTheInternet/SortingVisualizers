/*
    This is the driver file for the rectangle sorting program,
*/
//import java.util.Scanner;
import java.util.Random;
import javax.swing.*;


// declarations, "constants", objs, increment var
int NUM_RECT = selectNumRect();
boolean sorted = false;
  
Random rand = new Random();
Rectangle[] rect = new Rectangle[NUM_RECT];

int I = 0;
int J = 0;
int smallest = I;

  
void setup(){
  frameRate(30);
  size(1000,500); 
    
  // initialize array of rect
  color white = color(255);
  int Xpos = 0;
  int recWidth = 1000/NUM_RECT;
    for(int i = 0; i < rect.length; i++){
      rect[i] = new Rectangle(Xpos, recWidth, rand.nextInt(500), white);
      Xpos+=recWidth;
     }
    
  background(0); // clears console 
  outputRectangles(rect); // output array of rect
} // end of setup
  
  
void draw() 
{     
  background(0); // clears console 
  outputRectangles(rect); // output array of rect
  
  // call sorting functions
  selectionSort(rect);
   selSortInc();
  

  
  // check if list is sorted
  if(I >= rect.length-1){ 
    J=0;
    I=0;
    
    // check if the array is sorted
      checkSortedRectangles(rect);    // updates var "sorted"
      
      if(sorted == true){
        for(int i = 0; i<rect.length; i++)
          rect[i].changeColor(color(0,255,0));  // change every rec to green
        background(0);
        outputRectangles(rect);
      } 
      
      noLoop();
  }
  
  println("J: "+J+" I: "+I);

} // end of draw()




int selectNumRect()
{
  String str = JOptionPane.showInputDialog("Please enter the number of rectangles to sort: ");
  return Integer.parseInt(str);
}


void outputRectangles(Rectangle arr[]){
    for(int i = 0; i < arr.length; i++)
      arr[i].output();
} // end of output rectangles


void selectedRectangles(Rectangle[] arr, int left, int right){
  color white = color(255,255,255);
  color red = color(255,0,0);
      
  arr[left].changeColor(red);
  arr[right].changeColor(red);
      
  outputRectangles(arr);
      
  arr[left].changeColor(white);
  arr[right].changeColor(white);
      
}// and of selected rectangles (change rect color)


void checkSortedRectangles(Rectangle arr[])
{
  // check if i < rightSide, (every position)
  for(int i = 0; i<(arr.length-1); i++){
    int current = i;

    for(int rightSide = current+1; rightSide < arr.length-1; rightSide++)
      sorted = (arr[current].h < arr[rightSide].h) ? true : false;
    
    if(sorted == false)
        break; 
  }
  
}// end of sorted rect ()   
