import java.text.DecimalFormat;
import java.math.RoundingMode;

public class Frame {
  
    private DecimalFormat df = new DecimalFormat("#.####");
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
        if (inputField.getText().length() > 0)
        {
        String d = df.format(inputField.getDouble() * 2.54 );
        outputField.setText(d);
        }
    }
    }
    
    public int getColour() {
    return myColor;
    }
    
}