<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3EEoqa39K6b">
    <property role="EcuMT" value="4227298550853599627" />
    <property role="TrG5h" value="Command" />
    <property role="R4oN_" value="Abstract Top-level node" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
  </node>
  <node concept="1TIwiD" id="3EEoqa39K7O">
    <property role="EcuMT" value="4227298550853599732" />
    <property role="TrG5h" value="Num" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3EEoqa39Ko0" role="1TKVEl">
      <property role="IQ2nx" value="4227298550853600768" />
      <property role="TrG5h" value="num" />
      <ref role="AX2Wp" node="3EEoqa39K80" resolve="Number" />
    </node>
  </node>
  <node concept="25R3W" id="3EEoqa39K80">
    <property role="3F6X1D" value="4227298550853599744" />
    <property role="TrG5h" value="Number" />
    <ref role="1H5jkz" node="3EEoqa39K81" resolve="I" />
    <node concept="25R33" id="3EEoqa39K81" role="25R1y">
      <property role="3tVfz5" value="4227298550853599745" />
      <property role="TrG5h" value="I" />
      <property role="1L1pqM" value="Number.I" />
    </node>
    <node concept="25R33" id="3EEoqa39K82" role="25R1y">
      <property role="3tVfz5" value="4227298550853599746" />
      <property role="TrG5h" value="V" />
      <property role="1L1pqM" value="Number.V" />
    </node>
    <node concept="25R33" id="3EEoqa39K83" role="25R1y">
      <property role="3tVfz5" value="4227298550853599747" />
      <property role="TrG5h" value="X" />
      <property role="1L1pqM" value="Number.X" />
    </node>
    <node concept="25R33" id="3EEoqa39K84" role="25R1y">
      <property role="3tVfz5" value="4227298550853599748" />
      <property role="TrG5h" value="L" />
      <property role="1L1pqM" value="Number.L" />
    </node>
    <node concept="25R33" id="3EEoqa39K85" role="25R1y">
      <property role="3tVfz5" value="4227298550853599749" />
      <property role="TrG5h" value="C" />
      <property role="1L1pqM" value="Number.C" />
    </node>
    <node concept="25R33" id="3EEoqa39K86" role="25R1y">
      <property role="3tVfz5" value="4227298550853599750" />
      <property role="TrG5h" value="D" />
      <property role="1L1pqM" value="Number.D" />
    </node>
    <node concept="25R33" id="3EEoqa39K87" role="25R1y">
      <property role="3tVfz5" value="4227298550853599751" />
      <property role="TrG5h" value="M" />
      <property role="1L1pqM" value="Number.M" />
    </node>
  </node>
  <node concept="1TIwiD" id="3EEoqa39Koa">
    <property role="EcuMT" value="4227298550853600778" />
    <property role="TrG5h" value="Assign" />
    <property role="R4oN_" value="assignment of a name to a value" />
    <ref role="1TJDcQ" node="3EEoqa39K6b" resolve="Command" />
    <node concept="1TJgyj" id="3EEoqa39KrD" role="1TKVEi">
      <property role="IQ2ns" value="4227298550853601001" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="name" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3EEoqa39Krt" resolve="Name" />
    </node>
    <node concept="1TJgyj" id="3EEoqa39Koz" role="1TKVEi">
      <property role="IQ2ns" value="4227298550853600803" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3EEoqa39K7O" resolve="Num" />
    </node>
  </node>
  <node concept="25R3W" id="3EEoqa39Kob">
    <property role="3F6X1D" value="4227298550853600779" />
    <property role="TrG5h" value="Ore" />
    <ref role="1H5jkz" node="3EEoqa39Koe" resolve="Iron" />
    <node concept="25R33" id="3EEoqa39Koc" role="25R1y">
      <property role="3tVfz5" value="4227298550853600780" />
      <property role="TrG5h" value="Gold" />
      <property role="1L1pqM" value="gold" />
    </node>
    <node concept="25R33" id="3EEoqa39Kod" role="25R1y">
      <property role="3tVfz5" value="4227298550853600781" />
      <property role="TrG5h" value="Silver" />
      <property role="1L1pqM" value="silver" />
    </node>
    <node concept="25R33" id="3EEoqa39Koe" role="25R1y">
      <property role="3tVfz5" value="4227298550853600782" />
      <property role="TrG5h" value="Iron" />
      <property role="1L1pqM" value="iron" />
    </node>
  </node>
  <node concept="1TIwiD" id="3EEoqa39KqX">
    <property role="EcuMT" value="4227298550853600957" />
    <property role="TrG5h" value="ConversionDef" />
    <property role="R4oN_" value="definition of a conversion from ores to credits" />
    <ref role="1TJDcQ" node="3EEoqa39K6b" resolve="Command" />
    <node concept="1TJgyi" id="3EEoqa39KqY" role="1TKVEl">
      <property role="IQ2nx" value="4227298550853600958" />
      <property role="TrG5h" value="ore" />
      <ref role="AX2Wp" node="3EEoqa39Kob" resolve="Ore" />
    </node>
    <node concept="1TJgyi" id="3EEoqa39KqZ" role="1TKVEl">
      <property role="IQ2nx" value="4227298550853600959" />
      <property role="TrG5h" value="credits" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="3EEoqa39Kr0" role="1TKVEi">
      <property role="IQ2ns" value="4227298550853600960" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="amount" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="3EEoqa39Krt" resolve="Name" />
    </node>
  </node>
  <node concept="1TIwiD" id="3EEoqa39Krs">
    <property role="EcuMT" value="4227298550853600988" />
    <property role="TrG5h" value="ConversionAsk" />
    <property role="R4oN_" value="query for a conversion from ore to credits" />
    <ref role="1TJDcQ" node="3EEoqa39K6b" resolve="Command" />
    <node concept="1TJgyj" id="3EEoqa39KrN" role="1TKVEi">
      <property role="IQ2ns" value="4227298550853601011" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="names" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="3EEoqa39Krt" resolve="Name" />
    </node>
    <node concept="1TJgyi" id="3EEoqa39KrY" role="1TKVEl">
      <property role="IQ2nx" value="4227298550853601022" />
      <property role="TrG5h" value="ore" />
      <ref role="AX2Wp" node="3EEoqa39Kob" resolve="Ore" />
    </node>
  </node>
  <node concept="1TIwiD" id="3EEoqa39Krt">
    <property role="EcuMT" value="4227298550853600989" />
    <property role="TrG5h" value="Name" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="3EEoqa39Kru" role="1TKVEl">
      <property role="IQ2nx" value="4227298550853600990" />
      <property role="TrG5h" value="name" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3EEoqa39Ks8">
    <property role="EcuMT" value="4227298550853601032" />
    <property role="TrG5h" value="ValueAsk" />
    <property role="R4oN_" value="query for a value of a list of numbers" />
    <ref role="1TJDcQ" node="3EEoqa39K6b" resolve="Command" />
    <node concept="1TJgyj" id="3EEoqa39Ks9" role="1TKVEi">
      <property role="IQ2ns" value="4227298550853601033" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="names" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="3EEoqa39Krt" resolve="Name" />
    </node>
  </node>
  <node concept="1TIwiD" id="3EEoqa39Ksj">
    <property role="EcuMT" value="4227298550853601043" />
    <property role="TrG5h" value="CommandList" />
    <property role="19KtqR" value="true" />
    <property role="R4oN_" value="Top-level node encapsulating all commands" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3EEoqa39Ksk" role="1TKVEi">
      <property role="IQ2ns" value="4227298550853601044" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="cmd" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="3EEoqa39K6b" resolve="Command" />
    </node>
    <node concept="PrWs8" id="3EEoqa39Xht" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
</model>

