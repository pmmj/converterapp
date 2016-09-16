public class Button {
  
  private boolean clicked;
  private int x, y, w, h;
  private String t = "";
  
  public Button(int x, int y, int w, int h, String t) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.t = t;
    
   
  }
  
  void draw() {
    fill(255);
    rect(x, y, w, h);
    textSize(16);
    fill(0);
    text(t, x, y);
    isClick();
  }
  
  public boolean isClick() {
    boolean c;
    if (mousePressed == true && (mouseX >= x && mouseX <= x + w) && (mouseY >= y && mouseY <= y + h)) {
      c = true;
    }
    else {
      c = false;
    }
    return c;
  }
    
  
}