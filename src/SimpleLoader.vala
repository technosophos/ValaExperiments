using SimpleLoader;

namespace SimpleLoader {
  
  class LoadMe : GLib.Object {
    public LoadMe() {
      stdout.printf("Called constructor\n");
    }
    
    public void i_am_loaded() {
      stdout.printf("I am loaded.");
    }
  }
  
  class Loader : GLib.Object {
    
    public Loader() {}
    
    public Object load_class(GLib.ObjectClass class_o) {
      
      var t = class_o.get_type();
      
      stdout.printf("This is a %s object.\n", t.name());
      
      //stdout.printf(class_o);
      
      //stdout.printf("Type: %s\n", typeof(class_o).name());
      
      return Object.new(typeof(SimpleLoader.LoadMe));
      //return Object.new(SimpleLoader.LoadMe);
      
      /*
      Type? class_type = Type.from_name(new_class_name);
      
      if (class_type == null) {
        stdout.printf("Empty type.\n");
      }
      else {
        //Object.new(class_type);
      }
      
      stdout.printf("\nType is %s.\n", class_type.name());
      
      //return Object.new(class_type);
      */
      return this;
    }
    
  }
  
  private string gtype_name(string name) {
		return name.replace(".", "");
	}
  
}


public static int main (string [] argv) {
  stdout.printf("Ready to load\n");
  var loader = new SimpleLoader.Loader();
  
  //Type t = typeof(SimpleLoader.LoadMe);
  Type t = (new SimpleLoader.LoadMe()).get_type();
  
  stdout.printf("Name is %s.\n", t.name());
  
  //t.i_am_loaded();
  assert(GLib.Module.supported());
  
  //SimpleLoader.LoadMe o = (SimpleLoader.LoadMe)loader.load_class(SimpleLoader.LoadMe);
  
  //stdout.printf("I am a %s", o.get_type().name());
  
  //o.i_am_loaded();
  
  //return_if_fail(o is SimpleLoader.LoadMe);
  
  stdout.printf("done.");
  
  return 0;
}