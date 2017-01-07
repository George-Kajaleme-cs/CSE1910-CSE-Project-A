void compensator () {




  ////Set3
  ///Double sets with one low value and two max weight values

  // This function will calculate determine values for scenario's when two values have the high value
  if (Mh>0 & Mh==Mt & Mh==Lt & Mh>Ht & Ml>0 & Ml== Ht & t>0 ) {
  }

  if (Mh>0 & Mh==Mt & Mh==Ht & Mh>Lt & Ml>0 & Ml== Lt & t>0 ) {
  }
  if (Mh>0 & Mh==Ht & Mh==Lt & Mh>Mt & Ml>0 & Ml== Mt & t>0 ) {
  }
  ///sets of values that have no zero lengths for level of importance spots for their amount of options
  //This function/if statement will determine if the parameters are met for the high level importance route for set 3

  if (Mh==Ht & Mh>0 & Ml>0 & Ml<Mh & Lt>0 & Mt>0 & Lt<Mh & Mt<Mh ) {
    ti = ti - Hp;
    Lp = ti * Ln1;
    Mp = ti * Mn1;

    Lr = floor(Lp/Lt);
    newLr = int(Lp/Lt);
    Lsec = ((Lp/Lt)-Lr)*60;
    newLsec = int(Lsec);
    newLsec1 = nf(newLsec, 2, 0);
    Ls = newLr+":"+newLsec1;

    Mr = floor(Mp/Mt);
    newMr = int(Mp/Mt);
    Msec = ((Mp/Mt)-Mr)*60;
    newMsec = int(Msec);
    newMsec1 = nf(newMsec, 2, 0);
    Ms = newMr+":"+newMsec1;

    Hr= floor(Hp/Ht);
    newHr = int(Hr);
    Hsec= ((Hp/Ht)-Hr)*60;
    newHsec = int(Hsec);
    newHsec1 = nf(newHsec, 2, 0);
    Hs = newHr+":"+newHsec1;
  }


  //This function/if statement will determine if the parameters are met for the medium level importance route for set 3
  if (Mh==Mt & Mh>0 & Ml>0 & Ml<Mh & Lt>0 & Ht>0 & Ht<Mh & Lt<Mh) {

    ti = ti  + -Mp;
    Hp = ti * Hn2;
    Lp = ti * Ln2;

    Lr = floor(Lp/Lt);
    newLr = int(Lp/Lt);
    Lsec = ((Lp/Lt)-Lr)*60;
    newLsec = int(Lsec);
    newLsec1 = nf(newLsec, 2, 0);
    Ls = newLr+":"+newLsec1;

    Mr = floor(Mp/Mt);
    newMr = int(Mp/Mt);
    Msec = ((Mp/Mt)-Mr)*60;
    newMsec = int(Msec);
    newMsec1 = nf(newMsec, 2, 0);
    Ms = newMr+":"+newMsec1;

    Hr= floor(Hp/Ht);
    newHr = int(Hr);
    Hsec= ((Hp/Ht)-Hr)*60;
    newHsec = int(Hsec);
    newHsec1 = nf(newHsec, 2, 0);
    Hs = newHr+":"+newHsec1;
  }


  //This function/if statement will determine if the parameters are met for the low level importance route for set 3
  if (Mh==Lt & Mh>0 & Ml>0 & Ml<Mh & Ht>0 & Mt>0 & Ht<Mh & Mt<Mh) {

    ti = ti  + -Lp;

    Hp = ti * Hn1;
    Mp = ti * Mn2;

    Lr = floor(Lp/Lt);
    newLr = int(Lp/Lt);
    Lsec = ((Lp/Lt)-Lr)*60;
    newLsec = int(Lsec);
    newLsec1 = nf(newLsec, 2, 0);
    Ls = newLr+":"+newLsec1;

    Mr = floor(Mp/Mt);
    newMr = int(Mp/Mt);
    Msec = ((Mp/Mt)-Mr)*60;
    newMsec = int(Msec);
    newMsec1 = nf(newMsec, 2, 0);
    Ms = newMr+":"+newMsec1;

    Hr= floor(Hp/Ht);
    newHr = int(Hr);
    Hsec= ((Hp/Ht)-Hr)*60;
    newHsec = int(Hsec);
    newHsec1 = nf(newHsec, 2, 0);
    Hs = newHr+":"+newHsec1;
  }




  //---------------

  ////Set2
  ///sets of values that have one zero lengths for level of importance spots for their amount of options

  //This function/if statement will determine if the parameters are met for the high level importance route for set 2
  if (Mh==Ht & Lt>0 & Lt<Ht & s2==Lt & Ml==0) {
    Lp = ti * Ln1;
    Hp = ti * Hn2;


    Lr = floor(Lp/Lt);
    newLr = int(Lp/Lt);
    Lsec = ((Lp/Lt)-Lr)*60;
    newLsec = int(Lsec);
    newLsec1 = nf(newLsec, 2, 0);
    Ls = newLr+":"+newLsec1;



    Hr= floor(Hp/Ht);
    newHr = int(Hr);
    Hsec= ((Hp/Ht)-Hr)*60;
    newHsec = int(Hsec);
    newHsec1 = nf(newHsec, 2, 0);
    Hs = newHr+":"+newHsec1;
  }
  if (Mh==Ht & Mt>0 & Mt<Ht & s2==Mt & Ml==0) {
    Hp = ti * Hn1;
    Mp = ti * Mn2;


    Mr = floor(Mp/Mt);
    newMr = int(Mp/Mt);
    Msec = ((Mp/Mt)-Mr)*60;
    newMsec = int(Msec);
    newMsec1 = nf(newMsec, 2, 0);
    Ms = newMr+":"+newMsec1;


    Hr= floor(Hp/Ht);
    newHr = int(Hr);
    Hsec= ((Hp/Ht)-Hr)*60;
    newHsec = int(Hsec);
    newHsec1 = nf(newHsec, 2, 0);
    Hs = newHr+":"+newHsec1;
  }

  //This function/if statement will determine if the parameters are met for the medium level importance route for set 2
  if (Mh==Mt & Ht>0 & Mt>Ht & s2==Ht & Ml==0) {
    Hp = ti * Hn1;
    Mp = ti * Mn2;


    Hr= floor(Hp/Ht);
    newHr = int(Hr);
    Hsec= ((Hp/Ht)-Hr)*60;
    newHsec = int(Hsec);
    newHsec1 = nf(newHsec, 2, 0);
    Hs = newHr+":"+newHsec1;


    Mr = floor(Mp/Mt);
    newMr = int(Mp/Mt);
    Msec = ((Mp/Mt)-Mr)*60;
    newMsec = int(Msec);
    newMsec1 = nf(newMsec, 2, 0);
    Ms = newMr+":"+newMsec1;
  }
  if (Mh==Mt & Lt>0 & Lt<Mt & s2==Lt & Ml==0) {
    Mp = ti * Mn1;
    Lp = ti * Ln1;


    Mr = floor(Mp/Mt);
    newMr = int(Mp/Mt);
    Msec = ((Mp/Mt)-Mr)*60;
    newMsec = int(Msec);
    newMsec1 = nf(newMsec, 2, 0);
    Ms = newMr+":"+newMsec1;

    Lr = floor(Lp/Lt);
    newLr = int(Lp/Lt);
    Lsec = ((Lp/Lt)-Lr)*60;
    newLsec = int(Lsec);
    newLsec1 = nf(newLsec, 2, 0);
    Ls = newLr+":"+newLsec1;
  }


  //This function/if statement will determine if the parameters are met for the low level importance route for set 2
  if (Mh==Lt & Ht>0 & Ht<Lt & s2==Ht & Ml==0) {
    Lp = ti * Ln1;
    Hp = ti * Hn2;

    Lr = floor(Lp/Lt);
    newLr = int(Lp/Lt);
    Lsec = ((Lp/Lt)-Lr)*60;
    newLsec = int(Lsec);
    newLsec1 = nf(newLsec, 2, 0);
    Ls = newLr+":"+newLsec1;

    Hr= floor(Hp/Ht);
    newHr = int(Hr);
    Hsec= ((Hp/Ht)-Hr)*60;
    newHsec = int(Hsec);
    newHsec1 = nf(newHsec, 2, 0);
    Hs = newHr+":"+newHsec1;
  }
  if (Mh==Lt & Mt>0 & Mt<Lt & s2==Mt  & Ml==0) {
    Lp = ti * Ln1;
    Mp = ti * Mn1;

    Mr = floor(Mp/Mt);
    newMr = int(Mp/Mt);
    Msec = ((Mp/Mt)-Mr)*60;
    newMsec = int(Msec);
    newMsec1 = nf(newMsec, 2, 0);
    Ms = newMr+":"+newMsec1;


    Lr = floor(Lp/Lt);
    newLr = int(Lp/Lt);
    Lsec = ((Lp/Lt)-Lr)*60;
    newLsec = int(Lsec);
    newLsec1 = nf(newLsec, 2, 0);
    Ls = newLr+":"+newLsec1;
  }

  //----------------

  ////Set1
  ///sets of values that have two zero length for level of importance spots for their amount of options,

  //This function/if statement will determine if the parameters are met for the High level importance route for set 1,This function will only calculate the time for the objectives in high
  if (Mh==Ht & Ht==ot & Mh>0) {
    Hp = ti;
    Hr= floor(Hp/Ht);
    newHr = int(Hr);
    Hsec= ((Hp/Ht)-Hr)*60;
    newHsec = int(Hsec);
    newHsec1 = nf(newHsec, 2, 0);
    Hs = newHr+":"+newHsec1;
  }
  //This function/if statement will determine if the parameters are met for the Medium level importance route for set 1,This function will only calculate the time for the objectives in medium
  if (Mh==Mt & Mt==ot & Mh>0) {
    Mp = ti;
    Mr = floor(Mp/Mt);
    newMr = int(Mp/Mt);
    Msec = ((Mp/Mt)-Mr)*60;
    newMsec = int(Msec);
    newMsec1 = nf(newMsec, 2, 0);
    Ms = newMr+":"+newMsec1;
  }
  //This function/if statement will determine if the parameters are met for the Low level importance route for set 1, This function will only calculate the time for the objectives in low
  if (Mh==Lt & Lt==ot & Mh>0) {
    Lp = ti ;
    Lr = floor(Lp/Lt);
    newLr = int(Lp/Lt);
    Lsec = ((Lp/Lt)-Lr)*60;
    newLsec = int(Lsec);
    newLsec1 = nf(newLsec, 2, 0);
    Ls = newLr+":"+newLsec1;
  }

  ////=================

  ////Set0
  ///sets of values that all have zero lengths for level of importance spots for their amount of options
  if (Mh==0 & Ml==0 & Mh<0 ) {
  }

  ////===================

  //This function/if statement will determine if the parameters are met for the all levels importance route for triple sets that have 3 values that are equal to the highest weight
  //the lowest weitght.
  //This function will calculate all the values for all three levels of importance without requiring the use of compensators since all have the same value
  if (ot==Mh*3 & Mh == Lt & Mh == Ht & Mh == Mt & Mh>0) {


    Lr = floor(Lp/Lt);
    newLr = int(Lp/Lt);
    Lsec = ((Lp/Lt)-Lr)*60;
    newLsec = int(Lsec);
    newLsec1 = nf(newLsec, 2, 0);
    Ls = newLr+":"+newLsec1;

    Mr = floor(Mp/Mt);
    newMr = int(Mp/Mt);
    Msec = ((Mp/Mt)-Mr)*60;
    newMsec = int(Msec);
    newMsec1 = nf(newMsec, 2, 0);
    Ms = newMr+":"+newMsec1;

    Hr= floor(Hp/Ht);
    newHr = int(Hr);
    Hsec= ((Hp/Ht)-Hr)*60;
    newHsec = int(Hsec);
    newHsec1 = nf(newHsec, 2, 0);
    Hs = newHr+":"+newHsec1;
  }
  ///-------------------
  ///This function/if statement will determine if the parameters are met for the all levels importance route for double sets that have 2 values that are equal to the highest weight
  //the lowest weitght.

  // This function will only calculate the time for the objectives in medium and high  levels of importance and not for low because it has a value of zero
  if (ot==Mh*2 & Ht==Mh & Mt==Mh & Lt==0 & Mh>0) {
    Mp = ti * Mn2;
    Hp = ti * Hn1;

    Mr = floor(Mp/Mt);
    newMr = int(Mp/Mt);
    Msec = ((Mp/Mt)-Mr)*60;
    newMsec = int(Msec);
    newMsec1 = nf(newMsec, 2, 0);
    Ms = newMr+":"+newMsec1;


    Hr= floor(Hp/Ht);
    newHr = int(Hr);
    Hsec= ((Hp/Ht)-Hr)*60;
    newHsec = int(Hsec);
    newHsec1 = nf(newHsec, 2, 0);
    Hs = newHr+":"+newHsec1;
  }

  //This function will only calculate the time for the objectives in low and high levels of importance and not for medium because it has a value of zero
  if (ot==Mh*2 & Ht==Mh & Lt==Mh & Mt==0 & Mh>0) {
    Hp = ti * Hn2;
    Lp = ti * Ln2;

    Hr= floor(Hp/Ht);
    newHr = int(Hr);
    Hsec= ((Hp/Ht)-Hr)*60;
    newHsec = int(Hsec);
    newHsec1 = nf(newHsec, 2, 0);
    Hs = newHr+":"+newHsec1;

    Lr = floor(Lp/Lt);
    newLr = int(Lp/Lt);
    Lsec = ((Lp/Lt)-Lr)*60;
    newLsec = int(Lsec);
    newLsec1 = nf(newLsec, 2, 0);
    Ls = newLr+":"+newLsec1;
  }

  // This function will only calculate the time for the objectives in low and medium levels of importance and not for high because it has a value of zero
  if (ot==Mh*2 & Lt==Mh & Mt==Mh & Ht==0 & Mh>0) {
    Lp = ti * Ln1;
    Mp = ti * Mn1;

    Lr = floor(Lp/Lt);
    newLr = int(Lp/Lt);
    Lsec = ((Lp/Lt)-Lr)*60;
    newLsec = int(Lsec);
    newLsec1 = nf(newLsec, 2, 0);
    Ls = newLr+":"+newLsec1;

    Mr = floor(Mp/Mt);
    newMr = int(Mp/Mt);
    Msec = ((Mp/Mt)-Mr)*60;
    newMsec = int(Msec);
    newMsec1 = nf(newMsec, 2, 0);
    Ms = newMr+":"+newMsec1;
  }
}


