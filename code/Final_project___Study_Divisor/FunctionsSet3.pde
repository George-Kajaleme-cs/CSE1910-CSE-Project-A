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

if(Mh==Ht & Mh>0 & Ml>0){
}
//This function/if statement will determine if the parameters are met for the high level importance route for set 3
if(Mh==Mt & Mh>0 &Ml>0){
}
//This function/if statement will determine if the parameters are met for the high level importance route for set 3
if(Mh==Lt & Mh>0 &Ml>0){
}

//---------------

////Set2
///sets of values that have one zero lengths for level of importance spots for their amount of options

//This function/if statement will determine if the parameters are met for the low level importance route for set 2
if(Mh==Ht & s2>0){
}
//This function/if statement will determine if the parameters are met for the low level importance route for set 2
if(Mh==Mt & s2>0){
}
//This function/if statement will determine if the parameters are met for the Low level importance route for set 2
if(Mh==Lt & s2>0){
}

//----------------

////Set1
///sets of values that have two zero length for level of importance spots for their amount of options

//This function/if statement will determine if the parameters are met for the High level importance route for set 1
if(Mh==Ht & Mh>0 &Ml>0){
}
//This function/if statement will determine if the parameters are met for the Medium level importance route for set 1
if(Mh==Mt & Mt==ot){
}
//This function/if statement will determine if the parameters are met for the Low level importance route for set 1
if(Mh==Lt & Lt==ot){
}

////=================

////Set0
///sets of values that all have zero lengths for level of importance spots for their amount of options
if(Mh==0 & Ml==0){
}

////===================

//This function/if statement will determine if the parameters are met for the all levels importance route for triple sets that have 3 values that are equal to the highest weight
//the lowest weitght.
//This function will calculate all the values for all three levels of importance without requiring the use of compensators since all have the same value
if(ot==Mh*3){



}
///This function/if statement will determine if the parameters are met for the all levels importance route for double sets that have 2 values that are equal to the highest weight
//the lowest weitght.
//
// This function will only calculate the time for the objectives in low and medium  levels of importance and not for high because it has a value of zero 
if(ot==Mh*2 & Lt==Mh & Mt==Mh & Ht==0){
}
// This function will only calculate the time for the objectives in medium and high  levels of importance and not for low because it has a value of zero 
if(ot==Mh*2 & Ht==Mh & Mt==Mh & Lt==0){
}
// This function will only calculate the time for the objectives in low and high levels of importance and not for medium because it has a value of zero 
if(ot==Mh*2 & Lt==Mh & Ht==Mh & Mt==0){
}
//-----------------
//This function/if statement will determine if the parameters are met for the all levels importance route for single sets that have 1 value  that are equal to the highest weight and the only value in the levels of importance
// This function will only calculate the time for the objectives in high
if(ot==Mh & Mh==Ht){}
// This function will only calculate the time for the objectives in medium
if(ot==Mh & Mh==Lt){}
// This function will only calculate the time for the objectives in low
if(ot==Mh & Mh==Lt){}


}