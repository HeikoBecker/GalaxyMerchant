PolyML.make "Parser";
PolyML.make "Eval";
PolyML.make "Reader";

  local
    open Reader Eval;
    fun greet() =
       print ("Welcome to the Galaxy Merchant. Please enter your query\n");

    fun prompt() = print "> "

    fun evalStep() =
      let
        val line = Reader.read()
      in
        run line
      end;

    fun loop() =
      let
        val _ = prompt();
        val res = evalStep();
      in
        case res of
        Term => print "Thank you.\n"
        | Cont s => (print (s^"\n"); loop())
        | Fail s => (print (s^"\n"); loop())
      end
  in
    fun main () =
      (greet(); loop());
  end
