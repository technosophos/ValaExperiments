
/**
 * 
 */
public class Closure.Test : GLib.Object {
    
  delegate void MessagePrinter(string msg);
  
    
  public static void message(string msg) {
    string foo = "Hello";
    int blarg = 2;

    MessagePrinter func = (bar) => {
      // Accessing blarg causes a warning.
      stdout.printf("%d %s", blarg, bar);
    };
    
    func(msg);
  }

  
}

public static void main (string [] argv) {
  Closure.Test.message("World");
}