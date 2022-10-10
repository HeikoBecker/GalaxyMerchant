PolyML.make "../Parser";
PolyML.make "../Eval";

PolyML.make "TestUtils";

PolyML.make "ParserUnitTests";
PolyML.make "EvalUnitTests";
PolyML.make "EvalIntegrationTests";

fun main () =
  (ParserUnitTests.test();
   EvalUnitTests.test();
   EvalIntegrationTests.test());
