package GalaxyMerchant.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.EnumerationDescriptor;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.runtime.DataTypeDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder2;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import jetbrains.mps.smodel.adapter.ids.PrimitiveTypeId;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {
  /*package*/ final ConceptDescriptor myConceptAssign = createDescriptorForAssign();
  /*package*/ final ConceptDescriptor myConceptCommand = createDescriptorForCommand();
  /*package*/ final ConceptDescriptor myConceptCommandList = createDescriptorForCommandList();
  /*package*/ final ConceptDescriptor myConceptConversionAsk = createDescriptorForConversionAsk();
  /*package*/ final ConceptDescriptor myConceptConversionDef = createDescriptorForConversionDef();
  /*package*/ final ConceptDescriptor myConceptName = createDescriptorForName();
  /*package*/ final ConceptDescriptor myConceptNum = createDescriptorForNum();
  /*package*/ final ConceptDescriptor myConceptValueAsk = createDescriptorForValueAsk();
  /*package*/ final EnumerationDescriptor myEnumerationNumber = new EnumerationDescriptor_Number();
  /*package*/ final EnumerationDescriptor myEnumerationOre = new EnumerationDescriptor_Ore();
  private final LanguageConceptSwitch myIndexSwitch;

  public StructureAspectDescriptor() {
    myIndexSwitch = new LanguageConceptSwitch();
  }


  @Override
  public void reportDependencies(jetbrains.mps.smodel.runtime.StructureAspectDescriptor.Dependencies deps) {
    deps.extendedLanguage(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, "jetbrains.mps.lang.core");
  }

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptAssign, myConceptCommand, myConceptCommandList, myConceptConversionAsk, myConceptConversionDef, myConceptName, myConceptNum, myConceptValueAsk);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(SConceptId id) {
    switch (myIndexSwitch.index(id)) {
      case LanguageConceptSwitch.Assign:
        return myConceptAssign;
      case LanguageConceptSwitch.Command:
        return myConceptCommand;
      case LanguageConceptSwitch.CommandList:
        return myConceptCommandList;
      case LanguageConceptSwitch.ConversionAsk:
        return myConceptConversionAsk;
      case LanguageConceptSwitch.ConversionDef:
        return myConceptConversionDef;
      case LanguageConceptSwitch.Name:
        return myConceptName;
      case LanguageConceptSwitch.Num:
        return myConceptNum;
      case LanguageConceptSwitch.ValueAsk:
        return myConceptValueAsk;
      default:
        return null;
    }
  }

  @Override
  public Collection<DataTypeDescriptor> getDataTypeDescriptors() {
    return Arrays.asList(myEnumerationNumber, myEnumerationOre);
  }

  /*package*/ int internalIndex(SAbstractConcept c) {
    return myIndexSwitch.index(c);
  }

  private static ConceptDescriptor createDescriptorForAssign() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("GalaxyMerchant", "Assign", 0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a28327060aL);
    b.class_(false, false, false);
    // extends: GalaxyMerchant.structure.Command
    b.super_(0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a28327018bL);
    b.origin("r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853600778");
    b.version(3);
    b.aggregate("name", 0x3aaa61a2832706e9L).target(0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a2832706ddL).optional(false).ordered(true).multiple(false).origin("4227298550853601001").done();
    b.aggregate("value", 0x3aaa61a283270623L).target(0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a2832701f4L).optional(false).ordered(true).multiple(false).origin("4227298550853600803").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForCommand() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("GalaxyMerchant", "Command", 0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a28327018bL);
    b.class_(false, true, false);
    b.origin("r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853599627");
    b.version(3);
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForCommandList() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("GalaxyMerchant", "CommandList", 0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a283270713L);
    b.class_(false, false, true);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853601043");
    b.version(3);
    b.aggregate("cmd", 0x3aaa61a283270714L).target(0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a28327018bL).optional(false).ordered(true).multiple(true).origin("4227298550853601044").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForConversionAsk() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("GalaxyMerchant", "ConversionAsk", 0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a2832706dcL);
    b.class_(false, false, false);
    // extends: GalaxyMerchant.structure.Command
    b.super_(0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a28327018bL);
    b.origin("r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853600988");
    b.version(3);
    b.property("ore", 0x3aaa61a2832706feL).type(MetaIdFactory.dataTypeId(0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a28327060bL)).origin("4227298550853601022").done();
    b.aggregate("names", 0x3aaa61a2832706f3L).target(0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a2832706ddL).optional(false).ordered(true).multiple(true).origin("4227298550853601011").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForConversionDef() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("GalaxyMerchant", "ConversionDef", 0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a2832706bdL);
    b.class_(false, false, false);
    // extends: GalaxyMerchant.structure.Command
    b.super_(0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a28327018bL);
    b.origin("r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853600957");
    b.version(3);
    b.property("ore", 0x3aaa61a2832706beL).type(MetaIdFactory.dataTypeId(0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a28327060bL)).origin("4227298550853600958").done();
    b.property("credits", 0x3aaa61a2832706bfL).type(PrimitiveTypeId.INTEGER).origin("4227298550853600959").done();
    b.aggregate("amount", 0x3aaa61a2832706c0L).target(0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a2832706ddL).optional(false).ordered(true).multiple(true).origin("4227298550853600960").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForName() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("GalaxyMerchant", "Name", 0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a2832706ddL);
    b.class_(false, false, false);
    b.origin("r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853600989");
    b.version(3);
    b.property("name", 0x3aaa61a2832706deL).type(PrimitiveTypeId.STRING).origin("4227298550853600990").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForNum() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("GalaxyMerchant", "Num", 0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a2832701f4L);
    b.class_(false, false, false);
    b.origin("r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853599732");
    b.version(3);
    b.property("num", 0x3aaa61a283270600L).type(MetaIdFactory.dataTypeId(0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a283270200L)).origin("4227298550853600768").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForValueAsk() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("GalaxyMerchant", "ValueAsk", 0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a283270708L);
    b.class_(false, false, false);
    // extends: GalaxyMerchant.structure.Command
    b.super_(0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a28327018bL);
    b.origin("r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853601032");
    b.version(3);
    b.aggregate("names", 0x3aaa61a283270709L).target(0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a2832706ddL).optional(false).ordered(true).multiple(true).origin("4227298550853601033").done();
    return b.create();
  }
}
