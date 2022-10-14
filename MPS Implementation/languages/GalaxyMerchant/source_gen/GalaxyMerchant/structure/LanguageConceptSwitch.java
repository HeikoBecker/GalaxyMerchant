package GalaxyMerchant.structure;

/*Generated by MPS */

import jetbrains.mps.lang.smodel.LanguageConceptIndex;
import jetbrains.mps.lang.smodel.LanguageConceptIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public final class LanguageConceptSwitch {
  private final LanguageConceptIndex myIndex;
  public static final int Assign = 0;
  public static final int Command = 1;
  public static final int CommandList = 2;
  public static final int ConversionAsk = 3;
  public static final int ConversionDef = 4;
  public static final int Name = 5;
  public static final int Num = 6;
  public static final int ValueAsk = 7;

  public LanguageConceptSwitch() {
    LanguageConceptIndexBuilder builder = new LanguageConceptIndexBuilder(0x733ec1a84f04e04L, 0xa4a37cab3336e413L);
    builder.put(0x3aaa61a28327060aL, Assign);
    builder.put(0x3aaa61a28327018bL, Command);
    builder.put(0x3aaa61a283270713L, CommandList);
    builder.put(0x3aaa61a2832706dcL, ConversionAsk);
    builder.put(0x3aaa61a2832706bdL, ConversionDef);
    builder.put(0x3aaa61a2832706ddL, Name);
    builder.put(0x3aaa61a2832701f4L, Num);
    builder.put(0x3aaa61a283270708L, ValueAsk);
    myIndex = builder.seal();
  }

  /*package*/ int index(SConceptId cid) {
    return myIndex.index(cid);
  }

  public int index(SAbstractConcept concept) {
    return myIndex.index(concept);
  }
}
