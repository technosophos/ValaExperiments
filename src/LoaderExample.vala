
class MyApp.Configuration : Glib.Gobject {
  
  public void register_requests() {
    
    
    Register.group("bootstrap", "Commands executed to bootstrap application")
      .does_command("prepare")
      .which_invokes("SomeClass")
      .with_param("param_name", "A description")
      ;