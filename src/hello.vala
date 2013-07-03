namespace Demo {
  class HelloWorld : GLib.Object {
    public static int main(string [] argv) {
      
      stdout.printf("Number of arguments: %d\n", argv.length);
      
      MessageBuilder mb = new MessageBuilder();
      string foo = mb.getMessage();
      
      stdout.printf(foo);
      return 0;
    }
  }
  
  class MessageBuilder : GLib.Object {
    
    protected string message;
    
    public MessageBuilder () {
      this.message = "I am the message\n";
    }
    
    public string getMessage() {
      return this.message;
    }
  }
}

