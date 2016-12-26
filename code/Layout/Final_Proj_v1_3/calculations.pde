void compensator () {




  ////Set3
  ///sets of values that have no zero lengths for level of importance spots for their amount of options
  //This function/if statement will determine if the parameters are met for the high level importance route for set 3

  if (Mh==Ht & Mh>0 & Ml>0 & Lt>0 & Mt>0 ) {
    for (int i = 0; i<1; i = i+1) {
      ti = ti - Hp;
      Lp = ti * Ln2;
      Mp = ti * Mn1;
      Lr = floor(Lp/Lt);
       newLr = int(Lp/Lt);
       Lsec = ((Lp/Lt)-Lr)*60;
       newLsec = int(Lsec);
       Ls = newLr+":"+newLsec;
       Mr = floor(Mp/Mt);
       newMr = int(Mp/Mt);
       Msec = ((Mp/Mt)-Mr)*60;
       newMsec = int(Msec);
       Ms = newMr+":"+newMsec;
    }
  }

  //This function/if statement will determine if the parameters are met for the medium level importance route for set 3
  if (Mh==Mt & Mh>0 &Ml>0 & Lt>0 & Ht>0) {
    for (int i = 0; i<1; i = i+1) {
      ti = ti  + -Mp;
    }
    Hp = ti * Hn2;
    Lp = ti * Ln2;
    Lr = floor(Lp/Lt);
    newLr = int(Lp/Lt);
     Lsec = ((Lp/Lt)-Lr)*60;
    newLsec = int(Lsec);
     Ls = newLr+":"+newLsec;
     Hr= floor(Hp/Ht);
     newHr = int(Hr);
     Hsec= ((Hp/Ht)-Hr)*60;
    newHsec = int(Hsec);
     Hs = newHr+":"+newHsec;
  }

  //This function/if statement will determine if the parameters are met for the low level importance route for set 3
  if (Mh==Lt & Mh>0 & Ml>0 & Ht>0 & Mt>0) {
    for (int i = 0; i<1; i = i+1) {
      ti = ti  + -Lp;
    }
    Hp = ti * Hn1;
    Mp = ti * Mn2;
     Hr= floor(Hp/Ht);
     newHr = int(Hr);
     Hsec= ((Hp/Ht)-Hr)*60;
     newHsec = int(Hsec);
   Hs = newHr+":"+newHsec;
     Mp = t * 0.3;
     Mr = floor(Mp/Mt);
     newMr = int(Mp/Mt);
     Msec = ((Mp/Mt)-Mr)*60;
     newMsec = int(Msec);
     Ms = newMr+":"+newMsec;
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
     Ls = newLr+":"+newLsec;
     Hr= floor(Hp/Ht);
     newHr = int(Hr);
     Hsec= ((Hp/Ht)-Hr)*60;
     newHsec = int(Hsec);
     Hs = newHr+":"+newHsec;
  }
  if (Mh==Ht & Mt>0 & Mt<Ht & s2==Mt & Ml==0) {
    Hp = ti * Hn1;
    Mp = ti * Mn2;
    Mr = floor(Mp/Mt);
    newMr = int(Mp/Mt);
     Msec = ((Mp/Mt)-Mr)*60;
    newMsec = int(Msec);
    Ms = newMr+":"+newMsec;
     Hr= floor(Hp/Ht);
    int newHr = int(Hr);
     Hsec= ((Hp/Ht)-Hr)*60;
    int newHsec = int(Hsec);
     Hs = newHr+":"+newHsec;
  }

  //This function/if statement will determine if the parameters are met for the medium level importance route for set 2
  if (Mh==Mt & Ht>0 & Mt>Ht & s2==Ht & Ml==0) {
    Hp = ti * Hn1;
    Mp = ti * Mn2;
     Hr= floor(Hp/Ht);
    int newHr = int(Hr);
     Hsec= ((Hp/Ht)-Hr)*60;
    int newHsec = int(Hsec);
     Hs = newHr+":"+newHsec;
     Mr = floor(Mp/Mt);
    int newMr = floor(Mp/Mt);
     Msec = ((Mp/Mt)-Mr)*60;
    int newMsec = int(Msec);
     Ms = newMr+":"+newMsec;
  }
  if (Mh==Mt & Lt>0 & Lt<Mt & s2==Lt & Ml==0) {
    Mp = ti * Mn1;
    Lp = ti * Ln1;
     Mr = floor(Mp/Mt);
    int newMr = int(Mp/Mt);
     Msec = ((Mp/Mt)-Mr)*60;
    int newMsec = int(Msec);
     Ms = newMr+":"+newMsec;
     Lr = floor(Lp/Lt);
    int newLr = int(Lp/Lt);
     Lsec = ((Lp/Lt)-Lr)*60;
    int newLsec = int(Lsec);
     Ls = newLr+":"+newLsec;
  }


  //This function/if statement will determine if the parameters are met for the low level importance route for set 2
  if (Mh==Lt & Ht>0 & Ht<Lt & s2==Ht & Ml==0) {
    Lp = ti * Ln1;
    Hp = ti * Hn2;
     Hr= floor(Hp/Ht);
    int newHr = int(Hr);
     Hsec= ((Hp/Ht)-Hr)*60;
    int newHsec = int(Hsec);
     Hs = newHr+":"+newHsec;
     Lr = floor(Lp/Lt);
    int newLr = int(Lp/Lt);
     Lsec = ((Lp/Lt)-Lr)*60;
    int newLsec = int(Lsec);
     Ls = newLr+":"+newLsec;
  }
  if (Mh==Lt & Mt>0 & Mt<Lt & s2==Mt  & Ml==0) {
    Lp = ti * Ln1;
    Mp = ti * Mn1;
     Mr = floor(Mp/Mt);
    int newMr = int(Mp/Mt);
     Msec = ((Mp/Mt)-Mr)*60;
    int newMsec = int(Msec);
     Ms = newMr+":"+newMsec;
     Lr = floor(Lp/Lt);
    int newLr = int(Lp/Lt);
     Lsec = ((Lp/Lt)-Lr)*60;
    int newLsec = int(Lsec);
     Ls = newLr+":"+newLsec;
  }

  //----------------

  ////Set1
  ///sets of values that have two zero length for level of importance spots for their amount of options,

  //This function/if statement will determine if the parameters are met for the High level importance route for set 1,This function will only calculate the time for the objectives in high
  if (Mh==Ht & Ht==ot) {
    Hp = ti;
    Hr= floor(Hp/Ht);
     newHr = int(Hr);
    Hsec= ((Hp/Ht)-Hr)*60;
     newHsec = int(Hsec);
     Hs = newHr+":"+newHsec;
  }
  //This function/if statement will determine if the parameters are met for the Medium level importance route for set 1,This function will only calculate the time for the objectives in medium
  if (Mh==Mt & Mt==ot) {
    Mp = ti;
     test1 = Mp/Mt;
     Mr = floor(test1);
     newMr = int(Mp/Mt);
     Msec = ((Mp/Mt)-Mr)*60;
     newMsec = int(Msec);
     Ms = newMr+":"+newMsec;
  }
  //This function/if statement will determine if the parameters are met for the Low level importance route for set 1, This function will only calculate the time for the objectives in low
  if (Mh==Lt & Lt==ot) {
    Lp = ti ;
     Lr = floor(Lp/Lt);
    int newLr = int(Lp/Lt);
     Lsec = ((Lp/Lt)-Lr)*60;
    int newLsec = int(Lsec);
     Ls = newLr+":"+newLsec;
  }

  ////=================

  ////Set0
  ///sets of values that all have zero lengths for level of importance spots for their amount of options
  if (Mh==0 & Ml==0 ) {
    text("Who do you think you're lying to hit the books!!", 45, 45);
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

  // This function will only calculate the time for the objectives in medium and high  levels of importance and not for low because it has a value of zero
  if (ot==Mh*2 & Ht==Mh & Mt==Mh & Lt==0) {
    Mp = ti * Mn2;
    Hp = ti * Hn1;
     Mr = floor(Mp/Mt);
     newMr = int(Mp/Mt);
     Msec = ((Mp/Mt)-Mr)*60;
     newMsec = int(Msec);
     Ms = newMr+":"+newMsec;
     Hr= floor(Hp/Ht);
     newHr = int(Hr);
     Hsec= ((Hp/Ht)-Hr)*60;
     newHsec = int(Hsec);
     Hs = newHr+":"+newHsec;
  }

  //This function will only calculate the time for the objectives in low and high levels of importance and not for medium because it has a value of zero
  if (ot==Mh*2 & Ht==Mh & Lt==Mh & Mt==0) {
    Hp = ti * Hn2;
    Lp = ti * Mn2;
     Hr= floor(Hp/Ht);
     newHr = int(Hr);
     Hsec= ((Hp/Ht)-Hr)*60;
     newHsec = int(Hsec);
     Hs = newHr+":"+newHsec;
     Lr = floor(Lp/Lt);
     newLr = int(Lp/Lt);
     Lsec = ((Lp/Lt)-Lr)*60;
     newLsec = int(Lsec);
     Ls = newLr+":"+newLsec;
  }

  // This function will only calculate the time for the objectives in low and medium levels of importance and not for high because it has a value of zero
  if (ot==Mh*2 & Lt==Mh & Mt==Mh & Ht==0) {
    Lp = ti * Ln1;
    Mp = ti * Mn1;
     Lr = floor(Lp/Lt);
     newLr = int(Lp/Lt);
     Lsec = ((Lp/Lt)-Lr)*60;
     newLsec = int(Lsec);
     Ls = newLr+":"+newLsec;
     Mr = floor(Mp/Mt);
     newMr = int(Mp/Mt);
     Msec = ((Mp/Mt)-Mr)*60;
     newMsec = int(Msec);
     Ms = newMr+":"+newMsec;
  }
}

void Value_Display() {




  ////Set3
  ///sets of values that have no zero lengths for level of importance spots for their amount of options
  //This function/if statement will determine if the parameters are met for the high level importance route for set 3


  if (Mh==Ht & Mh>0 & Ml>0 & Lt>0 & Mt>0) {
    if (StudyDivPage == 1) {
      y=100;
      for (int i = 0; i < Mh; i = i+1) {
        textSize(15);
        text("High Values", 10, 10);
        text("High Values time", 100, 10);

        textSize(10);
        text(Ha[i], 10, y);
        text(Hs, 100, y);

        if (i<Mh) {
          y  = y + 25;
        }
      }
    }
    if (StudyDivPage == 2) {
      y=100;
      for (int i = 0; i < Mt; i = i+1) {
        textSize(15);
        text("Medium Values", 10, 10);
        text("Medium Values time", 100, 10);

        textSize(10);
        text(Ma[i], 10, y);
        text(Ms, 100, y);
        if (i<Mt) {
          y= y+ 25 ;
        }
      }
    }
    if (StudyDivPage == 3) {
      y = 100;
      for (int i = 0; i < Lt; i = i+1) {
        text("Low Values", 10, 10);
        text("Low Values time", 100, 10);

        text(La[i], 10, y);
        text(Ls, 100, y);
        if (i<Lt) {
          y = y +25;
        }
      }
    }
  }
  //This function/if statement will determine if the parameters are met for the medium level importance route for set 3
  if (Mh==Mt & Mh>0 &Ml>0 & Lt>0 & Mt>0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Medium Values", 10, 10);
        text("Medium Values time", 100, 10);

        textSize(10);
        text(Ma[i], 10, y);
        text(Ms, 100, y);
        if (i<Mh) {
          y  = y + 25;
        }
      }
    }
    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Ht; i = i+1) {
        text("High Values", 10, 10);
        text("High Values time", 100, 10);
        text(Ha[i], 10, y);
        text(Hs, 100, y);
        if (i<Ht) {
          y = y +25;
        }
      }
    }
    if (StudyDivPage == 3) {
      y = 100;
      for (int i = 0; i < Lt; i = i+1) {
        y = 100;
        text("Low Values", 10, 10);
        text("Low Values time", 100, 10);
        text(La[i], 10, y);
        text(Hs, 100, y);
        if (i<Lt) {
          y = y +25;
        }
      }
    }
  }

  //This function/if statement will determine if the parameters are met for the low level importance route for set 3

  if (Mh==Lt & Mh>0 & Ml>0 & Lt>0 & Mt>0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Low Values", 10, 10);
        text("Low Values time", 100, 10);
        text(La[i], 10, y);
        text(Ls, 100, y);
        if (i<Mh) {
          y  = y + 25;
        }
      }
    }
    if (StudyDivPage == 2) {
      y=100;
      for (int i = 0; i < Mt; i = i+1) {
        text("Medium Values", 10, 10);
        text("Medium Values time", 100, 10);
        text(Ma[i], 10, y);
        text(Ms, 100, y);
        if (i<Mt) {
          y = y +25;
        }
      }
    }
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Ht; i = i+1) {

        text("High Values", 10, 10);
        text("High Values time", 100, 10);
        text(Ha[i], 10, y);
        text(Hs, 100, y);
        if (i<Ht) {
          y = y +25;
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
        text("High Values", 10, 10);
        text("High Values time", 100, 10);
        text(Ha[i], 10, y);
        text(Hs, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }
    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Lt; i = i+1) {
        y = 100;
        text("Low Values", 10, 10);
        text("Low Values times", 100, 10);
        text(La[i], 10, y);
        text(Ls, 100, y);
        if (i<Mt) {
          y = y +25;
        }
      }
    }
  }
  if (Mh==Ht & Mt>0 & Mt<Ht & s2==Mt & Ml==0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("High Values", 10, 10);
        text("High Values times", 100, 10);
        text(Ha[i], 10, y);
        text(Hs, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }
    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Mt; i = i+1) {
        text("Medium Values", 10, 10);
        text("Medium Values time", 100, 10);
        text(Ma[i], 10, y);
        text(Ms, 100, y);
        if (i<Mt) {
          y = y +25;
        }
      }
    }
  }

  //This function/if statement will determine if the parameters are met for the medium level importance route for set 2
  if (Mh==Mt & Ht>0 & Mt>Ht & s2==Ht & Ml==0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Medium Values", 10, 10);
        text("Medium Values time", 100, 10);
        text(Ma[i], 10, y);
        text(Ms, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }
    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Ht; i = i+1) {
        text("High Values", 10, 10);
        text("High Values time", 100, 10);
        text(Ha[i], 10, y);
        text(Hs, 100, y);
        if (i<Ht) {
          y  = y +25;
        }
      }
    }
  }
  if (Mh==Mt & Lt>0 & Lt<Mt & s2==Lt & Ml==0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Medium Values", 10, 10);
        text("Medium Values time", 100, 10);
        text(Ma[i], 10, y);
        text(Ms, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }
    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Lt; i = i+1) {
        text("Low Values", 10, 10);
        text("Low Values time", 100, 10);
        text(La[i], 10, y);
        text(Ls, 100, y);
        if (i<Lt) {
          y  = y +25;
        }
      }
    }
  }


  //This function/if statement will determine if the parameters are met for the low level importance route for set 2
  if (Mh==Lt & Ht>0 & Ht<Lt & s2==Ht & Ml==0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Low Values", 10, 10);
        text("Low Values time", 100, 10);
        text(La[i], 10, y);
        text(Ls, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }
    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Ht; i = i+1) {
        text("High Values", 10, 10);
        text("High Values time ", 100, 10);
        text(Ha[i], 10, y);
        text(Hs, 100, y);
        if (i<Ht) {
          y  = y +25;
        }
      }
    }
  }
  if (Mh==Lt & Mt>0 & Mt<Lt & s2==Mt  & Ml==0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Low Values", 10, 10);
        text("Low Values time", 100, 10);
        text(La[i], 10, y);
        text(Ls, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }
    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Mt; i = i+1) {
        text("Medium Values", 10, 10);
        text("Medium Values times", 100, 10);
        text(Ma[i], 10, y);
        text(Ms, 100, y);
        if (i<Mt) {
          y  = y +25;
        }
      }
    }
  }

  //----------------

  ////Set1
  ///sets of values that have two zero length for level of importance spots for their amount of options,

  //This function/if statement will determine if the parameters are met for the High level importance route for set 1,This function will only calculate the time for the objectives in high
  if (Mh==Ht & Ht==ot) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("High Values", 10, 10);
        text("High Values time", 100, 10);
        text(Ha[i], 10, y);
        text(Hs, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }
  }
  //This function/if statement will determine if the parameters are met for the Medium level importance route for set 1,This function will only calculate the time for the objectives in medium
  if (Mh==Mt & Mt==ot) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Medium Values", 10, 10);
        text("Medium Values time", 100, 10);
        text(Ma[i], 10, y);
        text(Ms, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }
  }
  //This function/if statement will determine if the parameters are met for the Low level importance route for set 1, This function will only calculate the time for the objectives in low
  if (Mh==Lt & Lt==ot & Ml==0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Low Values", 10, 10);
        text("Low Values time", 100, 10);
        text(La[i], 10, y);
        text(Ls, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }
  }

  ////=================

  ////Set0
  ///sets of values that all have zero lengths for level of importance spots for their amount of options
  if (Mh==0 & Ml==0 ) {
    if (StudyDivPage == 1) {
      text("Get a life cause not having homework or anything study for, makes you a certified nerd ", 15, 15);
    }
  }

  ////====================

  //This function/if statement will determine if the parameters are met for the all levels importance route for triple sets that have 3 values that are equal to the highest weight
  //the lowest weitght.
  //This function will calculate all the values for all three levels of importance without requiring the use of compensators since all have the same value
  if (ot==Mh*3) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {

        textSize(15);
        text("High Values time", 200, 10);
        text("High Values", 50, 10);
        textSize(10);
        text(Ha[i], 50, y);
        text(Hs, 200, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }




    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        textSize(15);
        text("Medium Values", 200, 10);
        text("Medium Values time", 50, 10);
        text(Ma[i], 50, y);
        text(Ms, 200, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }


    if (StudyDivPage == 3) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        text("Low Values", 200, 10);
        text("Low Values time", 100, 10);
        textSize(10);
        text(La[i], 10, y);
        text(Ls, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }
  }

  ///=====================
  ///This function/if statement will determine if the parameters are met for the all levels importance route for double sets that have 2 values that are equal to the highest weight
  //the lowest weitght.

  // This function will only calculate the time for the objectives in medium and high  levels of importance and not for low because it has a value of zero
  if (ot==Mh*2 & Ht==Mh & Mt==Mh & Lt==0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {

        textSize(15);
        text("High Values", 10, 10);
        text("High Values time", 10, 10);
        textSize(10);
        text(Ha[i], 10, y);
        text(Hs, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }


    if (StudyDivPage == 2) {
      y =100;
      for (int i = 0; i < Mh; i = i+1) {
        textSize(15);
        text("Medium Values", 100, 10);
        text("Medium Values time", 100, 10);
        textSize(10);
        text(Ma[i], 10, y);
        text(Ms, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }
  }
  //This function will only calculate the time for the objectives in low and high levels of importance and not for medium because it has a value of zero
  if (ot==Mh*2 & Ht==Mh & Lt==Mh & Mt==0) {
    if (StudyDivPage == 1) {

      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        textSize(15);
        text("High Values", 10, 10);
        text("High Values time", 100, 10);
        textSize(10);
        text(Ha[i], 10, y);
        text(Hs, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }

    if (StudyDivPage == 2) {
      y =100;
      for (int i = 0; i < Mh; i = i+1) {
        textSize(15);
        text("Low Values", 10, 10);
        text("Low Values time", 100, 10);
        textSize(10);
        text(La[i], 10, y);
        text(Ls, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }
  }

  // This function will only calculate the time for the objectives in low and medium levels of importance and not for high because it has a value of zero
  if (ot==Mh*2 & Lt==Mh & Mt==Mh & Ht==0) {
    if (StudyDivPage == 1) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {
        textSize(15);
        text("Low Values", 10, 10);
        text("Low Values time", 100, 10);
        textSize(10);
        text(La[i], 10, y);
        text(Ls, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }


    if (StudyDivPage == 2) {
      y = 100;
      for (int i = 0; i < Mh; i = i+1) {

        textSize(15);
        text("Medium Values", 10, 10);
        text("Medium Values time", 10, 10);
        textSize(10);
        text(Ma[i], 10, y);
        text(Ms, 100, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
    }
  }
}