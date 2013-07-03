
namespace StaticTest {
  public class Mine {
    private static Yours yrs;
    
    public static Yours getInstance() {
      if (yrs == null) {
        yrs = new Yours();
      }
      
      return yrs;
    }
    
    
  }
  
  public class Yours {
    public Yours() {
      stdout.printf("Instantiated");
    }
    
    public void a_method() {
      stdout.printf("called a method");
    }
  }
}

public static void main (string[] argv) {
  
  var inst = StaticTest.Mine.getInstance();
  inst.a_method();
  
}