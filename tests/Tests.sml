PolyML.make "../Parser";

PolyML.make "TestUtils";

PolyML.make "ParserUnitTests";

fun main () =
  ParserUnitTests.test();
