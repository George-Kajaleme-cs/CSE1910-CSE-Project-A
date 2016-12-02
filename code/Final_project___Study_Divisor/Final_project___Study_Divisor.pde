


//The local Variables

//The time the user will study for
float t = 0;
//=============

//"a" means the total amount of options the students studies for in that class
//"t" means the total that converts the list into a useful form
//"p" means the amount of time portioned for the high level values
//"s" means the amount of time for each option in that level of importance
//"n1"means the new values that are used after for the portioning to compensate for the change in proportion in one case fot the levels of importance
//"n2"means the new values that are used after for the portioning to compensate for the change in proportion in another case for the levels of importance

/// "L" repressents the Low level of importance values
String [] La = {"1","1","1","1","1"};
float Lt = La.length;
float Lp = t * 0.2;
float Ls = Lp/Lt;

//===============
/// "M" represents the Medium level of importance values
String [] Ma = {"1","1","1"};
float Mt = Ma.length;
float Mp = t * 0.2;
float Ms = Lp/Mt;

//===============
/// "H" represents the High level of importance values
String [] Ha = {"1","1","1","1"};
float Ht = Ha.length;
float Hp = t * 0.2;
float Hs = Hp/Ht;

//New Values for the values for proportion rates for the importance levels

//High proption compensaters
float Hn1 = 0.60;
float Hn2 = 0.65;

//Medium proption compensaters
float Mn1 = 0.55;
float Mn2 = 0.40;

//Low proption compensaters
float Ln1 = 0.35;
float Ln2 = 0.30;

///================

// Maximum level of importance

// Fr determines the list that will help determine the function run 
float [] Fr = {Mt,Ht,Lt};
float Mh = max(Fr);
float Ml = min(Fr);

// ot means adds up the lengths of all the importance levels
float ot = Mt+Ht+Lt;

// r means the range or the size differential from the largest to the smallest values in the strings La, Ma, Ha
float r = Mh + Ml;

// s2 helps determine if the function is set 2 because if s2 is not zero than the scenario is not set 2
float s2 = r-ot;

//Determines the value of the questions 

  void setup(){
  size(566,566);
  
  }
  void draw(){
  
  
  
  
  }
  
  
  
  
  
  