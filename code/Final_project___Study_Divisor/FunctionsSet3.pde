




  ////Leandro can you send me a proper way to use the variables in the if statements so I can finish the if statements, also can we use these instead of functions !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  ///respond asap 


  ////Set3
  ///sets of values that have no zero lengths for level of importance spots for their amount of options
  //This function/if statement will determine if the parameters are met for the high level importance route for set 3

  if (Mh==Ht & Mh>0 & Ml>0 ) {
    for (int i = 0; i<1; i = i+1) {
      ti = ti - Hp;
      Ln2 = ti * Ln2;
    }
  }
  if (Mh==Ht & Mh>0 & Ml>0) {
  }
  //This function/if statement will determine if the parameters are met for the medium level importance route for set 3
  if (Mh==Mt & Mh>0 &Ml>0) {
    for (int i = 0; i<1; i = i+1) {
      ti = ti  + -Mp;
    }
    Hp = ti * Hn2;
    Lp = ti * Ln2;
  }
  if (Mh==Mt & Mh>0 & Ml>0) {
  }
  //This function/if statement will determine if the parameters are met for the low level importance route for set 3
  if (Mh==Lt & Mh>0 &Ml>0) {
    for (int i = 0; i<1; i = i+1) {
      ti = ti  + -Lp;
    }
    Hp = ti * Hn1;
    Mp = ti * Mn2;
  }
  if (Mh==Lt & Mh>0 & Ml>0) {
  }


  //---------------

  ////Set2
  ///sets of values that have one zero lengths for level of importance spots for their amount of options

  //This function/if statement will determine if the parameters are met for the low level importance route for set 2
  if (Mh==Ht & Lt>0 & Lt<Ht & s2==Lt & Ml==0) {
    Lp = ti * Ln1;
    Hp = ti * Hn2;
  }
  if (Mh==Ht & Mt>0 & Mt<Ht & s2==Mt & Ml==0) {
    Hp = ti * Hn1;
    Mp = ti * Mn2;
  }
  if (Mh==Ht & Lt>0 & Lt<Ht & s2==Lt & Ml==0) {
  }
  if (Mh==Ht & Mt>0 & Mt<Ht & s2==Mt & Ml==0) {
  }
  //This function/if statement will determine if the parameters are met for the medium level importance route for set 2
  if (Mh==Mt & Ht>0 & Mt<Ht & s2==Ht & Ml==0) {
    Hp = ti * Hn1;
    Mp = ti * Mn2;
  }
  if (Mh==Mt & Lt>0 & Lt<Mt & s2==Lt & Ml==0) {
    Mp = ti * Mn1;
    Lp = ti * Ln1;
  }
  if (Mh==Mt & Lt>0 & Lt<Mt & s2==Lt & Ml==0) {
  }
  if (Mh==Mt & Ht>0 & Ht<Mt & s2==Ht & Ml==0) {
  }

  //This function/if statement will determine if the parameters are met for the low level importance route for set 2
  if (Mh==Lt & Ht>0 & Ht<Lt & s2==Ht & Ml==0) {
    Lp = ti * Ln1;
    Hp = ti * Hn2;
  }
  if (Mh==Lt & Mt>0 & Mt<Lt & s2==Mt  & Ml==0) {
    Lp = ti * Ln1;
    Mp = ti * Mn1;
  }
  if (Mh==Lt & Ht>0 & Ht<Lt & s2==Ht & Ml==0) {
  }
  if (Mh==Lt & Mt>0 & Mt<Lt & s2==Mt & Ml==0) {
  }
  //----------------

  ////Set1
  ///sets of values that have two zero length for level of importance spots for their amount of options,

  //This function/if statement will determine if the parameters are met for the High level importance route for set 1,This function will only calculate the time for the objectives in high
  if (Mh==Ht & Ht==ot) {
    Hp = ti;
     
     for(int i = 0; i <Ht ; i = i + 1){ 
    text( Ha[i],45, y+25);
    text( Hs, 55, y+25);
    
    y = y+74;
    textSize(15);
  }
  }
  //This function/if statement will determine if the parameters are met for the Medium level importance route for set 1,This function will only calculate the time for the objectives in medium
  if (Mh==Mt & Mt==ot) {
    Mp = ti;
  }
  //This function/if statement will determine if the parameters are met for the Low level importance route for set 1, This function will only calculate the time for the objectives in low
  if (Mh==Lt & Lt==ot) {
    Lt = ti;
  }

  ////=================

  ////Set0
  ///sets of values that all have zero lengths for level of importance spots for their amount of options
  if (Mh==0 & Ml==0 ) {
  }

  ////===================

  //This function/if statement will determine if the parameters are met for the all levels importance route for triple sets that have 3 values that are equal to the highest weight
  //the lowest weitght.
  //This function will calculate all the values for all three levels of importance without requiring the use of compensators since all have the same value
  if (ot==Mh*3) {
  }
  ///-------------------
  ///This function/if statement will determine if the parameters are met for the all levels importance route for double sets that have 2 values that are equal to the highest weight
  //the lowest weitght.
  //
  
  // This function will only calculate the time for the objectives in medium and high  levels of importance and not for low because it has a value of zero 
  if (ot==Mh*2 & Ht==Mh & Mt==Mh & Lt==0) {
    Mp = ti * Mn2;
    Hp = ti * Hn1;
  }
  if (ot==Mh*2 & Ht==Mh & Mt==Mh & Lt==0) {
  }
  //This function will only calculate the time for the objectives in low and high levels of importance and not for low because it has a value of zero
  if (ot==Mh*2 & Ht==Mh & Lt==Mh & Mt==0) {
    Hp = ti * Hn2;
    Lp = ti * Mn2;
  }
  if (ot==Mh*2 & Ht==Mh & Lt==Mh & Mt==0) {
  }
  // This function will only calculate the time for the objectives in low and medium levels of importance and not for medium because it has a value of zero 
  if (ot==Mh*2 & Lt==Mh & Mt==Mh & Mt==0) {
    Lp = ti * Ln1; 
    Mp = ti * Mn1;
  }
  if (ot==Mh*2 & Lt==Mh & Ht==Mh & Mt==0) {
  }