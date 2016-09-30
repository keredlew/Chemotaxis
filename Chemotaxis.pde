Bacteria [] colony; 
 //declare bacteria variables here   
 void setup()   
 {     
   //initialize bacteria variables here  
   size(500,500); 
   //noLoop();
   colony = new Bacteria[50];
   for(int i = 0; i < colony.length; i++){
     colony[i] = new Bacteria();  
   }
 }   
 void draw()   
 {    
   //move and show the bacteria
   background(0);
   
   for(int i = 0; i < colony.length; i++)
   {
     colony[i].move();
     colony[i].show();
   }
   noStroke();
   fill(96,96,96,64);
   rect(mouseX-10,mouseY-10,20,20);
}
 class Bacteria    
 {     
   int bacX , bacY;
   //bacteria contructor
   Bacteria()
   {
     bacX = (int)(Math.random()*40)+230;
     bacY = (int)(Math.random()*40)+230;
     
   }
   //makes it move toward the mouse pointer
   void move()
   {
     if(bacX > mouseX) 
     {
       bacX = bacX + (int)(Math.random()*2)-1;
       bacY = bacY + (int)(Math.random()*3)-1;
     }
     else if(bacX < mouseX) 
     {
       bacX = bacX + (int)(Math.random()*2);
       bacY = bacY + (int)(Math.random()*3)-1;
     }
     else if( bacY > mouseY)
     {
       bacY = bacY + (int)(Math.random()*2)-1;
       bacX = bacX + (int)(Math.random()*3)-1;
     }
     else if(bacY < mouseY) 
     {
       bacY = bacY + (int)(Math.random()*2);
       bacX = bacX + (int)(Math.random()*3)-1;
     }
   }
   void show()
   {  
     fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
     ellipse(bacX,bacY,10,10);
     
   }
 }         
