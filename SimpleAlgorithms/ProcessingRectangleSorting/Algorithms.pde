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
    /*
    int smallest;
    int current;
    for(int i = 0; i<arr.length; i++){
      smallest = i;  // init smallest     
      for(current = i; current<arr.length; current++ ){       
          if(arr[smallest].h > arr[current].h) // compare, update smallest
            smallest = current;        
        }
        // swap
        arr[i].swap(arr, i, smallest);  
    }
    */    
    
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
        
    /*
    if(current <= arr.length){ // visual step through
      selectedRectangles(arr, location, current); 
    
      if(arr[smallest].h > arr[current].h) // compare
        smallest = current;
      
      if(current == arr.length) // swap
        arr[0].swap(arr, smallest, location); 
      }
    */
    
  }// end of sel sort
  
  
  // bubble sort
  void bubbleSort()
  {}
  
  
  // insertion sort
  void insertionSort()
  {}
  
  
