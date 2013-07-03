public static int main(string [] argv) {
  string email = "tux@kernel.org";

  if (/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i.match(email)) {
      stdout.printf("Valid email address\n");
  }
  
  /*
  try {
    Regex r = new Regex("/[a-zA-Z0-9]+/");

    if (r.match("ABC")) {
      stdout.printf("Also matches\n");
    }
    else {
      stdout.printf("No match on string-built expression.\n");
    }
    
  } catch (RegexError e) {
    stdout.printf("Error.\n");
  }
  */
  return 0;
}