PolyML.make "Parser";
PolyML.make "Eval";
PolyML.make "Reader";

  local
    open Reader Eval;
    fun greet() =
       print ("Welcome to the Galaxy Merchant. Please enter your query\n");

    fun prompt() = print ">"

    fun evalStep() =
      let
        val line = Reader.read()
        val result = run line
      in
        print result
      end;
    fun loop() =
      (prompt(); evalStep(); print "\n"; loop())
  in
    fun main () =
      (greet(); loop());
  end
