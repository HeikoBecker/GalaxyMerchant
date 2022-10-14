<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:878f7794-1ce8-46a6-aff9-5020697de60d(GalaxyMerchant.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="m2t6" ref="r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="3EEoqa39Lxr">
    <ref role="1XX52x" to="m2t6:3EEoqa39Koa" resolve="Assign" />
    <node concept="3EZMnI" id="3EEoqa39LIH" role="2wV5jI">
      <node concept="l2Vlx" id="3EEoqa39LII" role="2iSdaV" />
      <node concept="3F1sOY" id="3EEoqa39LIR" role="3EZMnx">
        <ref role="1NtTu8" to="m2t6:3EEoqa39KrD" resolve="name" />
      </node>
      <node concept="3F0ifn" id="3EEoqa39LIS" role="3EZMnx">
        <property role="3F0ifm" value=" is" />
        <node concept="11L4FC" id="3EEoqa39LIT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="3EEoqa39LIX" role="3EZMnx">
        <ref role="1NtTu8" to="m2t6:3EEoqa39Koz" resolve="value" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3EEoqa39Sda">
    <ref role="1XX52x" to="m2t6:3EEoqa39Ks8" resolve="ValueAsk" />
    <node concept="3EZMnI" id="3EEoqa39Sv4" role="2wV5jI">
      <node concept="l2Vlx" id="3EEoqa39Sv5" role="2iSdaV" />
      <node concept="3F0ifn" id="3EEoqa39Svo" role="3EZMnx">
        <property role="3F0ifm" value="how much is" />
      </node>
      <node concept="3F2HdR" id="3EEoqa39UJW" role="3EZMnx">
        <ref role="1NtTu8" to="m2t6:3EEoqa39Ks9" resolve="names" />
        <node concept="l2Vlx" id="3EEoqa39UK0" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="3EEoqa39UK4" role="3EZMnx">
        <property role="3F0ifm" value="?" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3EEoqa39Szu">
    <ref role="1XX52x" to="m2t6:3EEoqa39Ksj" resolve="CommandList" />
    <node concept="3EZMnI" id="3EEoqa39TXn" role="2wV5jI">
      <node concept="3F0ifn" id="3EEoqa3a18q" role="3EZMnx">
        <property role="3F0ifm" value="Script" />
      </node>
      <node concept="3F0A7n" id="3EEoqa3a1yo" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F2HdR" id="3EEoqa39TXH" role="3EZMnx">
        <ref role="1NtTu8" to="m2t6:3EEoqa39Ksk" resolve="cmd" />
        <node concept="l2Vlx" id="3EEoqa39TXK" role="2czzBx" />
        <node concept="pj6Ft" id="3EEoqa39X$s" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="3EEoqa39X$y" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="3EEoqa3a1yq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3EEoqa39TXq" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3EEoqa39UVM">
    <ref role="1XX52x" to="m2t6:3EEoqa39Krt" resolve="Name" />
    <node concept="3F0A7n" id="3EEoqa39UVO" role="2wV5jI">
      <ref role="1NtTu8" to="m2t6:3EEoqa39Kru" resolve="name" />
    </node>
  </node>
  <node concept="24kQdi" id="3EEoqa3ae11">
    <ref role="1XX52x" to="m2t6:3EEoqa39KqX" resolve="ConversionDef" />
    <node concept="3EZMnI" id="3EEoqa3ae15" role="2wV5jI">
      <node concept="3F2HdR" id="3EEoqa3ae19" role="3EZMnx">
        <ref role="1NtTu8" to="m2t6:3EEoqa39Kr0" resolve="amount" />
        <node concept="l2Vlx" id="3EEoqa3ae1b" role="2czzBx" />
      </node>
      <node concept="3F0A7n" id="3EEoqa3ae1f" role="3EZMnx">
        <ref role="1NtTu8" to="m2t6:3EEoqa39KqY" resolve="ore" />
      </node>
      <node concept="3F0ifn" id="3EEoqa3ae1o" role="3EZMnx">
        <property role="3F0ifm" value=" is" />
      </node>
      <node concept="3F0A7n" id="3EEoqa3ae1r" role="3EZMnx">
        <ref role="1NtTu8" to="m2t6:3EEoqa39KqZ" resolve="credits" />
      </node>
      <node concept="3F0ifn" id="3EEoqa3ae1u" role="3EZMnx">
        <property role="3F0ifm" value="Credits" />
      </node>
      <node concept="l2Vlx" id="3EEoqa3ae18" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3EEoqa3ahUi">
    <ref role="1XX52x" to="m2t6:3EEoqa39Krs" resolve="ConversionAsk" />
    <node concept="3EZMnI" id="3EEoqa3ahUk" role="2wV5jI">
      <node concept="3F0ifn" id="3EEoqa3ahUq" role="3EZMnx">
        <property role="3F0ifm" value="how much is" />
      </node>
      <node concept="3F2HdR" id="3EEoqa3ahUt" role="3EZMnx">
        <ref role="1NtTu8" to="m2t6:3EEoqa39KrN" resolve="names" />
        <node concept="l2Vlx" id="3EEoqa3ahUv" role="2czzBx" />
      </node>
      <node concept="3F0A7n" id="3EEoqa3ahUy" role="3EZMnx">
        <ref role="1NtTu8" to="m2t6:3EEoqa39KrY" resolve="ore" />
      </node>
      <node concept="l2Vlx" id="3EEoqa3ahUn" role="2iSdaV" />
      <node concept="3F0ifn" id="4xgAvM0GRyz" role="3EZMnx">
        <property role="3F0ifm" value="?" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3EEoqa3alq4">
    <ref role="1XX52x" to="m2t6:3EEoqa39K7O" resolve="Num" />
    <node concept="3F0A7n" id="3EEoqa3alq6" role="2wV5jI">
      <ref role="1NtTu8" to="m2t6:3EEoqa39Ko0" resolve="num" />
    </node>
  </node>
</model>

