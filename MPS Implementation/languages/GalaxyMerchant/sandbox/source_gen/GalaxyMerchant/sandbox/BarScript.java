package GalaxyMerchant.sandbox;

/*Generated by MPS */

import GalaxyMerchant.runtime.EvalVisitor;
import java.util.List;
import GalaxyMerchant.runtime.Visitable;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import GalaxyMerchant.runtime.Assign;
import GalaxyMerchant.runtime.Number;
import GalaxyMerchant.runtime.ConversionDef;
import GalaxyMerchant.runtime.Ore;
import GalaxyMerchant.runtime.ValueAsk;
import GalaxyMerchant.runtime.ConversionAsk;

public class BarScript {

  public static void main(String[] args) {

    EvalVisitor visitor = new EvalVisitor();

    List<Visitable> cmds = ListSequence.fromList(new ArrayList<Visitable>(10));

    ListSequence.fromList(cmds).addElement(new Assign("push", Number.V));
    ListSequence.fromList(cmds).addElement(new Assign("glob", Number.I));
    ListSequence.fromList(cmds).addElement(
    {
      List<String> names = ListSequence.fromList(new ArrayList<String>());

      ListSequence.fromList(names).addElement("pus");
      new ConversionDef(Ore.Gold, 1, names);

    });
    ListSequence.fromList(cmds).addElement(
    {
      List<String> names = ListSequence.fromList(new ArrayList<String>());

      ListSequence.fromList(names).addElement("push");
      ListSequence.fromList(names).addElement("push");
      ListSequence.fromList(names).addElement("push");
      new ValueAsk(names);
    });
    ListSequence.fromList(cmds).addElement(
    {
      List<String> names = ListSequence.fromList(new ArrayList<String>());

      ListSequence.fromList(names).addElement("push");
      ListSequence.fromList(names).addElement("push");
      new ConversionAsk(Ore.Silver, names);

    });

    for (Visitable cmd : ListSequence.fromList(cmds)) {
      cmd.accept(visitor);
    }
  }
}
