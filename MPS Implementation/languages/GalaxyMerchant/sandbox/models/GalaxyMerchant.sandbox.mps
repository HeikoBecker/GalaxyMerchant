<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:66b9d77c-b181-4d24-a3d6-a5472217fb3d(GalaxyMerchant.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="0733ec1a-84f0-4e04-a4a3-7cab3336e413" name="GalaxyMerchant" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="0733ec1a-84f0-4e04-a4a3-7cab3336e413" name="GalaxyMerchant">
      <concept id="4227298550853599732" name="GalaxyMerchant.structure.Num" flags="ng" index="2Tzm1m">
        <property id="4227298550853600768" name="num" index="2Tzmuy" />
      </concept>
      <concept id="4227298550853601032" name="GalaxyMerchant.structure.ValueAsk" flags="ng" index="2TzmqE">
        <child id="4227298550853601033" name="names" index="2TzmqF" />
      </concept>
      <concept id="4227298550853601043" name="GalaxyMerchant.structure.CommandList" flags="ng" index="2TzmqL">
        <child id="4227298550853601044" name="cmd" index="2TzmqQ" />
      </concept>
      <concept id="4227298550853600957" name="GalaxyMerchant.structure.ConversionDef" flags="ng" index="2Tzmsv">
        <property id="4227298550853600959" name="credits" index="2Tzmst" />
        <child id="4227298550853600960" name="amount" index="2Tzmty" />
      </concept>
      <concept id="4227298550853600988" name="GalaxyMerchant.structure.ConversionAsk" flags="ng" index="2TzmtY">
        <property id="4227298550853601022" name="ore" index="2Tzmts" />
        <child id="4227298550853601011" name="names" index="2Tzmth" />
      </concept>
      <concept id="4227298550853600989" name="GalaxyMerchant.structure.Name" flags="ng" index="2TzmtZ">
        <property id="4227298550853600990" name="name" index="2TzmtW" />
      </concept>
      <concept id="4227298550853600778" name="GalaxyMerchant.structure.Assign" flags="ng" index="2TzmuC">
        <child id="4227298550853601001" name="name" index="2Tzmtb" />
        <child id="4227298550853600803" name="value" index="2Tzmu1" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2TzmqL" id="3EEoqa3ahtS">
    <property role="TrG5h" value="BarScript" />
    <node concept="2TzmuC" id="3EEoqa3apn_" role="2TzmqQ">
      <node concept="2TzmtZ" id="3EEoqa3apnB" role="2Tzmtb">
        <property role="2TzmtW" value="push" />
      </node>
      <node concept="2Tzm1m" id="3EEoqa3apnD" role="2Tzmu1">
        <property role="2Tzmuy" value="3EEoqa39K82/V" />
      </node>
    </node>
    <node concept="2TzmuC" id="3EEoqa3apnG" role="2TzmqQ">
      <node concept="2TzmtZ" id="3EEoqa3apnI" role="2Tzmtb">
        <property role="2TzmtW" value="glob" />
      </node>
      <node concept="2Tzm1m" id="3EEoqa3apnK" role="2Tzmu1" />
    </node>
    <node concept="2Tzmsv" id="4xgAvM0HX4Y" role="2TzmqQ">
      <property role="2Tzmst" value="1" />
      <node concept="2TzmtZ" id="4xgAvM0HX50" role="2Tzmty">
        <property role="2TzmtW" value="pus" />
      </node>
    </node>
    <node concept="2TzmqE" id="4xgAvM0Ey0G" role="2TzmqQ">
      <node concept="2TzmtZ" id="4xgAvM0Ey0I" role="2TzmqF">
        <property role="2TzmtW" value="push" />
      </node>
      <node concept="2TzmtZ" id="4xgAvM0Fh6k" role="2TzmqF">
        <property role="2TzmtW" value="push" />
      </node>
      <node concept="2TzmtZ" id="4xgAvM0Fh6l" role="2TzmqF">
        <property role="2TzmtW" value="push" />
      </node>
    </node>
    <node concept="2TzmtY" id="4xgAvM0GRxI" role="2TzmqQ">
      <property role="2Tzmts" value="3EEoqa39Kod/Silver" />
      <node concept="2TzmtZ" id="4xgAvM0GRxK" role="2Tzmth">
        <property role="2TzmtW" value="push" />
      </node>
      <node concept="2TzmtZ" id="4xgAvM0GRxM" role="2Tzmth">
        <property role="2TzmtW" value="push" />
      </node>
    </node>
  </node>
</model>

