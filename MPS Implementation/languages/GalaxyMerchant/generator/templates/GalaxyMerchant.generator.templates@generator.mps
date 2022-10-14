<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7826f946-74b6-4788-b9e6-66f52e0da050(GalaxyMerchant.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="m2t6" ref="r:4c48624a-d2ba-44e1-9e8c-eaa7da7a77b6(GalaxyMerchant.structure)" />
    <import index="2kwe" ref="r:5152c46f-90ed-4634-a46f-616307d46a76(GalaxyMerchant.runtime)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168559512253" name="jetbrains.mps.lang.generator.structure.DismissTopMappingRule" flags="lg" index="j$LIH">
        <child id="1169669152123" name="generatorMessage" index="1lHHLF" />
      </concept>
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <child id="1168558750579" name="defaultConsequence" index="jxRDz" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1169670156577" name="jetbrains.mps.lang.generator.structure.GeneratorMessage" flags="lg" index="1lLz0L">
        <property id="1169670173015" name="messageText" index="1lLB17" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX">
        <child id="982871510068000158" name="sourceNodeQuery" index="1sPUBK" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1562299158920737514" name="initSize" index="3lWHg$" />
      </concept>
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
    </language>
  </registry>
  <node concept="bUwia" id="2In4VL2Hbvb">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="4xgAvM0DfJn" role="3acgRq">
      <ref role="30HIoZ" to="m2t6:3EEoqa39Krt" resolve="Name" />
      <node concept="j$656" id="4xgAvM0Dgih" role="1lVwrX">
        <ref role="v9R2y" node="4xgAvM0DfJr" resolve="reduce_Name" />
      </node>
    </node>
    <node concept="3lhOvk" id="3EEoqa3apnM" role="3lj3bC">
      <ref role="30HIoZ" to="m2t6:3EEoqa39Ksj" resolve="CommandList" />
      <ref role="3lhOvi" node="3EEoqa3apnN" resolve="map_CommandList" />
    </node>
  </node>
  <node concept="312cEu" id="3EEoqa3apnN">
    <property role="TrG5h" value="map_CommandList" />
    <node concept="2tJIrI" id="3EEoqa3aslh" role="jymVt" />
    <node concept="2YIFZL" id="3EEoqa3arJ6" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="3EEoqa3arJ7" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="3EEoqa3arJ8" role="1tU5fm">
          <node concept="17QB3L" id="3EEoqa3arJ9" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="3EEoqa3arJa" role="3clF45" />
      <node concept="3Tm1VV" id="3EEoqa3arJb" role="1B3o_S" />
      <node concept="3clFbS" id="3EEoqa3arJc" role="3clF47">
        <node concept="3clFbH" id="2kGc13jF3U0" role="3cqZAp" />
        <node concept="3cpWs8" id="4xgAvM0DlkP" role="3cqZAp">
          <node concept="3cpWsn" id="4xgAvM0DlkQ" role="3cpWs9">
            <property role="TrG5h" value="visitor" />
            <node concept="3uibUv" id="4xgAvM0DlkR" role="1tU5fm">
              <ref role="3uigEE" to="2kwe:4xgAvM0CSLa" resolve="EvalVisitor" />
            </node>
            <node concept="2ShNRf" id="4xgAvM0DlHI" role="33vP2m">
              <node concept="1pGfFk" id="4xgAvM0DlCH" role="2ShVmc">
                <ref role="37wK5l" to="2kwe:4xgAvM0CSMu" resolve="EvalVisitor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xgAvM0Dmm9" role="3cqZAp" />
        <node concept="3cpWs8" id="4xgAvM0DmSZ" role="3cqZAp">
          <node concept="3cpWsn" id="4xgAvM0DmT2" role="3cpWs9">
            <property role="TrG5h" value="cmds" />
            <node concept="_YKpA" id="4xgAvM0DmSV" role="1tU5fm">
              <node concept="3uibUv" id="4xgAvM0Do0B" role="_ZDj9">
                <ref role="3uigEE" to="2kwe:4xgAvM0Dnsy" resolve="Visitable" />
              </node>
            </node>
            <node concept="2ShNRf" id="4xgAvM0DoxI" role="33vP2m">
              <node concept="Tc6Ow" id="4xgAvM0DqJ7" role="2ShVmc">
                <node concept="3cmrfG" id="4xgAvM0Drao" role="3lWHg$">
                  <property role="3cmrfH" value="10" />
                </node>
                <node concept="3uibUv" id="4xgAvM0DrOB" role="HW$YZ">
                  <ref role="3uigEE" to="2kwe:4xgAvM0Dnsy" resolve="Visitable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xgAvM0DlK6" role="3cqZAp" />
        <node concept="3clFbF" id="4xgAvM0DsgT" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0Dt2T" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0DsgR" role="2Oq$k0">
              <ref role="3cqZAo" node="4xgAvM0DmT2" resolve="cmds" />
            </node>
            <node concept="2Ke9KJ" id="4xgAvM0DusP" role="2OqNvi">
              <node concept="10Nm6u" id="4xgAvM0Dv5a" role="25WWJ7">
                <node concept="1sPUBX" id="4xgAvM0DvtL" role="lGtFl">
                  <ref role="v9R2y" node="7MHw9nHsJ9$" resolve="Command" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="4xgAvM0Dvd4" role="lGtFl">
            <node concept="3JmXsc" id="4xgAvM0Dvd7" role="3Jn$fo">
              <node concept="3clFbS" id="4xgAvM0Dvd8" role="2VODD2">
                <node concept="3clFbF" id="4xgAvM0Dvde" role="3cqZAp">
                  <node concept="2OqwBi" id="4xgAvM0Dvd9" role="3clFbG">
                    <node concept="3Tsc0h" id="4xgAvM0Dvdc" role="2OqNvi">
                      <ref role="3TtcxE" to="m2t6:3EEoqa39Ksk" resolve="cmd" />
                    </node>
                    <node concept="30H73N" id="4xgAvM0Dvdd" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xgAvM0DrUr" role="3cqZAp" />
        <node concept="2Gpval" id="4xgAvM0Dzui" role="3cqZAp">
          <node concept="2GrKxI" id="4xgAvM0Dzuk" role="2Gsz3X">
            <property role="TrG5h" value="cmd" />
          </node>
          <node concept="37vLTw" id="4xgAvM0DzVK" role="2GsD0m">
            <ref role="3cqZAo" node="4xgAvM0DmT2" resolve="cmds" />
          </node>
          <node concept="3clFbS" id="4xgAvM0Dzuo" role="2LFqv$">
            <node concept="3clFbF" id="4xgAvM0D$mf" role="3cqZAp">
              <node concept="2OqwBi" id="4xgAvM0D$vd" role="3clFbG">
                <node concept="2GrUjf" id="4xgAvM0D$me" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4xgAvM0Dzuk" resolve="cmd" />
                </node>
                <node concept="liA8E" id="4xgAvM0D_db" role="2OqNvi">
                  <ref role="37wK5l" to="2kwe:4xgAvM0Dnt$" resolve="accept" />
                  <node concept="37vLTw" id="4xgAvM0D_Mu" role="37wK5m">
                    <ref role="3cqZAo" node="4xgAvM0DlkQ" resolve="visitor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3EEoqa3apnO" role="1B3o_S" />
    <node concept="n94m4" id="3EEoqa3apnP" role="lGtFl">
      <ref role="n9lRv" to="m2t6:3EEoqa39Ksj" resolve="CommandList" />
    </node>
    <node concept="17Uvod" id="3EEoqa3d9Zy" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="3EEoqa3d9Z_" role="3zH0cK">
        <node concept="3clFbS" id="3EEoqa3d9ZA" role="2VODD2">
          <node concept="3clFbF" id="3EEoqa3d9ZG" role="3cqZAp">
            <node concept="2OqwBi" id="3EEoqa3d9ZB" role="3clFbG">
              <node concept="3TrcHB" id="3EEoqa3d9ZE" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
              <node concept="30H73N" id="3EEoqa3d9ZF" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="7MHw9nHsJ9$">
    <property role="TrG5h" value="Command" />
    <node concept="3aamgX" id="7MHw9nHsJ9_" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m2t6:3EEoqa39Koa" resolve="Assign" />
      <node concept="gft3U" id="4xgAvM0BtNG" role="1lVwrX">
        <node concept="2ShNRf" id="4xgAvM0D5gn" role="gfFT$">
          <node concept="1pGfFk" id="4xgAvM0D5qO" role="2ShVmc">
            <property role="373rjd" value="true" />
            <ref role="37wK5l" to="2kwe:4xgAvM0CXa7" resolve="Assign" />
            <node concept="Xl_RD" id="4xgAvM0D8hc" role="37wK5m">
              <node concept="29HgVG" id="4xgAvM0DhQ1" role="lGtFl">
                <node concept="3NFfHV" id="4xgAvM0DhQ2" role="3NFExx">
                  <node concept="3clFbS" id="4xgAvM0DhQ3" role="2VODD2">
                    <node concept="3clFbF" id="4xgAvM0DhQ9" role="3cqZAp">
                      <node concept="2OqwBi" id="4xgAvM0DhQ4" role="3clFbG">
                        <node concept="3TrEf2" id="4xgAvM0DhQ7" role="2OqNvi">
                          <ref role="3Tt5mk" to="m2t6:3EEoqa39KrD" resolve="name" />
                        </node>
                        <node concept="30H73N" id="4xgAvM0DhQ8" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Rm8GO" id="4xgAvM0BtOq" role="37wK5m">
              <ref role="1Px2BO" to="2kwe:7O4OqLqZhRZ" resolve="Number" />
              <ref role="Rm8GQ" to="2kwe:7O4OqLqZhTd" resolve="I" />
              <node concept="1sPUBX" id="4xgAvM0CoRI" role="lGtFl">
                <ref role="v9R2y" node="4xgAvM0Cpl3" resolve="switch_Num" />
                <node concept="3NFfHV" id="4xgAvM0CoRU" role="1sPUBK">
                  <node concept="3clFbS" id="4xgAvM0CoRV" role="2VODD2">
                    <node concept="3clFbF" id="4xgAvM0CoTN" role="3cqZAp">
                      <node concept="2OqwBi" id="4xgAvM0E_rd" role="3clFbG">
                        <node concept="30H73N" id="4xgAvM0CoTM" role="2Oq$k0" />
                        <node concept="3TrEf2" id="4xgAvM0E_Eu" role="2OqNvi">
                          <ref role="3Tt5mk" to="m2t6:3EEoqa39Koz" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7MHw9nHsJcK" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m2t6:3EEoqa39Krs" resolve="ConversionAsk" />
      <node concept="j$656" id="4xgAvM0H1US" role="1lVwrX">
        <ref role="v9R2y" node="4xgAvM0GGll" resolve="reduce_ConversionAsk" />
      </node>
    </node>
    <node concept="3aamgX" id="4xgAvM0$P1T" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m2t6:3EEoqa39KqX" resolve="ConversionDef" />
      <node concept="j$656" id="4xgAvM0HczR" role="1lVwrX">
        <ref role="v9R2y" node="4xgAvM0H1Wd" resolve="reduce_ConversionDef" />
      </node>
    </node>
    <node concept="3aamgX" id="4xgAvM0$P2P" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m2t6:3EEoqa39Ks8" resolve="ValueAsk" />
      <node concept="j$656" id="4xgAvM0FDZW" role="1lVwrX">
        <ref role="v9R2y" node="4xgAvM0F_Rh" resolve="reduce_ValueAsk" />
      </node>
    </node>
    <node concept="j$LIH" id="4xgAvM0$P3N" role="jxRDz">
      <node concept="1lLz0L" id="4xgAvM0$P4g" role="1lHHLF">
        <property role="1lLB17" value="failed to switch" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="4xgAvM0Cpl3">
    <property role="TrG5h" value="switch_Num" />
    <node concept="3aamgX" id="4xgAvM0Cq5I" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m2t6:3EEoqa39K7O" resolve="Num" />
      <node concept="gft3U" id="4xgAvM0Cr70" role="1lVwrX">
        <node concept="Rm8GO" id="4xgAvM0Cr8m" role="gfFT$">
          <ref role="Rm8GQ" to="2kwe:7O4OqLqZhTd" resolve="I" />
          <ref role="1Px2BO" to="2kwe:7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
      <node concept="30G5F_" id="4xgAvM0Cq9$" role="30HLyM">
        <node concept="3clFbS" id="4xgAvM0Cq9_" role="2VODD2">
          <node concept="3clFbF" id="4xgAvM0CqdF" role="3cqZAp">
            <node concept="2OqwBi" id="4xgAvM0CqMg" role="3clFbG">
              <node concept="2OqwBi" id="4xgAvM0Cqqy" role="2Oq$k0">
                <node concept="30H73N" id="4xgAvM0CqdE" role="2Oq$k0" />
                <node concept="3TrcHB" id="4xgAvM0CqAz" role="2OqNvi">
                  <ref role="3TsBF5" to="m2t6:3EEoqa39Ko0" resolve="num" />
                </node>
              </node>
              <node concept="21noJN" id="4xgAvM0Cr1O" role="2OqNvi">
                <node concept="21nZrQ" id="4xgAvM0Cr1Q" role="21noJM">
                  <ref role="21nZrZ" to="m2t6:3EEoqa39K81" resolve="I" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4xgAvM0Cr8y" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m2t6:3EEoqa39K7O" resolve="Num" />
      <node concept="gft3U" id="4xgAvM0CrYV" role="1lVwrX">
        <node concept="Rm8GO" id="4xgAvM0CsVO" role="gfFT$">
          <ref role="Rm8GQ" to="2kwe:7O4OqLqZhXa" resolve="V" />
          <ref role="1Px2BO" to="2kwe:7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
      <node concept="30G5F_" id="4xgAvM0Crfj" role="30HLyM">
        <node concept="3clFbS" id="4xgAvM0Crfk" role="2VODD2">
          <node concept="3clFbF" id="4xgAvM0CrfD" role="3cqZAp">
            <node concept="2OqwBi" id="4xgAvM0CrIx" role="3clFbG">
              <node concept="2OqwBi" id="4xgAvM0Crsw" role="2Oq$k0">
                <node concept="30H73N" id="4xgAvM0CrfC" role="2Oq$k0" />
                <node concept="3TrcHB" id="4xgAvM0Cr$T" role="2OqNvi">
                  <ref role="3TsBF5" to="m2t6:3EEoqa39Ko0" resolve="num" />
                </node>
              </node>
              <node concept="21noJN" id="4xgAvM0CrS3" role="2OqNvi">
                <node concept="21nZrQ" id="4xgAvM0CrS5" role="21noJM">
                  <ref role="21nZrZ" to="m2t6:3EEoqa39K82" resolve="V" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4xgAvM0HPxs" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m2t6:3EEoqa39K7O" resolve="Num" />
      <node concept="gft3U" id="4xgAvM0HPxt" role="1lVwrX">
        <node concept="Rm8GO" id="4xgAvM0HSXn" role="gfFT$">
          <ref role="Rm8GQ" to="2kwe:7O4OqLqZhYD" resolve="X" />
          <ref role="1Px2BO" to="2kwe:7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
      <node concept="30G5F_" id="4xgAvM0HPxv" role="30HLyM">
        <node concept="3clFbS" id="4xgAvM0HPxw" role="2VODD2">
          <node concept="3clFbF" id="4xgAvM0HPxx" role="3cqZAp">
            <node concept="2OqwBi" id="4xgAvM0HPxy" role="3clFbG">
              <node concept="2OqwBi" id="4xgAvM0HPxz" role="2Oq$k0">
                <node concept="30H73N" id="4xgAvM0HPx$" role="2Oq$k0" />
                <node concept="3TrcHB" id="4xgAvM0HPx_" role="2OqNvi">
                  <ref role="3TsBF5" to="m2t6:3EEoqa39Ko0" resolve="num" />
                </node>
              </node>
              <node concept="21noJN" id="4xgAvM0HPxA" role="2OqNvi">
                <node concept="21nZrQ" id="4xgAvM0HPxB" role="21noJM">
                  <ref role="21nZrZ" to="m2t6:3EEoqa39K83" resolve="X" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4xgAvM0HPAg" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m2t6:3EEoqa39K7O" resolve="Num" />
      <node concept="gft3U" id="4xgAvM0HPAh" role="1lVwrX">
        <node concept="Rm8GO" id="4xgAvM0HT6k" role="gfFT$">
          <ref role="Rm8GQ" to="2kwe:7O4OqLqZ_mS" resolve="L" />
          <ref role="1Px2BO" to="2kwe:7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
      <node concept="30G5F_" id="4xgAvM0HPAj" role="30HLyM">
        <node concept="3clFbS" id="4xgAvM0HPAk" role="2VODD2">
          <node concept="3clFbF" id="4xgAvM0HPAl" role="3cqZAp">
            <node concept="2OqwBi" id="4xgAvM0HPAm" role="3clFbG">
              <node concept="2OqwBi" id="4xgAvM0HPAn" role="2Oq$k0">
                <node concept="30H73N" id="4xgAvM0HPAo" role="2Oq$k0" />
                <node concept="3TrcHB" id="4xgAvM0HPAp" role="2OqNvi">
                  <ref role="3TsBF5" to="m2t6:3EEoqa39Ko0" resolve="num" />
                </node>
              </node>
              <node concept="21noJN" id="4xgAvM0HPAq" role="2OqNvi">
                <node concept="21nZrQ" id="4xgAvM0HPAr" role="21noJM">
                  <ref role="21nZrZ" to="m2t6:3EEoqa39K84" resolve="L" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4xgAvM0HPF_" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m2t6:3EEoqa39K7O" resolve="Num" />
      <node concept="gft3U" id="4xgAvM0HPFA" role="1lVwrX">
        <node concept="Rm8GO" id="4xgAvM0HUc7" role="gfFT$">
          <ref role="Rm8GQ" to="2kwe:7O4OqLqZ_vi" resolve="C" />
          <ref role="1Px2BO" to="2kwe:7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
      <node concept="30G5F_" id="4xgAvM0HPFC" role="30HLyM">
        <node concept="3clFbS" id="4xgAvM0HPFD" role="2VODD2">
          <node concept="3clFbF" id="4xgAvM0HPFE" role="3cqZAp">
            <node concept="2OqwBi" id="4xgAvM0HPFF" role="3clFbG">
              <node concept="2OqwBi" id="4xgAvM0HPFG" role="2Oq$k0">
                <node concept="30H73N" id="4xgAvM0HPFH" role="2Oq$k0" />
                <node concept="3TrcHB" id="4xgAvM0HPFI" role="2OqNvi">
                  <ref role="3TsBF5" to="m2t6:3EEoqa39Ko0" resolve="num" />
                </node>
              </node>
              <node concept="21noJN" id="4xgAvM0HPFJ" role="2OqNvi">
                <node concept="21nZrQ" id="4xgAvM0HPFK" role="21noJM">
                  <ref role="21nZrZ" to="m2t6:3EEoqa39K85" resolve="C" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4xgAvM0HTx6" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m2t6:3EEoqa39K7O" resolve="Num" />
      <node concept="gft3U" id="4xgAvM0HTx7" role="1lVwrX">
        <node concept="Rm8GO" id="4xgAvM0HUhj" role="gfFT$">
          <ref role="Rm8GQ" to="2kwe:7O4OqLqZ_DH" resolve="D" />
          <ref role="1Px2BO" to="2kwe:7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
      <node concept="30G5F_" id="4xgAvM0HTx9" role="30HLyM">
        <node concept="3clFbS" id="4xgAvM0HTxa" role="2VODD2">
          <node concept="3clFbF" id="4xgAvM0HTxb" role="3cqZAp">
            <node concept="2OqwBi" id="4xgAvM0HTxc" role="3clFbG">
              <node concept="2OqwBi" id="4xgAvM0HTxd" role="2Oq$k0">
                <node concept="30H73N" id="4xgAvM0HTxe" role="2Oq$k0" />
                <node concept="3TrcHB" id="4xgAvM0HTxf" role="2OqNvi">
                  <ref role="3TsBF5" to="m2t6:3EEoqa39Ko0" resolve="num" />
                </node>
              </node>
              <node concept="21noJN" id="4xgAvM0HTxg" role="2OqNvi">
                <node concept="21nZrQ" id="4xgAvM0HTxh" role="21noJM">
                  <ref role="21nZrZ" to="m2t6:3EEoqa39K86" resolve="D" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4xgAvM0HTFC" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m2t6:3EEoqa39K7O" resolve="Num" />
      <node concept="gft3U" id="4xgAvM0HTFD" role="1lVwrX">
        <node concept="Rm8GO" id="4xgAvM0HUik" role="gfFT$">
          <ref role="Rm8GQ" to="2kwe:7O4OqLqZ_Ma" resolve="M" />
          <ref role="1Px2BO" to="2kwe:7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
      <node concept="30G5F_" id="4xgAvM0HTFF" role="30HLyM">
        <node concept="3clFbS" id="4xgAvM0HTFG" role="2VODD2">
          <node concept="3clFbF" id="4xgAvM0HTFH" role="3cqZAp">
            <node concept="2OqwBi" id="4xgAvM0HTFI" role="3clFbG">
              <node concept="2OqwBi" id="4xgAvM0HTFJ" role="2Oq$k0">
                <node concept="30H73N" id="4xgAvM0HTFK" role="2Oq$k0" />
                <node concept="3TrcHB" id="4xgAvM0HTFL" role="2OqNvi">
                  <ref role="3TsBF5" to="m2t6:3EEoqa39Ko0" resolve="num" />
                </node>
              </node>
              <node concept="21noJN" id="4xgAvM0HTFM" role="2OqNvi">
                <node concept="21nZrQ" id="4xgAvM0HTFN" role="21noJM">
                  <ref role="21nZrZ" to="m2t6:3EEoqa39K87" resolve="M" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4xgAvM0DfJr">
    <property role="TrG5h" value="reduce_Name" />
    <ref role="3gUMe" to="m2t6:3EEoqa39Krt" resolve="Name" />
    <node concept="Xl_RD" id="4xgAvM0Dgou" role="13RCb5">
      <node concept="raruj" id="4xgAvM0Dgoy" role="lGtFl" />
      <node concept="17Uvod" id="4xgAvM0DgoA" role="lGtFl">
        <property role="2qtEX9" value="value" />
        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
        <node concept="3zFVjK" id="4xgAvM0DgoB" role="3zH0cK">
          <node concept="3clFbS" id="4xgAvM0DgoC" role="2VODD2">
            <node concept="3clFbF" id="4xgAvM0Dgtj" role="3cqZAp">
              <node concept="2OqwBi" id="4xgAvM0DgCv" role="3clFbG">
                <node concept="30H73N" id="4xgAvM0Dgti" role="2Oq$k0" />
                <node concept="3TrcHB" id="4xgAvM0DgSs" role="2OqNvi">
                  <ref role="3TsBF5" to="m2t6:3EEoqa39Kru" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="4xgAvM0FyLZ">
    <property role="TrG5h" value="switch_Name" />
    <node concept="3aamgX" id="4xgAvM0FyM0" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m2t6:3EEoqa39Krt" resolve="Name" />
      <node concept="j$656" id="4xgAvM0FySN" role="1lVwrX">
        <ref role="v9R2y" node="4xgAvM0DfJr" resolve="reduce_Name" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4xgAvM0F_Rh">
    <property role="TrG5h" value="reduce_ValueAsk" />
    <ref role="3gUMe" to="m2t6:3EEoqa39Ks8" resolve="ValueAsk" />
    <node concept="9aQIb" id="4xgAvM0FA5e" role="13RCb5">
      <node concept="3clFbS" id="4xgAvM0FA5f" role="9aQI4">
        <node concept="3cpWs8" id="4xgAvM0FA5i" role="3cqZAp">
          <node concept="3cpWsn" id="4xgAvM0FA5l" role="3cpWs9">
            <property role="TrG5h" value="names" />
            <node concept="_YKpA" id="4xgAvM0FA5g" role="1tU5fm">
              <node concept="3uibUv" id="4xgAvM0FA5s" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="4xgAvM0FA64" role="33vP2m">
              <node concept="Tc6Ow" id="4xgAvM0FABb" role="2ShVmc">
                <node concept="3uibUv" id="4xgAvM0FASm" role="HW$YZ">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xgAvM0FATA" role="3cqZAp" />
        <node concept="3clFbF" id="4xgAvM0FATE" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0FBzd" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0FATC" role="2Oq$k0">
              <ref role="3cqZAo" node="4xgAvM0FA5l" resolve="names" />
            </node>
            <node concept="2Ke9KJ" id="4xgAvM0FCHF" role="2OqNvi">
              <node concept="Xl_RD" id="4xgAvM0FCJR" role="25WWJ7">
                <node concept="1sPUBX" id="4xgAvM0FDsK" role="lGtFl">
                  <ref role="v9R2y" node="4xgAvM0FyLZ" resolve="switch_Name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="4xgAvM0FDbF" role="lGtFl">
            <node concept="3JmXsc" id="4xgAvM0FDbI" role="3Jn$fo">
              <node concept="3clFbS" id="4xgAvM0FDbJ" role="2VODD2">
                <node concept="3clFbF" id="4xgAvM0FDbP" role="3cqZAp">
                  <node concept="2OqwBi" id="4xgAvM0FDbK" role="3clFbG">
                    <node concept="3Tsc0h" id="4xgAvM0FDbN" role="2OqNvi">
                      <ref role="3TtcxE" to="m2t6:3EEoqa39Ks9" resolve="names" />
                    </node>
                    <node concept="30H73N" id="4xgAvM0FDbO" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xgAvM0FH$S" role="3cqZAp">
          <node concept="2ShNRf" id="4xgAvM0FH$O" role="3clFbG">
            <node concept="1pGfFk" id="4xgAvM0FHV4" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="2kwe:4xgAvM0E3Bw" resolve="ValueAsk" />
              <node concept="37vLTw" id="4xgAvM0FHVc" role="37wK5m">
                <ref role="3cqZAo" node="4xgAvM0FA5l" resolve="names" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4xgAvM0FDJi" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="4xgAvM0GGll">
    <property role="TrG5h" value="reduce_ConversionAsk" />
    <ref role="3gUMe" to="m2t6:3EEoqa39Krs" resolve="ConversionAsk" />
    <node concept="9aQIb" id="4xgAvM0GGtZ" role="13RCb5">
      <node concept="3clFbS" id="4xgAvM0GGu0" role="9aQI4">
        <node concept="3cpWs8" id="4xgAvM0GGu1" role="3cqZAp">
          <node concept="3cpWsn" id="4xgAvM0GGu2" role="3cpWs9">
            <property role="TrG5h" value="names" />
            <node concept="_YKpA" id="4xgAvM0GGu3" role="1tU5fm">
              <node concept="3uibUv" id="4xgAvM0GGu4" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="4xgAvM0GGu5" role="33vP2m">
              <node concept="Tc6Ow" id="4xgAvM0GGu6" role="2ShVmc">
                <node concept="3uibUv" id="4xgAvM0GGu7" role="HW$YZ">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xgAvM0GGu8" role="3cqZAp" />
        <node concept="3clFbF" id="4xgAvM0GGu9" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0GGua" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0GGub" role="2Oq$k0">
              <ref role="3cqZAo" node="4xgAvM0GGu2" resolve="names" />
            </node>
            <node concept="2Ke9KJ" id="4xgAvM0GGuc" role="2OqNvi">
              <node concept="Xl_RD" id="4xgAvM0GGud" role="25WWJ7">
                <node concept="1sPUBX" id="4xgAvM0GGue" role="lGtFl">
                  <ref role="v9R2y" node="4xgAvM0FyLZ" resolve="switch_Name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="4xgAvM0GGuf" role="lGtFl">
            <node concept="3JmXsc" id="4xgAvM0GGug" role="3Jn$fo">
              <node concept="3clFbS" id="4xgAvM0GGuh" role="2VODD2">
                <node concept="3clFbF" id="4xgAvM0GGui" role="3cqZAp">
                  <node concept="2OqwBi" id="4xgAvM0GGuj" role="3clFbG">
                    <node concept="3Tsc0h" id="4xgAvM0GGuk" role="2OqNvi">
                      <ref role="3TtcxE" to="m2t6:3EEoqa39KrN" resolve="names" />
                    </node>
                    <node concept="30H73N" id="4xgAvM0GGul" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xgAvM0GGum" role="3cqZAp">
          <node concept="2ShNRf" id="4xgAvM0GGun" role="3clFbG">
            <node concept="1pGfFk" id="4xgAvM0GGuo" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="2kwe:4xgAvM0FZQy" resolve="ConversionAsk" />
              <node concept="Rm8GO" id="4xgAvM0GNbn" role="37wK5m">
                <ref role="Rm8GQ" to="2kwe:emwOxtHFPc" resolve="Gold" />
                <ref role="1Px2BO" to="2kwe:emwOxtHFE5" resolve="Ore" />
                <node concept="1sPUBX" id="4xgAvM0GRwr" role="lGtFl">
                  <ref role="v9R2y" node="4xgAvM0GGPx" resolve="switch_Ore" />
                </node>
              </node>
              <node concept="37vLTw" id="4xgAvM0GGup" role="37wK5m">
                <ref role="3cqZAo" node="4xgAvM0GGu2" resolve="names" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xgAvM0GGLh" role="3cqZAp" />
      </node>
      <node concept="raruj" id="4xgAvM0GGuq" role="lGtFl" />
    </node>
  </node>
  <node concept="jVnub" id="4xgAvM0GGPx">
    <property role="TrG5h" value="switch_Ore" />
    <node concept="3aamgX" id="4xgAvM0GL9I" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m2t6:3EEoqa39Krs" resolve="ConversionAsk" />
      <node concept="gft3U" id="4xgAvM0GPZs" role="1lVwrX">
        <node concept="Rm8GO" id="4xgAvM0GQ2j" role="gfFT$">
          <ref role="Rm8GQ" to="2kwe:emwOxtHFFK" resolve="Iron" />
          <ref role="1Px2BO" to="2kwe:emwOxtHFE5" resolve="Ore" />
        </node>
      </node>
      <node concept="30G5F_" id="4xgAvM0GOD7" role="30HLyM">
        <node concept="3clFbS" id="4xgAvM0GOD8" role="2VODD2">
          <node concept="3clFbF" id="4xgAvM0GOH5" role="3cqZAp">
            <node concept="2OqwBi" id="4xgAvM0GPDA" role="3clFbG">
              <node concept="2OqwBi" id="4xgAvM0GOUI" role="2Oq$k0">
                <node concept="30H73N" id="4xgAvM0GOH4" role="2Oq$k0" />
                <node concept="3TrcHB" id="4xgAvM0GPq8" role="2OqNvi">
                  <ref role="3TsBF5" to="m2t6:3EEoqa39KrY" resolve="ore" />
                </node>
              </node>
              <node concept="21noJN" id="4xgAvM0GPTa" role="2OqNvi">
                <node concept="21nZrQ" id="4xgAvM0GPTc" role="21noJM">
                  <ref role="21nZrZ" to="m2t6:3EEoqa39Koe" resolve="Iron" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4xgAvM0GQ2v" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m2t6:3EEoqa39Krs" resolve="ConversionAsk" />
      <node concept="gft3U" id="4xgAvM0GR2B" role="1lVwrX">
        <node concept="Rm8GO" id="4xgAvM0GR5Z" role="gfFT$">
          <ref role="Rm8GQ" to="2kwe:emwOxtHFGz" resolve="Silver" />
          <ref role="1Px2BO" to="2kwe:emwOxtHFE5" resolve="Ore" />
        </node>
      </node>
      <node concept="30G5F_" id="4xgAvM0GQ9p" role="30HLyM">
        <node concept="3clFbS" id="4xgAvM0GQ9q" role="2VODD2">
          <node concept="3clFbF" id="4xgAvM0GQ9J" role="3cqZAp">
            <node concept="2OqwBi" id="4xgAvM0GQM4" role="3clFbG">
              <node concept="2OqwBi" id="4xgAvM0GQno" role="2Oq$k0">
                <node concept="30H73N" id="4xgAvM0GQ9I" role="2Oq$k0" />
                <node concept="3TrcHB" id="4xgAvM0GQ$O" role="2OqNvi">
                  <ref role="3TsBF5" to="m2t6:3EEoqa39KrY" resolve="ore" />
                </node>
              </node>
              <node concept="21noJN" id="4xgAvM0GQX$" role="2OqNvi">
                <node concept="21nZrQ" id="4xgAvM0GQXA" role="21noJM">
                  <ref role="21nZrZ" to="m2t6:3EEoqa39Kod" resolve="Silver" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4xgAvM0GR6b" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m2t6:3EEoqa39Krs" resolve="ConversionAsk" />
      <node concept="gft3U" id="4xgAvM0GR6c" role="1lVwrX">
        <node concept="Rm8GO" id="4xgAvM0GRt9" role="gfFT$">
          <ref role="Rm8GQ" to="2kwe:emwOxtHFPc" resolve="Gold" />
          <ref role="1Px2BO" to="2kwe:emwOxtHFE5" resolve="Ore" />
        </node>
      </node>
      <node concept="30G5F_" id="4xgAvM0GR6e" role="30HLyM">
        <node concept="3clFbS" id="4xgAvM0GR6f" role="2VODD2">
          <node concept="3clFbF" id="4xgAvM0GR6g" role="3cqZAp">
            <node concept="2OqwBi" id="4xgAvM0GR6h" role="3clFbG">
              <node concept="2OqwBi" id="4xgAvM0GR6i" role="2Oq$k0">
                <node concept="30H73N" id="4xgAvM0GR6j" role="2Oq$k0" />
                <node concept="3TrcHB" id="4xgAvM0GR6k" role="2OqNvi">
                  <ref role="3TsBF5" to="m2t6:3EEoqa39KrY" resolve="ore" />
                </node>
              </node>
              <node concept="21noJN" id="4xgAvM0GR6l" role="2OqNvi">
                <node concept="21nZrQ" id="4xgAvM0GR6m" role="21noJM">
                  <ref role="21nZrZ" to="m2t6:3EEoqa39Koc" resolve="Gold" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4xgAvM0H1Wd">
    <property role="TrG5h" value="reduce_ConversionDef" />
    <ref role="3gUMe" to="m2t6:3EEoqa39KqX" resolve="ConversionDef" />
    <node concept="9aQIb" id="4xgAvM0H1Xf" role="13RCb5">
      <node concept="3clFbS" id="4xgAvM0H1Xg" role="9aQI4">
        <node concept="3cpWs8" id="4xgAvM0H1Xh" role="3cqZAp">
          <node concept="3cpWsn" id="4xgAvM0H1Xi" role="3cpWs9">
            <property role="TrG5h" value="names" />
            <node concept="_YKpA" id="4xgAvM0H1Xj" role="1tU5fm">
              <node concept="3uibUv" id="4xgAvM0H1Xk" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="4xgAvM0H1Xl" role="33vP2m">
              <node concept="Tc6Ow" id="4xgAvM0H1Xm" role="2ShVmc">
                <node concept="3uibUv" id="4xgAvM0H1Xn" role="HW$YZ">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xgAvM0H1Xo" role="3cqZAp" />
        <node concept="3clFbF" id="4xgAvM0H1Xp" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0H1Xq" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0H1Xr" role="2Oq$k0">
              <ref role="3cqZAo" node="4xgAvM0H1Xi" resolve="names" />
            </node>
            <node concept="2Ke9KJ" id="4xgAvM0H1Xs" role="2OqNvi">
              <node concept="Xl_RD" id="4xgAvM0H1Xt" role="25WWJ7">
                <node concept="1sPUBX" id="4xgAvM0H1Xu" role="lGtFl">
                  <ref role="v9R2y" node="4xgAvM0FyLZ" resolve="switch_Name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="4xgAvM0H1Xv" role="lGtFl">
            <node concept="3JmXsc" id="4xgAvM0H1Xw" role="3Jn$fo">
              <node concept="3clFbS" id="4xgAvM0H1Xx" role="2VODD2">
                <node concept="3clFbF" id="4xgAvM0H1Xy" role="3cqZAp">
                  <node concept="2OqwBi" id="4xgAvM0H1Xz" role="3clFbG">
                    <node concept="30H73N" id="4xgAvM0H1X_" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4xgAvM0Hy8z" role="2OqNvi">
                      <ref role="3TtcxE" to="m2t6:3EEoqa39Kr0" resolve="amount" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xgAvM0H1XA" role="3cqZAp">
          <node concept="2ShNRf" id="4xgAvM0H1XB" role="3clFbG">
            <node concept="1pGfFk" id="4xgAvM0H1XC" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="2kwe:4xgAvM0FLm1" resolve="ConversionDef" />
              <node concept="Rm8GO" id="4xgAvM0H1XD" role="37wK5m">
                <ref role="Rm8GQ" to="2kwe:emwOxtHFPc" resolve="Gold" />
                <ref role="1Px2BO" to="2kwe:emwOxtHFE5" resolve="Ore" />
                <node concept="1sPUBX" id="4xgAvM0H1XE" role="lGtFl">
                  <ref role="v9R2y" node="4xgAvM0GGPx" resolve="switch_Ore" />
                </node>
              </node>
              <node concept="3cmrfG" id="4xgAvM0HW5O" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="4xgAvM0H1XF" role="37wK5m">
                <ref role="3cqZAo" node="4xgAvM0H1Xi" resolve="names" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xgAvM0H1XG" role="3cqZAp" />
      </node>
      <node concept="raruj" id="4xgAvM0H1XH" role="lGtFl" />
    </node>
  </node>
</model>

