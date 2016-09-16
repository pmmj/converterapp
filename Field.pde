public class Field {
  private String t = "";
  private int x, y, w, h, textSize;
  private boolean takeInput, charPressed;
  private Frame myFrame;
  
  public Field(boolean takeInput, int x, int y, int w, int h, Frame myFrame) {
        this.x = x;
        this.y = y;
        this.w = w;
        this.h = h;
        this.takeInput = takeInput;
        this.myFrame = myFrame;
        textSize = 16;
        
        

       
       
  }
  
  void draw() {
    
    fill(255);
    rect(x, y, w, h);
    textSize(textSize);
    fill(0);
    text(t, x, y);  
    if (keyPressed == true && takeInput == true && charPressed == false) {
      update(); charPressed = true;
    }
    else if (keyPressed == false) {
      charPressed = false;
    }
  }
  
  void update() {
    if (t.length() > 0 && key == BACKSPACE) {
      String r = t.substring(0, t.length()-1);
      clearText();
      t = r;
      redraw();

      
    }
    else if (key == '1' || key == '2' || key == '3' || key == '4' || key == '5' ||
    key == '6' || key == '7' || key == '8' || key == '9' || key == '0')
    {
    t += key;
    }
  }
  
  public void clearText() {
    fill(myFrame.getColour());
    rect(x, y - textSize, (textSize + 10) * t.length(), textSize + 2);
    t = "";
    redraw();
    
  }
  
  
  
  
  
  
  public void setText(String t){
    this.t = t;
  }
  
  public String getText() {
    return this.t;
  }
  
  public int getInt() {
    return Integer.parseInt(this.t);
  }
  
  public double getDouble() {
    return Double.parseDouble(this.t);
  }
  
  

  
  }
  
  
  