package GalaxyMerchant.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.EnumerationDescriptorBase;
import jetbrains.mps.smodel.runtime.EnumerationDescriptor;
import jetbrains.mps.lang.smodel.EnumerationLiteralsIndex;
import java.util.List;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;

public class EnumerationDescriptor_Number extends EnumerationDescriptorBase {

  public EnumerationDescriptor_Number() {
    super(0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a283270200L, "Number", "r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853599744");
  }

  private final EnumerationDescriptor.MemberDescriptor myMember_I_0 = new EnumerationDescriptor.MemberDescriptor("I", "Number.I", 0x3aaa61a283270201L, "r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853599745");
  private final EnumerationDescriptor.MemberDescriptor myMember_V_0 = new EnumerationDescriptor.MemberDescriptor("V", "Number.V", 0x3aaa61a283270202L, "r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853599746");
  private final EnumerationDescriptor.MemberDescriptor myMember_X_0 = new EnumerationDescriptor.MemberDescriptor("X", "Number.X", 0x3aaa61a283270203L, "r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853599747");
  private final EnumerationDescriptor.MemberDescriptor myMember_L_0 = new EnumerationDescriptor.MemberDescriptor("L", "Number.L", 0x3aaa61a283270204L, "r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853599748");
  private final EnumerationDescriptor.MemberDescriptor myMember_C_0 = new EnumerationDescriptor.MemberDescriptor("C", "Number.C", 0x3aaa61a283270205L, "r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853599749");
  private final EnumerationDescriptor.MemberDescriptor myMember_D_0 = new EnumerationDescriptor.MemberDescriptor("D", "Number.D", 0x3aaa61a283270206L, "r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853599750");
  private final EnumerationDescriptor.MemberDescriptor myMember_M_0 = new EnumerationDescriptor.MemberDescriptor("M", "Number.M", 0x3aaa61a283270207L, "r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)/4227298550853599751");

  private final EnumerationLiteralsIndex myIndex = EnumerationLiteralsIndex.build(0x733ec1a84f04e04L, 0xa4a37cab3336e413L, 0x3aaa61a283270200L, 0x3aaa61a283270201L, 0x3aaa61a283270202L, 0x3aaa61a283270203L, 0x3aaa61a283270204L, 0x3aaa61a283270205L, 0x3aaa61a283270206L, 0x3aaa61a283270207L);
  private final List<EnumerationDescriptor.MemberDescriptor> myMembers = new EnumerationDescriptorBase.MembersList(myIndex, myMember_I_0, myMember_V_0, myMember_X_0, myMember_L_0, myMember_C_0, myMember_D_0, myMember_M_0);

  @Nullable
  @Override
  public EnumerationDescriptor.MemberDescriptor getDefault() {
    return myMember_I_0;
  }

  @NotNull
  @Override
  public List<EnumerationDescriptor.MemberDescriptor> getMembers() {
    return myMembers;
  }

  @Nullable
  @Override
  public EnumerationDescriptor.MemberDescriptor getMember(@Nullable String memberName) {
    if (memberName == null) {
      return null;
    }
    switch (memberName) {
      case "I":
        return myMember_I_0;
      case "V":
        return myMember_V_0;
      case "X":
        return myMember_X_0;
      case "L":
        return myMember_L_0;
      case "C":
        return myMember_C_0;
      case "D":
        return myMember_D_0;
      case "M":
        return myMember_M_0;
    }
    return null;
  }

  @Nullable
  @Override
  public EnumerationDescriptor.MemberDescriptor getMember(long idValue) {
    int index = myIndex.index(idValue);
    if (index == -1) {
      return null;
    }
    return myMembers.get(index);
  }
}
