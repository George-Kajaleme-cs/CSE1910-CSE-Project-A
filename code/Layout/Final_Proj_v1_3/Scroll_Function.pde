class scroll {
int YOffset;
int YScrollPage;

  scroll() {}
  
  void mousePressed() {
    YOffset = mouseY - YScrollPage;
  
  }
  void mouseDragged() {
    YScrollPage = mouseY- YOffset; 
      
  }
  
}