//******************************************************
//
//                  Increment Functions
//
//*******************************************************
void selSortInc()
{
  // Selection Sort increment var
  if(J <= rect.length)
    J++;
  if(J >= rect.length){
    J=I+1;
    I++;
  } 
 
}
  
  
  
//*********************************************************
//
//                    Sorting Functions
//
//**********************************************************
  // selection sort
  void selectionSort(Rectangles arr[]) //throws InterruptedException
  {    
    
    // step through the array using global var (I + J)
    
    int location = I;
    int current = J;
    int smallest = I;
    
    selectedRectangles(arr, location, current);
    for(current = location; current<arr.length; current++ ){       
          if(arr[smallest].h > arr[current].h) // compare, update smallest
            smallest = current;        
        }
    if(current == arr.length) // swap
        arr[0].swap(arr, location, smallest); 
        
    
  }// end of sel sort
  
  
  // bubble sort
  void bubbleSort()
  {}
  
  
  // insertion sort
  void insertionSort()
  {}
  
  