void Value_Display() {




  ////Set3

  /// set fo double high values and one low value 
  if (Mh>0 & Mh==Mt & Mh==Lt & Mh>Ht & Ml>0 & Ml== Ht & t>0 ) {
    if (StudyDivPage == 1) {
      y=100;
      for (int i = 0; i < Ht; i = i+1) {
        ;
        text("High Values", 10, 20, width/3, 100);
        text("High Values time", 150, 20, width/3, 100);

        ;
        text(Ha[i], 10, y, width/3, 100);
        text(Hs, 150, y, width/3, 100);

        if (i<Ht) {
          y  = y + 50;
        }
      }
    }
    if (StudyDivPage == 2) {
      y=100;
      for (int i = 0; i < Mh; i = i+1) {
        ;
        text("Medium Values", 10, 20, width/3, 100);
        text("Medium Values time", 150, 20, width/3, 100);

        ;
        text(Ma[i], 10, y, width/3, 100);
        text(Ms, 150, y, width/3, 100);
        if (i<Mh) {
          y= y+ 50 ;
        }
      }
    }
    if (StudyDivPage == 3) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Low Values", 10, 20, width/3, 100);
        text("Low Values time", 150, 20, width/3, 100);

        text(La[i], 10, y, width/3, 100);
        text(Ls, 150, y, width/3, 100);
        if (i<Mh) {
          y = y +50;
        }
      }
    }
  }

  if (Mh>0 & Mh==Mt & Mh==Ht & Mh>Lt & Ml>0 & Ml== Lt & t>0) {
    if (StudyDivPage == 1) {
      y=100;
      for (int i = 0; i < Ht; i = i+1) {
        ;
        text("High Values", 10, 20, width/3, 100);
        text("High Values time", 150, 20, width/3, 100);

        ;
        text(Ha[i], 10, y, width/3, 100);
        text(Hs, 150, y, width/3, 100);

        if (i<Ht) {
          y  = y + 50;
        }
      }
    }
    if (StudyDivPage == 2) {
      y=100;
      for (int i = 0; i < Mh; i = i+1) {
        ;
        text("Medium Values", 10, 20, width/3, 100);
        text("Medium Values time", 150, 20, width/3, 100);

        ;
        text(Ma[i], 10, y, width/3, 100);
        text(Ms, 150, y, width/3, 100);
        if (i<Mh) {
          y= y+ 50 ;
        }
      }
    }
    if (StudyDivPage == 3) {
      y = 100;
      for (int i = 0; i < Lt; i = i+1) {

        text("Low Values", 10, 20, width/3, 100);
        text("Low Values time", 150, 20, width/3, 100);

        text(La[i], 10, y, width/3, 100);
        text(Ls, 150, y, width/3, 100);
        if (i<Lt) {
          y = y +50;
        }
      }
    }
  }

  if (Mh>0 & Mh==Ht & Mh==Lt & Mh>Mt & Ml>0 & Ml== Mt & t>0 ) {
    if (StudyDivPage == 1) {
      y=100;
      for (int i = 0; i < Ht; i = i+1) {

        text("High Values", 10, 20, width/3, 100);
        text("High Values time", 150, 20, width/3, 100);


        text(Ha[i], 10, y, width/3, 100);
        text(Hs, 150, y, width/3, 100);

        if (i<Ht) {
          y  = y + 50;
        }
      }
    }
    if (StudyDivPage == 2) {
      y=100;
      for (int i = 0; i < Mt; i = i+1) {

        text("Medium Values", 10, 20, width/3, 100);
        text("Medium Values time", 150, 20, width/3, 100);


        text(Ma[i], 10, y, width/3, 100);
        text(Ms, 150, y, width/3, 100);
        if (i<Mt) {
          y= y+ 50 ;
        }
      }
    }
    if (StudyDivPage == 3) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Low Values", 10, 20, width/3, 100);
        text("Low Values time", 150, 20, width/3, 100);

        text(La[i], 10, y, width/3, 100);
        text(Ls, 150, y, width/3, 100);
        if (i<Mh) {
          y = y +50;
        }
      }
    }
  }
  ///sets of values that have no zero lengths for level of importance spots for their amount of options
  //This function/if statement will determine if the parameters are met for the high level importance route for set 3


  if (Mh==Ht & Mh>0 & Ml>0 & Lt>0 & Mt>0 & Mh>Mt & Mh>Lt & Lt<Mh & Mt<Mh) {
    if (StudyDivPage == 1) {
      y=100;
      for (int i = 0; i < Mh; i = i+1) {
        ;
        text("High Values", 10, 20, width/3, 100);
        text("High Values time", 150, 20, width/3, 100);

        ;
        text(Ha[i], 10, y, width/3, 100);
        text(Hs, 150, y, width/3, 100);

        if (i<Mh) {
          y  = y + 50;
        }
      }
    }
    if (StudyDivPage == 2) {
      y=100;
      for (int i = 0; i < Mt; i = i+1) {
        ;
        text("Medium Values", 10, 20, width/3, 100);
        text("Medium Values time", 150, 20, width/3, 100);

        ;
        text(Ma[i], 10, y, width/3, 100);
        text(Ms, 150, y, width/3, 100);
        if (i<Mt) {
          y= y+ 50 ;
        }
      }
    }
    if (StudyDivPage == 3) {
      y = 100;
      for (int i = 0; i < Lt; i = i+1) {
        text("Low Values", 10, 20, width/3, 100);
        text("Low Values time", 150, 20, width/3, 100);

        text(La[i], 10, y, width/3, 100);
        text(Ls, 150, y, width/3, 100);
        if (i<Lt) {
          y = y +50;
        }
      }
    }
  }
  //This function/if statement will determine if the parameters are met for the medium level importance route for set 3
  if (Mh==Mt & Mh>0 & Ml>0 & Lt>0 & Mt>0 & Mh>Lt & Mh>Ht) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Medium Values", 10, 20, width/3, 100);
        text("Medium Values time", 150, 20, width/3, 100);

        ;
        text(Ma[i], 10, y, width/3, 100);
        text(Ms, 150, y, width/3, 100);
        if (i<Mh) {
          y = y + 50;
        }
      }
    }
    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Ht; i = i+1) {
        text("High Values", 10, 20, width/3, 100);
        text("High Values time", 150, 20, width/3, 100);
        text(Ha[i], 10, y, width/3, 100);
        text(Hs, 150, y, width/3, 100);
        if (i<Ht) {
          y = y + 50;
        }
      }
    }
    if (StudyDivPage == 3) {
      y = 100;
      for (int i = 0; i < Lt; i = i+1) {
        text("Low Values", 10, 20, width/3, 100);
        text("Low Values time", 150, 20, width/3, 100);
        text(La[i], 10, y, width/3, 100);
        text(Ls, 150, y, width/3, 100);
        if (i<Lt) {
          y = y +50;
        }
      }
    }
  }

  //This function/if statement will determine if the parameters are met for the low level importance route for set 3

  if (Mh==Lt & Mh>0 & Ml>0 & Lt>0 & Mt>0 & Mh>Mt & Mh>Ht & Mh>Mt & Mh>Ht) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Low Values", 10, 20, width/3, 100);
        text("Low Values time", 150, 20, width/3, 100);
        text(La[i], 10, y, width/3, 100);
        text(Ls, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y + 50;
        }
      }
    }
    if (StudyDivPage == 2) {
      y=100;
      for (int i = 0; i < Mt; i = i+1) {
        text("Medium Values", 10, 20, width/3, 100);
        text("Medium Values time", 150, 20, width/3, 100);
        text(Ma[i], 10, y, width/3, 100);
        text(Ms, 150, y, width/3, 100);
        if (i<Mt) {
          y = y +50;
        }
      }
    }
    if (StudyDivPage == 3) {
      y = 100;
      for (int i = 0; i < Ht; i = i+1) {

        text("High Values", 10, 20, width/3, 100);
        text("High Values time", 150, 20, width/3, 100);
        text(Ha[i], 10, y, width/3, 100);
        text(Hs, 150, y, width/3, 100);
        if (i<Ht) {
          y = y +50;
        }
      }
    }
  }


  //---------------

  ////Set2
  ///sets of values that have one zero lengths for level of importance spots for their amount of options

  //This function/if statement will determine if the parameters are met for the low level importance route for set 2
  if (Mh==Ht & Lt>0 & Lt<Ht & s2==Lt & Ml==0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("High Values", 10, 20, width/3, 100);
        text("High Values time", 150, 20, width/3, 100);
        text(Ha[i], 10, y, width/3, 100);
        text(Hs, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }
    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Lt; i = i+1) {

        text("Low Values", 10, 20, width/3, 100);
        text("Low Values times", 150, 20, width/3, 100);
        text(La[i], 10, y, width/3, 100);
        text(Ls, 150, y, width/3, 100);
        if (i<Lt) {
          y = y +50;
        }
      }
    }
  }
  if (Mh==Ht & Mt>0 & Mt<Ht & s2==Mt & Ml==0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("High Values", 10, 20, width/3, 100);
        text("High Values times", 150, 20, width/3, 100);
        text(Ha[i], 10, y, width/3, 100);
        text(Hs, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }
    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Mt; i = i+1) {
        text("Medium Values", 10, 20, width/3, 100);
        text("Medium Values time", 150, 20, width/3, 100);
        text(Ma[i], 10, y, width/3, 100);
        text(Ms, 150, y, width/3, 100);
        if (i<Mt) {
          y = y +50;
        }
      }
    }
  }

  //This function/if statement will determine if the parameters are met for the medium level importance route for set 2
  if (Mh==Mt & Ht>0 & Mt>Ht & s2==Ht & Ml==0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Medium Values", 10, 20, width/3, 100);
        text("Medium Values time", 150, 20, width/3, 100);
        text(Ma[i], 10, y, width/3, 100);
        text(Ms, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }
    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Ht; i = i+1) {
        text("High Values", 10, 20, width/3, 100);
        text("High Values time", 150, 20, width/3, 100);
        text(Ha[i], 10, y, width/3, 100);
        text(Hs, 150, y, width/3, 100);
        if (i<Ht) {
          y  = y +50;
        }
      }
    }
  }
  if (Mh==Mt & Lt>0 & Lt<Mt & s2==Lt & Ml==0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Medium Values", 10, 20, width/3, 100);
        text("Medium Values time", 150, 20, width/3, 100);
        text(Ma[i], 10, y, width/3, 100);
        text(Ms, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }
    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Lt; i = i+1) {
        text("Low Values", 10, 20, width/3, 100);
        text("Low Values time", 150, 20, width/3, 100);
        text(La[i], 10, y, width/3, 100);
        text(Ls, 150, y, width/3, 100);
        if (i<Lt) {
          y  = y +50;
        }
      }
    }
  }


  //This function/if statement will determine if the parameters are met for the low level importance route for set 2
  if (Mh==Lt & Ht>0 & Ht<Lt & s2==Ht & Ml==0 ) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Low Values", 10, 20, width/3, 100);
        text("Low Values time", 150, 20, width/3, 100);
        text(La[i], 10, y, width/3, 100);
        text(Ls, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }
    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Ht; i = i+1) {
        text("High Values", 10, 20, width/3, 100);
        text("High Values time ", 150, 20, width/3, 100);
        text(Ha[i], 10, y, width/3, 100);
        text(Hs, 150, y, width/3, 100);
        if (i<Ht) {
          y  = y +50;
        }
      }
    }
  }
  if (Mh==Lt & Mt>0 & Mt<Lt & s2==Mt  & Ml==0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Low Values", 10, 20, width/3, 100);
        text("Low Values time", 150, 20, width/3, 100);
        text(La[i], 10, y, width/3, 100);
        text(Ls, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }
    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Mt; i = i+1) {
        text("Medium Values", 10, 20, width/3, 100);
        text("Medium Values times", 150, 20, width/3, 100);
        text(Ma[i], 10, y, width/3, 100);
        text(Ms, 150, y, width/3, 100);
        if (i<Mt) {
          y  = y +50;
        }
      }
    }
  }

  //----------------

  ////Set1
  ///sets of values that have two zero length for level of importance spots for their amount of options,

  //This function/if statement will determine if the parameters are met for the High level importance route for set 1,This function will only calculate the time for the objectives in high
  if (Mh==Ht & Ht==ot & Mh>0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("High Values", 10, 20, width/3, 100);
        text("High Values time", 150, 20, width/3, 100);
        text(Ha[i], 10, y, width/3, 100);
        text(Hs, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }
  }
  //This function/if statement will determine if the parameters are met for the Medium level importance route for set 1,This function will only calculate the time for the objectives in medium
  if (Mh==Mt & Mt==ot & Mh>0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Medium Values", 10, 20, width/3, 100);
        text("Medium Values time", 150, 20, width/3, 100);
        text(Ma[i], 10, y, width/3, 100);
        text(Ms, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }
  }
  //This function/if statement will determine if the parameters are met for the Low level importance route for set 1, This function will only calculate the time for the objectives in low
  if (Mh==Lt & Lt==ot & Ml==0 & Mh>0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Low Values", 10, 20, width/3, 100);
        text("Low Values time", 150, 20, width/3, 100);
        text(La[i], 10, y, width/3, 100);
        text(Ls, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }
  }

  ////=================

  ////Set0
  ///sets of values that all have zero lengths for level of importance spots for their amount of options
  if (Mh==0 & Ml==0 & t>0 ) {
    if (StudyDivPage == 1) {
      text("Get a life cause not having homework or anything study for, makes you a certified nerd, or you have time and nothing to study for nerd ", 10, 60, width-10, 100);
    }
  }

  ////====================

  //This function/if statement will determine if the parameters are met for the all levels importance route for triple sets that have 3 values that are equal to the highest weight
  //the lowest weitght.
  //This function will calculate all the values for all three levels of importance without requiring the use of compensators since all have the same value
  if (ot==Mh*3 & Mh>0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {

        ;
        text("High Values time", 10, 20, width/3, 100);
        text("High Values", 150, 20, width/3, 100);
        ;
        text(Ha[i], 10, y, width/3, 100);
        text(Hs, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }




    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        ;
        text("Medium Values", 10, 20, width/3, 100);
        text("Medium Values time", 150, 20, width/3, 100);
        text(Ma[i], 10, y, width/3, 100);
        text(Ms, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }


    if (StudyDivPage == 3) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Low Values", 10, 20, width/3, 100);
        text("Low Values time", 150, 20, width/3, 100);
        ;
        text(La[i], 10, y, width/3, 100);
        text(Ls, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }
  }

  ///=====================
  ///This function/if statement will determine if the parameters are met for the all levels importance route for double sets that have 2 values that are equal to the highest weight
  //the lowest weitght.

  // This function will only calculate the time for the objectives in medium and high  levels of importance and not for low because it has a value of zero
  if (ot==Mh*2 & Ht==Mh & Mt==Mh & Lt==0 & Mh>0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {

        ;
        text("High Values", 10, 20, width/3, 100);
        text("High Values time", 150, 20, width/3, 100);
        ;
        text(Ha[i], 10, y, width/3, 100);
        text(Hs, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }


    if (StudyDivPage == 2) {
      y =100;
      for (int i = 0; i < Mh; i = i+1) {
        ;
        text("Medium Values", 10, 20, width/3, 100);
        text("Medium Values time", 150, 20, width/3, 100);
        ;
        text(Ma[i], 10, y, width/3, 100);
        text(Ms, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }
  }
  //This function will only calculate the time for the objectives in low and high levels of importance and not for medium because it has a value of zero
  if (ot==Mh*2 & Ht==Mh & Lt==Mh & Mt==0 & Mh>0) {
    if (StudyDivPage == 1) {

      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        ;
        text("High Values", 10, 20, width/3, 100);
        text("High Values time", 150, 20, width/3, 100);
        ;
        text(Ha[i], 10, y, width/3, 100);
        text(Hs, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }

    if (StudyDivPage == 2) {
      y =100;
      for (int i = 0; i < Mh; i = i+1) {
        ;
        text("Low Values", 10, 20, width/3, 100);
        text("Low Values time", 150, 20, width/3, 100);
        ;
        text(La[i], 10, y, width/3, 100);
        text(Ls, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }
  }

  // This function will only calculate the time for the objectives in low and medium levels of importance and not for high because it has a value of zero
  if (ot==Mh*2 & Lt==Mh & Mt==Mh & Ht==0 & Mh>0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        ;
        text("Low Values", 10, 20, width/3, 100);
        text("Low Values time", 150, 20, width/3, 100);
        ;
        text(La[i], 10, y, width/3, 100);
        text(Ls, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }


    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {


        text("Medium Values", 10, 20, width/3, 100);
        text("Medium Values time", 150, 20, width/3, 100);

        text(Ma[i], 10, y, width/3, 100);
        text(Ms, 150, y, width/3, 100);
        if (i<Mh) {
          y  = y +50;
        }
      }
    }
  }
  //// Set(-)time and value scenario
  if (StudyDivPage != -1) {
    if (t<0 ) {
      if (StudyDivPage == 1) {
        textSize(15);
        text("ERROR INPUT VALUES ARE NOT POSSIBLE, PLEASE MAKE SURE TIME IS NOT NEGATIVE", 10, 60, width-10, 100);
      }
    }
  }
}