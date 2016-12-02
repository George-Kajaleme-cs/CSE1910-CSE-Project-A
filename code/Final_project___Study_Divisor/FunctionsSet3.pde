//Button Function

void button (String t, int ts,int x, int y, int w, int h, int cner) {
  
  rect(x,y,w,h,cner);
  fill(18, 254, 3);
  textSize(ts);
  textAlign(CENTER);
  text(t,x,y,w,h);
  fill(#6679A0);
  if(mousePressed){
    if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
      //do stuffs
      fill(0);
      
    }
  }




 ////Leandro can you send me a proper way to use the variables in the if statements so I can finish the if statements, also can we use these instead of functions !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 ///respond asap 
 
 
////Set3
///sets of values that have no zero lengths for level of importance spots for their amount of options

//This function/if statement will determine if the parameters are met for the high level importance route for set 3
for((Mh=Ht) && (Mh>0) && (Ml>0)){

 
  
}
//This function/if statement will determine if the parameters are met for the high level importance route for set 3
if(Mh=Mt & Mh>0 &Ml>0){

  
}
//This function/if statement will determine if the parameters are met for the high level importance route for set 3
if(Mh=Lt & Mh>0 &Ml>0){
}


////Set2
///sets of values that have one zero lengths for level of importance spots for their amount of options

//This function/if statement will determine if the parameters are met for the low level importance route for set 2
if(Mh=Ht & s2=0){
}
//This function/if statement will determine if the parameters are met for the low level importance route for set 2
if(Mh=Mt & s2=0){
}
//This function/if statement will determine if the parameters are met for the Low level importance route for set 2
if(Mh=Lt & s2=0){
}
////Set1
///sets of values that have two zero length for level of importance spots for their amount of options

//This function/if statement will determine if the parameters are met for the High level importance route for set 1
if(Mh=Ht & Mh>0 &Ml>0){
}
//This function/if statement will determine if the parameters are met for the Medium level importance route for set 1
if(Mh=Mt & Mt = ot){
}
//This function/if statement will determine if the parameters are met for the Low level importance route for set 1
if(Mh=Lt & Lt= ot){
}
////Set0
///sets of values that all have zero lengths for level of importance spots for their amount of options

//This function/if statement will determine if the parameters are met for the all levels importance route for set 0
if(Mh=0 & Ml=0){
}
}