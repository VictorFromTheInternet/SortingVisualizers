# Classes:
- Rectangle
    - Rectangle() // constructor
    - changeColor()
    - swap()
    - output()

# Functions:
- setup() 
   - generates rect array
- draw()
   - calls outputRectangles()
   - calls selSort functions
   - calls checkSortedRectangles(), if sorted outputs rectangles as green
   - increments global variables 'I' and 'J' (used for the sorting functions)
- outputRectangles()
   - outputs the array of rect obj
- selectedRectangles()
   - highlights input rect red
- checkSortedRectangles()
   - updates a global boolean

## Sorting functions: 
- selSortInc()
   - increments global variables for selSort based on the global increment vars 'I' and 'J'
   - the draw function, and framerate() in setup(), dictate how quickly the inc vars are incremented
- selectionSort()
   - swaps Rectangle objs
