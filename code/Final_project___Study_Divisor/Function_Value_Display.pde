void Value_Display() {




  ////Set3
  ///sets of values that have no zero lengths for level of importance spots for their amount of options
  //This function/if statement will determine if the parameters are met for the high level importance route for set 3


  if (Mh==Ht & Mh>0 & Ml>0 & Lt>0 & Mt>0) {
    for (int i = 0; i < Mh; i = i+1) { 
      text(Ha[i], 45, y);
      if (i<Mh) {
        y  = y + 25;
      }
    }
    for (int i = 0; i < Mt; i = i+1) { 
      text(Ma[i], 45, y);
      if (i<Mt) {
        y = y +25;
      }
    }
    for (int i = 0; i < Ht; i = i+1) { 
      text(Ha[i], 45, y);
      if (i<Ht) {
        y = y +25;
      }
    }
  }
  //This function/if statement will determine if the parameters are met for the medium level importance route for set 3
  if (Mh==Mt & Mh>0 &Ml>0 & Lt>0 & Mt>0) { 
    for (int i = 0; i < Mh; i = i+1) { 
      text(La[i], 45, y);
      if (i<Mh) {
        y  = y + 25;
      }
    }
    for (int i = 0; i < Mt; i = i+1) { 
      text(Ma[i], 45, y);
      if (i<Mt) {
        y = y +25;
      }
    }
    for (int i = 0; i < Ht; i = i+1) { 
      text(Ha[i], 45, y);
      if (i<Ht) {
        y = y +25;
      }
    }
  }

  //This function/if statement will determine if the parameters are met for the low level importance route for set 3

  if (Mh==Lt & Mh>0 & Ml>0 & Lt>0 & Mt>0) {
    for (int i = 0; i < Mh; i = i+1) { 
      text(La[i], 45, y);
      if (i<Mh) {
        y  = y + 25;
      }
    }
    for (int i = 0; i < Mt; i = i+1) { 
      text(Ma[i], 45, y);
      if (i<Mt) {
        y = y +25;
      }
    }
    for (int i = 0; i < Ht; i = i+1) { 
      text(Ha[i], 45, y);
      if (i<Ht) {
        y = y +25;
      }
    }
  }


  //---------------

  ////Set2
  ///sets of values that have one zero lengths for level of importance spots for their amount of options

  //This function/if statement will determine if the parameters are met for the low level importance route for set 2
  if (Mh==Ht & Lt>0 & Lt<Ht & s2==Lt & Ml==0) {
    for (int i = 0; i < Mh; i = i+1) { 
      text(Ha[i], 45, y);
      if (i<Mh) {
        y  = y +25;
      }
    }
    for (int i = 0; i < Mt; i = i+1) { 
      text(La[i], 45, y);
      if (i<Mt) {
        y = y +25;
      }
    }
  }
  if (Mh==Ht & Mt>0 & Mt<Ht & s2==Mt & Ml==0) {
    for (int i = 0; i < Mh; i = i+1) { 
      text(Ha[i], 45, y);
      if (i<Mh) {
        y  = y +25;
      }
    }
    for (int i = 0; i < Mt; i = i+1) { 
      text(Ma[i], 75, y);
      if (i<Mt) {
        y = y +25;
      }
    }
  }

  //This function/if statement will determine if the parameters are met for the medium level importance route for set 2
  if (Mh==Mt & Ht>0 & Mt<Ht & s2==Ht & Ml==0) {
    for (int i = 0; i < Mh; i = i+1) { 
      text(Ma[i], 45, y);
      if (i<Mh) {
        y  = y +25;}}
      for (int i = 0; i < Ht; i = i+1) { 
        text(Ha[i], 45, y);
        if (i<Ht) {
          y  = y +25;
        }
      }
    }
    if (Mh==Mt & Lt>0 & Lt<Mt & s2==Lt & Ml==0) {
      for (int i = 0; i < Mh; i = i+1) { 
        text(Ma[i], 45, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
      for (int i = 0; i < Mt; i = i+1) { 
        text(La[i], 75, y);
        if (i<Lt) {
          y  = y +25;
        }
      }
    }


    //This function/if statement will determine if the parameters are met for the low level importance route for set 2
    if (Mh==Lt & Ht>0 & Ht<Lt & s2==Ht & Ml==0) {
      for (int i = 0; i < Mh; i = i+1) { 
        text(La[i], 45, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
      for (int i = 0; i < Mt; i = i+1) { 
        text(Ha[i], 75, y);
        if (i<Ht) {
          y  = y +25;
        }
      }
    }
    if (Mh==Lt & Mt>0 & Mt<Lt & s2==Mt  & Ml==0) {
      for (int i = 0; i < Mh; i = i+1) { 
        text(La[i], 45, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
      for (int i = 0; i < Lt; i = i+1) { 
        text(Ma[i], 75, y);
        if (i<Mt) {
          y  = y +25;
        }
      }
    }

    //----------------

    ////Set1
    ///sets of values that have two zero length for level of importance spots for their amount of options,

    //This function/if statement will determine if the parameters are met for the High level importance route for set 1,This function will only calculate the time for the objectives in high
    if (Mh==Ht & Ht==ot) {

      for (int i = 0; i < Mh; i = i+1) { 
        text(Ha[i], 45, y);
        if (i<Mh) {
          y  = y +25;
        }
      }
      //This function/if statement will determine if the parameters are met for the Medium level importance route for set 1,This function will only calculate the time for the objectives in medium
      if (Mh==Mt & Mt==ot) {
        Mp = ti;
        for (int i = 0; i < Mh; i = i+1) { 
          text(Ma[i], 45, y);
          if (i<Mh) {
            y  = y +25;
          }
        }
        //This function/if statement will determine if the parameters are met for the Low level importance route for set 1, This function will only calculate the time for the objectives in low
        if (Mh==Lt & Lt==ot) {
          for (int i = 0; i < Mh; i = i+1) { 
            text(La[i], 45, y);
            if (i<Mh) {
              y  = y +25;
            }
          }
        }

        ////=================

        ////Set0
        ///sets of values that all have zero lengths for level of importance spots for their amount of options
        if (Mh==0 & Ml==0 ) {
          text("You have nothing to study for so go and play the some games nerd ", 15, 15);
        }

        ////===================

        //This function/if statement will determine if the parameters are met for the all levels importance route for triple sets that have 3 values that are equal to the highest weight
        //the lowest weitght.
        //This function will calculate all the values for all three levels of importance without requiring the use of compensators since all have the same value
        if (ot==Mh*3) {
          for (int i = 0; i < Mh; i = i+1) { 
            text(Ha[i], 45, y);
            text(Ma[i], 75, y);
            text(La[i], 105, y);
            if (i<Mh) {
              y  = y +25;
            }
          }
          ///-------------------
          ///This function/if statement will determine if the parameters are met for the all levels importance route for double sets that have 2 values that are equal to the highest weight
          //the lowest weitght.

          // This function will only calculate the time for the objectives in medium and high  levels of importance and not for low because it has a value of zero 
          if (ot==Mh*2 & Ht==Mh & Mt==Mh & Lt==0) {
            for (int i = 0; i < Mh; i = i+1) { 
              text(Ha[i], 45, y);
              text(Ma[i], 75, y);
              if (i<Mh) {
                y  = y +25;
              }
            }

            //This function will only calculate the time for the objectives in low and high levels of importance and not for medium because it has a value of zero
            if (ot==Mh*2 & Ht==Mh & Lt==Mh & Mt==0) {
              for (int i = 0; i < Mh; i = i+1) { 
                text(Ha[i], 45, y);
                text(La[i], 75, y);
                if (i<Mh) {
                  y  = y +25;
                }
              }
            }

            // This function will only calculate the time for the objectives in low and medium levels of importance and not for high because it has a value of zero 
            if (ot==Mh*2 & Lt==Mh & Mt==Mh & Ht==0) {
              for (int i = 0; i < Mh; i = i+1) { 
                text(La[i], 45, y);
                text(Ma[i], 75, y);
                if (i<Mh) {
                  y  = y +25;
                }
              }
            }
          