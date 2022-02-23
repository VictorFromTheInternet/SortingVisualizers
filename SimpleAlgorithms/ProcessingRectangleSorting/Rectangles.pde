

class Rectangles
{
  // "Private var"
  int X;
  int w;
  int h;
  color c;
  
  // constructor
    Rectangles(int Xpos, int Wlength, int Hlength, color Color)
    {
      X = Xpos;
      w = Wlength;
      h = Hlength;
      c = Color;
    }
    
    Rectangles()  // default constructor
    {
      
    }
    
  // change color function
    void changeColor(color newColor)
    {
      c = newColor;
    }
    
  // swap function (height values)
    void swap(Rectangles[] arr, int left, int right)
    {
      Rectangles temp = new Rectangles();
      temp.h = arr[left].h;
      arr[left].h = arr[right].h;
      arr[right].h = temp.h;
      
      //selectedRectangles(arr, left, right);
    }
    
    
  // output rectangle function
    void output()
    {
      fill(c);
      rect(X, height-h, w, h); // x, y, width, height
    }
  
}
