package GalaxyMerchant.runtime;

/*Generated by MPS */


public class Assign implements Visitable {

  private String name;
  private Number value;

  public String getName() {
    return this.name;
  }

  public Number getNum() {
    return this.value;
  }

  public Assign(String name, Number num) {
    this.name = name;
    this.value = num;
  }

  public void accept(EvalVisitor visitor) {
    visitor.visit(this);
  }
}