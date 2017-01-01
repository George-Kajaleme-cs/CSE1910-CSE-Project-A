int YOffset;
int YScrollPage;
void setup() {
  size(500, 500);
}

void draw() {
rect(200,YScrollPage,50,50);
} 

void mousePressed() {
  YOffset = mouseY - YScrollPage;

}
void mouseDragged() {
  YScrollPage = mouseY- YOffset; 
    
}