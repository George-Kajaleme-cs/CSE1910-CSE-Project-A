///To Do List when super bored
//-Test all scenario's and search for any bugs 
//Finish fixing display values so it will show the new values with 0 with the 00










//The global Variables

///Things to finish up setting up the compensators for setup function
//Check for and repeats of if statements and if free debug the stuff so you can begin merging the assignment portion 




//The time the user will study for
float t = 1000 ; //<>// //<>//
//Time variable borrow by a different variable
float ti = t;
//=============

//"a" means the total amount of options the students studies for in that class
//"t" means the total that converts the list into a useful form
//"p" means the amount of time portioned for the high level values
//"s" means the amount of time for each option in that level of importance
//"n1"means the new values that are used after for the portioning to compensate for the change in proportion in one case fot the levels of importance
//"n2"means the new values that are used after for the portioning to compensate for the change in proportion in another case for the levels of importance
//"r" means that a value is rounded 
//"sec"means that it converts parts of a second to actual seconds

/// "L" repressents the Low level of importance values
String [] La = {"taffy","taffy"};
float Lt = La.length;
float Lp = t * 0.2;
float Lr = floor(Lp/Lt);

int newLr = int(Lp/Lt);
float Lsec = ((Lp/Lt)-Lr)*60;
int newLsec = int(Lsec);
String newLsec1 = nf(newLsec, 2, 0);
String Ls = newLr+":"+newLsec1;


//===============
/// "M" represents the Medium level of importance values
String [] Ma = {"taffy","taffy","taffy"};
float Mt = Ma.length;
float Mp = t * 0.3;
float Mr = floor(Mp/Mt);
int newMr = int(Mr);

float Msec = ((Mp/Mt)-Mr)*60;
int newMsec = int(Msec);
String newMsec1 = nf(newMsec, 2, 0);
String Ms = newMr+":"+newMsec1;



//===============
/// "H" represents the High level of importance values
String [] Ha = {"taffy","taffy","taffy"};
float Ht = Ha.length;
float Hp = t * 0.5;
float Hr= floor(Hp/Ht);
int newHr = int(Hr);

float Hsec= ((Hp/Ht)-Hr)*60;
int newHsec = int(Hsec);
String newHsec1 = nf(newHsec,2 ,0);
String Hs = newHr+":"+newHsec1;





//New Values for the values for proportion rates for the importance levels

//High proption compensaters0
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

// Fr determines the list that will help determine the function run/route
float [] Fr = {Mt, Ht, Lt};
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
float StudyDivPage = 2; //<>// //<>//