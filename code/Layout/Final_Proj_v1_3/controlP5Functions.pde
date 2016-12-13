public void controlEvent(ControlEvent theEvent) {
  println(theEvent.getController().getName());
  n = 0;
}
public void STUDY_DIVISOR(int theValue) {
  println("a button event from colorA: "+theValue);
}
