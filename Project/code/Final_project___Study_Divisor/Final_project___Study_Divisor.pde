///To Do List when super bored
//-Test all scenario's and search for any bugs 










//The global Variables

///Things to finish up setting up the compensators for setup function
//Check for and repeats of if statements and if free debug the stuff so you can begin merging the assignment portion 




//The time the user will study for
float t ;
//Time variable borrow by a different variable
float ti = t;
//=============

//"a" means the total amount of options the students studies for in that class
//"t" means the total that converts the list into a useful form
//"p" means the amount of time portioned for the high level values
//"s" means the amount of time for each option in that level of importance
//"n1"means the new values that are used after for the portioning to compensate for the change in proportion in one case fot the levels of importance
//"n2"means the new values that are used after for the portioning to compensate for the change in proportion in another case for the levels of importance

/// "L" repressents the Low level of importance values
String [] La = {"Cheat","Grape","Car", "Frame ","Cheat","Grape","Car", "Frame "};
float Lt = La.length;
float Lp = t * 0.2;
float Ls = Lp/Lt;

//===============
/// "M" represents the Medium level of importance values
String [] Ma = {};
float Mt = Ma.length;
float Mp = t * 0.3;
float Ms = Lp/Mt;

//===============
/// "H" represents the High level of importance values
String [] Ha = {"Cheat","Grape","Car", "Frame ","Cheat","Grape","Car", "Frame "};
float Ht = Ha.length;
float Hp = t * 0.5;
float Hs = Hp/Ht;



//New Values for the values for proportion rates for the importance levels

//High proption compensaters
float Hn1 =  0.60;//matches with proportion compensator of medium 2 for low level
float Hn2 =  0.65;//matches with proportion compensator of low 2 for Medium level

//Medium proption compensaters
float Mn1 =  0.55;//matches with proportion compensator of low 1 for high level
float Mn2 =  0.40;//matches with proportion compensator of high 1 for low level

//Low proption compensaters
float Ln1 =  0.45;//matches with proportion compensator of medium 1 for high level
float Ln2 =  0.35;//matches with proportion compensator of high 2 for medium level

///================

// Maximum level of importance

// Fr determines the list that will help determine the function run 
float [] Fr = {Mt,Ht,Lt};
float Mh = max(Fr);
float Ml = min(Fr);

// ot means adds up the lengths of all the importance levels
float ot = Mt+Ht+Lt;

// r means the range or the size differential from the largest to the smallest values in the string lists La, Ma, Ha
float r = Mh + Ml;

// s2 helps determine if the function is set 2 because if s2 is not zero than the scenario is not set 2
float s2 = ot-r;

//====================

// Calculates the placing of the y value of the object
float y ;

//The page of displaying values variable

float Study_Divisor_Page;


  void setup(){
  size(566,900);
  
compensator();
 

  println(Ls);
}
  

  
 void draw(){
   background(0);
 
     


    
    Value_Display();

    
    

   //Increases the value for the lists with only three items
    
      
      
     
    //Adds 74 to each number on the list to move it the same interval
  
   
  
  }
  
 
 

  
  
  
  
  
  