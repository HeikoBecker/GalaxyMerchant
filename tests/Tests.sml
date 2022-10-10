PolyML.make "../Parser";
PolyML.make "../Eval";

PolyML.make "TestUtils";

PolyML.make "ParserUnitTests";
PolyML.make "EvalUnitTests";


fun main () =
  (ParserUnitTests.test(); EvalUnitTests.test());
