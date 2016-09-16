public class Frame {
    private Field inputField = new Field(true, 20, 30, 100, 100, this);
    private Field outputField = new Field(false, 20, 200, 100, 100, this);
    private Button button = new Button(300, 300, 50, 100, "CONVERT ME");
    
    private int myColor = 204;
    
    public Frame() {
        
        
    }
    
    void draw() {
      inputField.draw();
      outputField.draw(); 
      button.draw();
      if (button.isClick() == true) {
        outputField.clearText(); 
        outputField.setText(Double.toString( inputField.getDouble() * 2 ) );
    }
    }
    
    public int getColour() {
    return myColor;
    }
    
}