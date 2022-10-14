<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5152c46f-90ed-4634-a46f-616307d46a76(GalaxyMerchant.runtime)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="5763944538902644732" name="jetbrains.mps.baseLanguage.structure.StaticMethodCallOperation" flags="ng" index="2PDubS" />
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
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
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="5232196642625575054" name="jetbrains.mps.baseLanguage.collections.structure.TailListOperation" flags="nn" index="1eb2uI">
        <child id="5232196642625575056" name="fromIndex" index="1eb2uK" />
      </concept>
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="emwOxtH4k4">
    <property role="TrG5h" value="Env" />
    <node concept="312cEg" id="emwOxtH51f" role="jymVt">
      <property role="TrG5h" value="values" />
      <node concept="3Tm6S6" id="emwOxtH4Qv" role="1B3o_S" />
      <node concept="3rvAFt" id="emwOxtH50Z" role="1tU5fm">
        <node concept="17QB3L" id="emwOxtH51b" role="3rvQeY" />
        <node concept="3uibUv" id="4xgAvM0DV38" role="3rvSg0">
          <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="emwOxtHDNS" role="jymVt">
      <property role="TrG5h" value="conversions" />
      <node concept="3Tm6S6" id="emwOxtHDHR" role="1B3o_S" />
      <node concept="3rvAFt" id="emwOxtHDT4" role="1tU5fm">
        <node concept="10OMs4" id="emwOxtHDTQ" role="3rvSg0" />
        <node concept="3uibUv" id="emwOxtHG4K" role="3rvQeY">
          <ref role="3uigEE" node="emwOxtHFE5" resolve="Ore" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="emwOxtH51z" role="jymVt" />
    <node concept="3clFbW" id="emwOxtH51T" role="jymVt">
      <node concept="3cqZAl" id="emwOxtH51V" role="3clF45" />
      <node concept="3Tm1VV" id="emwOxtH51W" role="1B3o_S" />
      <node concept="3clFbS" id="emwOxtH51X" role="3clF47">
        <node concept="3clFbF" id="emwOxtH52X" role="3cqZAp">
          <node concept="37vLTI" id="emwOxtH5zP" role="3clFbG">
            <node concept="2ShNRf" id="emwOxtH5Bf" role="37vLTx">
              <node concept="3rGOSV" id="emwOxtH63M" role="2ShVmc">
                <node concept="17QB3L" id="emwOxtH6dB" role="3rHrn6" />
                <node concept="3uibUv" id="4xgAvM0DSC4" role="3rHtpV">
                  <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="emwOxtH57j" role="37vLTJ">
              <node concept="Xjq3P" id="emwOxtH52W" role="2Oq$k0" />
              <node concept="2OwXpG" id="emwOxtH5hp" role="2OqNvi">
                <ref role="2Oxat5" node="emwOxtH51f" resolve="values" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="emwOxtHDZe" role="3cqZAp">
          <node concept="37vLTI" id="emwOxtHEGo" role="3clFbG">
            <node concept="2ShNRf" id="emwOxtHELp" role="37vLTx">
              <node concept="3rGOSV" id="emwOxtHFjc" role="2ShVmc">
                <node concept="10OMs4" id="emwOxtHF_Q" role="3rHtpV" />
                <node concept="3uibUv" id="emwOxtHGkP" role="3rHrn6">
                  <ref role="3uigEE" node="emwOxtHFE5" resolve="Ore" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="emwOxtHE67" role="37vLTJ">
              <node concept="Xjq3P" id="emwOxtHDZc" role="2Oq$k0" />
              <node concept="2OwXpG" id="emwOxtHEni" role="2OqNvi">
                <ref role="2Oxat5" node="emwOxtHDNS" resolve="conversions" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="emwOxtH4ks" role="jymVt" />
    <node concept="3clFb_" id="emwOxtH6oX" role="jymVt">
      <property role="TrG5h" value="addBinding" />
      <node concept="3clFbS" id="emwOxtH6p0" role="3clF47">
        <node concept="3clFbF" id="emwOxtH8_X" role="3cqZAp">
          <node concept="37vLTI" id="emwOxtH$FX" role="3clFbG">
            <node concept="37vLTw" id="emwOxtH_9z" role="37vLTx">
              <ref role="3cqZAo" node="emwOxtHyz0" resolve="value" />
            </node>
            <node concept="3EllGN" id="emwOxtHzaA" role="37vLTJ">
              <node concept="37vLTw" id="emwOxtHzB$" role="3ElVtu">
                <ref role="3cqZAo" node="emwOxtHyfY" resolve="name" />
              </node>
              <node concept="2OqwBi" id="emwOxtH8HU" role="3ElQJh">
                <node concept="Xjq3P" id="emwOxtH8_V" role="2Oq$k0" />
                <node concept="2OwXpG" id="emwOxtH8Y$" role="2OqNvi">
                  <ref role="2Oxat5" node="emwOxtH51f" resolve="values" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="emwOxtH6mR" role="1B3o_S" />
      <node concept="3cqZAl" id="emwOxtH6s8" role="3clF45" />
      <node concept="37vLTG" id="emwOxtHyfY" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="emwOxtHyfX" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="emwOxtHyz0" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="4xgAvM0DWOt" role="1tU5fm">
          <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="emwOxtHc3B" role="jymVt" />
    <node concept="3clFb_" id="emwOxtHJ15" role="jymVt">
      <property role="TrG5h" value="addConversion" />
      <node concept="3clFbS" id="emwOxtHJ18" role="3clF47">
        <node concept="3clFbF" id="emwOxtHJmS" role="3cqZAp">
          <node concept="37vLTI" id="emwOxtHL3N" role="3clFbG">
            <node concept="37vLTw" id="emwOxtHLjV" role="37vLTx">
              <ref role="3cqZAo" node="emwOxtHJ9D" resolve="value" />
            </node>
            <node concept="3EllGN" id="emwOxtHKiK" role="37vLTJ">
              <node concept="37vLTw" id="emwOxtHKxU" role="3ElVtu">
                <ref role="3cqZAo" node="emwOxtHJ9B" resolve="ore" />
              </node>
              <node concept="2OqwBi" id="emwOxtHJzI" role="3ElQJh">
                <node concept="Xjq3P" id="emwOxtHJmR" role="2Oq$k0" />
                <node concept="2OwXpG" id="emwOxtHJUr" role="2OqNvi">
                  <ref role="2Oxat5" node="emwOxtHDNS" resolve="conversions" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="emwOxtHISW" role="1B3o_S" />
      <node concept="3cqZAl" id="emwOxtHJ0R" role="3clF45" />
      <node concept="37vLTG" id="emwOxtHJ9B" role="3clF46">
        <property role="TrG5h" value="ore" />
        <node concept="3uibUv" id="emwOxtHJ9A" role="1tU5fm">
          <ref role="3uigEE" node="emwOxtHFE5" resolve="Ore" />
        </node>
      </node>
      <node concept="37vLTG" id="emwOxtHJ9D" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10OMs4" id="emwOxtHJjk" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="emwOxtHIL3" role="jymVt" />
    <node concept="3clFb_" id="emwOxtHdCp" role="jymVt">
      <property role="TrG5h" value="lookupName" />
      <node concept="3clFbS" id="emwOxtHdCs" role="3clF47">
        <node concept="3clFbF" id="emwOxtHBiS" role="3cqZAp">
          <node concept="3EllGN" id="emwOxtHCpq" role="3clFbG">
            <node concept="37vLTw" id="emwOxtHCqu" role="3ElVtu">
              <ref role="3cqZAo" node="emwOxtH_AT" resolve="name" />
            </node>
            <node concept="2OqwBi" id="emwOxtHBwT" role="3ElQJh">
              <node concept="Xjq3P" id="emwOxtHBiQ" role="2Oq$k0" />
              <node concept="2OwXpG" id="emwOxtHBPw" role="2OqNvi">
                <ref role="2Oxat5" node="emwOxtH51f" resolve="values" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="emwOxtHd$n" role="1B3o_S" />
      <node concept="37vLTG" id="emwOxtH_AT" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="emwOxtH_AS" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4xgAvM0DZNv" role="3clF45">
        <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
      </node>
    </node>
    <node concept="2tJIrI" id="emwOxtHGOE" role="jymVt" />
    <node concept="3clFb_" id="emwOxtHH8M" role="jymVt">
      <property role="TrG5h" value="lookupConversion" />
      <node concept="3clFbS" id="emwOxtHH8P" role="3clF47">
        <node concept="3clFbF" id="emwOxtHHpR" role="3cqZAp">
          <node concept="3EllGN" id="emwOxtHIpG" role="3clFbG">
            <node concept="37vLTw" id="emwOxtHIBP" role="3ElVtu">
              <ref role="3cqZAo" node="emwOxtHHi2" resolve="ore" />
            </node>
            <node concept="2OqwBi" id="emwOxtHHBa" role="3ElQJh">
              <node concept="Xjq3P" id="emwOxtHHpQ" role="2Oq$k0" />
              <node concept="2OwXpG" id="emwOxtHHWL" role="2OqNvi">
                <ref role="2Oxat5" node="emwOxtHDNS" resolve="conversions" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="emwOxtHH1U" role="1B3o_S" />
      <node concept="10OMs4" id="emwOxtHH8$" role="3clF45" />
      <node concept="37vLTG" id="emwOxtHHi2" role="3clF46">
        <property role="TrG5h" value="ore" />
        <node concept="3uibUv" id="emwOxtHHi1" role="1tU5fm">
          <ref role="3uigEE" node="emwOxtHFE5" resolve="Ore" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="emwOxtHc7v" role="jymVt" />
    <node concept="2YIFZL" id="4xgAvM0AZQw" role="jymVt">
      <property role="TrG5h" value="valOf" />
      <node concept="3clFbS" id="4xgAvM0AZQy" role="3clF47">
        <node concept="3KaCP$" id="4xgAvM0AZQz" role="3cqZAp">
          <node concept="37vLTw" id="4xgAvM0AZQ$" role="3KbGdf">
            <ref role="3cqZAo" node="4xgAvM0AZRk" resolve="num" />
          </node>
          <node concept="3KbdKl" id="4xgAvM0AZQ_" role="3KbHQx">
            <node concept="Rm8GO" id="4xgAvM0AZQA" role="3Kbmr1">
              <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
              <ref role="Rm8GQ" node="7O4OqLqZhTd" resolve="I" />
            </node>
            <node concept="3clFbS" id="4xgAvM0AZQB" role="3Kbo56">
              <node concept="3cpWs6" id="4xgAvM0AZQC" role="3cqZAp">
                <node concept="3cmrfG" id="4xgAvM0AZQD" role="3cqZAk">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="4xgAvM0AZQE" role="3KbHQx">
            <node concept="Rm8GO" id="4xgAvM0AZQF" role="3Kbmr1">
              <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
              <ref role="Rm8GQ" node="7O4OqLqZhXa" resolve="V" />
            </node>
            <node concept="3clFbS" id="4xgAvM0AZQG" role="3Kbo56">
              <node concept="3cpWs6" id="4xgAvM0AZQH" role="3cqZAp">
                <node concept="3cmrfG" id="4xgAvM0AZQI" role="3cqZAk">
                  <property role="3cmrfH" value="5" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="4xgAvM0AZQJ" role="3KbHQx">
            <node concept="Rm8GO" id="4xgAvM0AZQK" role="3Kbmr1">
              <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
              <ref role="Rm8GQ" node="7O4OqLqZhYD" resolve="X" />
            </node>
            <node concept="3clFbS" id="4xgAvM0AZQL" role="3Kbo56">
              <node concept="3cpWs6" id="4xgAvM0AZQM" role="3cqZAp">
                <node concept="3cmrfG" id="4xgAvM0AZQN" role="3cqZAk">
                  <property role="3cmrfH" value="10" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="4xgAvM0AZQO" role="3KbHQx">
            <node concept="Rm8GO" id="4xgAvM0AZQP" role="3Kbmr1">
              <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
              <ref role="Rm8GQ" node="7O4OqLqZ_mS" resolve="L" />
            </node>
            <node concept="3clFbS" id="4xgAvM0AZQQ" role="3Kbo56">
              <node concept="3cpWs6" id="4xgAvM0AZQR" role="3cqZAp">
                <node concept="3cmrfG" id="4xgAvM0AZQS" role="3cqZAk">
                  <property role="3cmrfH" value="50" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="4xgAvM0AZQT" role="3KbHQx">
            <node concept="Rm8GO" id="4xgAvM0AZQU" role="3Kbmr1">
              <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
              <ref role="Rm8GQ" node="7O4OqLqZ_vi" resolve="C" />
            </node>
            <node concept="3clFbS" id="4xgAvM0AZQV" role="3Kbo56">
              <node concept="3cpWs6" id="4xgAvM0AZQW" role="3cqZAp">
                <node concept="3cmrfG" id="4xgAvM0AZQX" role="3cqZAk">
                  <property role="3cmrfH" value="100" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="4xgAvM0AZQY" role="3KbHQx">
            <node concept="Rm8GO" id="4xgAvM0AZQZ" role="3Kbmr1">
              <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
              <ref role="Rm8GQ" node="7O4OqLqZ_DH" resolve="D" />
            </node>
            <node concept="3clFbS" id="4xgAvM0AZR0" role="3Kbo56">
              <node concept="3cpWs6" id="4xgAvM0AZR1" role="3cqZAp">
                <node concept="3cmrfG" id="4xgAvM0AZR2" role="3cqZAk">
                  <property role="3cmrfH" value="500" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="4xgAvM0AZR3" role="3KbHQx">
            <node concept="Rm8GO" id="4xgAvM0AZR4" role="3Kbmr1">
              <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
              <ref role="Rm8GQ" node="7O4OqLqZ_Ma" resolve="M" />
            </node>
            <node concept="3clFbS" id="4xgAvM0AZR5" role="3Kbo56">
              <node concept="3cpWs6" id="4xgAvM0AZR6" role="3cqZAp">
                <node concept="3cmrfG" id="4xgAvM0AZR7" role="3cqZAk">
                  <property role="3cmrfH" value="1000" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4xgAvM0AZR8" role="3Kb1Dw">
            <node concept="3SKdUt" id="4xgAvM0AZR9" role="3cqZAp">
              <node concept="1PaTwC" id="4xgAvM0AZRa" role="1aUNEU">
                <node concept="3oM_SD" id="4xgAvM0AZRb" role="1PaTwD">
                  <property role="3oM_SC" value="TODO:" />
                </node>
                <node concept="3oM_SD" id="4xgAvM0AZRc" role="1PaTwD">
                  <property role="3oM_SC" value="Error" />
                </node>
                <node concept="3oM_SD" id="4xgAvM0AZRd" role="1PaTwD">
                  <property role="3oM_SC" value="should" />
                </node>
                <node concept="3oM_SD" id="4xgAvM0AZRe" role="1PaTwD">
                  <property role="3oM_SC" value="never" />
                </node>
                <node concept="3oM_SD" id="4xgAvM0AZRf" role="1PaTwD">
                  <property role="3oM_SC" value="happen!" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4xgAvM0AZRg" role="3cqZAp">
              <node concept="3cmrfG" id="4xgAvM0AZRh" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="4xgAvM0AZRj" role="3clF45" />
      <node concept="37vLTG" id="4xgAvM0AZRk" role="3clF46">
        <property role="TrG5h" value="num" />
        <node concept="3uibUv" id="4xgAvM0AZRl" role="1tU5fm">
          <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0D39H" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7O4OqLqZAAJ" role="jymVt" />
    <node concept="2YIFZL" id="4xgAvM0AUsy" role="jymVt">
      <property role="TrG5h" value="shouldSub" />
      <node concept="3clFbS" id="4xgAvM0AUs$" role="3clF47">
        <node concept="3clFbF" id="4xgAvM0AUs_" role="3cqZAp">
          <node concept="3eOVzh" id="4xgAvM0AUsA" role="3clFbG">
            <node concept="1rXfSq" id="4xgAvM0AUsB" role="3uHU7B">
              <ref role="37wK5l" node="4xgAvM0AZQw" resolve="valOf" />
              <node concept="37vLTw" id="4xgAvM0AUsC" role="37wK5m">
                <ref role="3cqZAo" node="4xgAvM0AUsH" resolve="n1" />
              </node>
            </node>
            <node concept="1rXfSq" id="4xgAvM0AUsD" role="3uHU7w">
              <ref role="37wK5l" node="4xgAvM0AZQw" resolve="valOf" />
              <node concept="37vLTw" id="4xgAvM0AUsE" role="37wK5m">
                <ref role="3cqZAo" node="4xgAvM0AUsJ" resolve="n2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4xgAvM0AUsG" role="3clF45" />
      <node concept="37vLTG" id="4xgAvM0AUsH" role="3clF46">
        <property role="TrG5h" value="n1" />
        <node concept="3uibUv" id="4xgAvM0AUsI" role="1tU5fm">
          <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
      <node concept="37vLTG" id="4xgAvM0AUsJ" role="3clF46">
        <property role="TrG5h" value="n2" />
        <node concept="3uibUv" id="4xgAvM0AUsK" role="1tU5fm">
          <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4xgAvM0AUsF" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7O4OqLqZSOj" role="jymVt" />
    <node concept="2YIFZL" id="4xgAvM0AS$U" role="jymVt">
      <property role="TrG5h" value="validSub" />
      <node concept="3clFbS" id="4xgAvM0AS$W" role="3clF47">
        <node concept="3clFbF" id="4xgAvM0AS$X" role="3cqZAp">
          <node concept="22lmx$" id="4xgAvM0AS$Y" role="3clFbG">
            <node concept="1eOMI4" id="4xgAvM0AS$Z" role="3uHU7w">
              <node concept="1Wc70l" id="4xgAvM0AS_0" role="1eOMHV">
                <node concept="1eOMI4" id="4xgAvM0AS_1" role="3uHU7w">
                  <node concept="22lmx$" id="4xgAvM0AS_2" role="1eOMHV">
                    <node concept="3clFbC" id="4xgAvM0AS_3" role="3uHU7w">
                      <node concept="37vLTw" id="4xgAvM0AS_4" role="3uHU7B">
                        <ref role="3cqZAo" node="4xgAvM0AS_u" resolve="n2" />
                      </node>
                      <node concept="Rm8GO" id="4xgAvM0AS_5" role="3uHU7w">
                        <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
                        <ref role="Rm8GQ" node="7O4OqLqZ_vi" resolve="C" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="4xgAvM0AS_6" role="3uHU7B">
                      <node concept="37vLTw" id="4xgAvM0AS_7" role="3uHU7B">
                        <ref role="3cqZAo" node="4xgAvM0AS_u" resolve="n2" />
                      </node>
                      <node concept="Rm8GO" id="4xgAvM0AS_8" role="3uHU7w">
                        <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
                        <ref role="Rm8GQ" node="7O4OqLqZ_mS" resolve="L" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4xgAvM0AS_9" role="3uHU7B">
                  <node concept="37vLTw" id="4xgAvM0AS_a" role="3uHU7B">
                    <ref role="3cqZAo" node="4xgAvM0AS_s" resolve="n1" />
                  </node>
                  <node concept="Rm8GO" id="4xgAvM0AS_b" role="3uHU7w">
                    <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
                    <ref role="Rm8GQ" node="7O4OqLqZhYD" resolve="X" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="4xgAvM0AS_c" role="3uHU7B">
              <node concept="1Wc70l" id="4xgAvM0AS_d" role="1eOMHV">
                <node concept="1eOMI4" id="4xgAvM0AS_e" role="3uHU7w">
                  <node concept="22lmx$" id="4xgAvM0AS_f" role="1eOMHV">
                    <node concept="1eOMI4" id="4xgAvM0AS_g" role="3uHU7w">
                      <node concept="3clFbC" id="4xgAvM0AS_h" role="1eOMHV">
                        <node concept="37vLTw" id="4xgAvM0AS_i" role="3uHU7B">
                          <ref role="3cqZAo" node="4xgAvM0AS_u" resolve="n2" />
                        </node>
                        <node concept="Rm8GO" id="4xgAvM0AS_j" role="3uHU7w">
                          <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
                          <ref role="Rm8GQ" node="7O4OqLqZhYD" resolve="X" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="4xgAvM0AS_k" role="3uHU7B">
                      <node concept="37vLTw" id="4xgAvM0AS_l" role="3uHU7B">
                        <ref role="3cqZAo" node="4xgAvM0AS_u" resolve="n2" />
                      </node>
                      <node concept="Rm8GO" id="4xgAvM0AS_m" role="3uHU7w">
                        <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
                        <ref role="Rm8GQ" node="7O4OqLqZhXa" resolve="V" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4xgAvM0AS_n" role="3uHU7B">
                  <node concept="37vLTw" id="4xgAvM0AS_o" role="3uHU7B">
                    <ref role="3cqZAo" node="4xgAvM0AS_s" resolve="n1" />
                  </node>
                  <node concept="Rm8GO" id="4xgAvM0AS_p" role="3uHU7w">
                    <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
                    <ref role="Rm8GQ" node="7O4OqLqZhTd" resolve="I" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4xgAvM0AS_r" role="3clF45" />
      <node concept="37vLTG" id="4xgAvM0AS_s" role="3clF46">
        <property role="TrG5h" value="n1" />
        <node concept="3uibUv" id="4xgAvM0AS_t" role="1tU5fm">
          <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
      <node concept="37vLTG" id="4xgAvM0AS_u" role="3clF46">
        <property role="TrG5h" value="n2" />
        <node concept="3uibUv" id="4xgAvM0AS_v" role="1tU5fm">
          <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4xgAvM0AS_q" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7O4OqLr0f$l" role="jymVt" />
    <node concept="2YIFZL" id="4xgAvM0APj7" role="jymVt">
      <property role="TrG5h" value="validOccur" />
      <node concept="3clFbS" id="4xgAvM0APj9" role="3clF47">
        <node concept="3clFbF" id="4xgAvM0APja" role="3cqZAp">
          <node concept="22lmx$" id="4xgAvM0APjb" role="3clFbG">
            <node concept="1eOMI4" id="4xgAvM0APjc" role="3uHU7w">
              <node concept="1Wc70l" id="4xgAvM0APjd" role="1eOMHV">
                <node concept="1eOMI4" id="4xgAvM0APje" role="3uHU7w">
                  <node concept="3clFbC" id="4xgAvM0APjf" role="1eOMHV">
                    <node concept="37vLTw" id="4xgAvM0APjg" role="3uHU7B">
                      <ref role="3cqZAo" node="4xgAvM0APjR" resolve="occur" />
                    </node>
                    <node concept="3cmrfG" id="4xgAvM0APjh" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="4xgAvM0APji" role="3uHU7B">
                  <node concept="22lmx$" id="4xgAvM0APjj" role="1eOMHV">
                    <node concept="3clFbC" id="4xgAvM0APjk" role="3uHU7w">
                      <node concept="Rm8GO" id="4xgAvM0APjl" role="3uHU7w">
                        <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
                        <ref role="Rm8GQ" node="7O4OqLqZ_DH" resolve="D" />
                      </node>
                      <node concept="37vLTw" id="4xgAvM0APjm" role="3uHU7B">
                        <ref role="3cqZAo" node="4xgAvM0APjP" resolve="n" />
                      </node>
                    </node>
                    <node concept="22lmx$" id="4xgAvM0APjn" role="3uHU7B">
                      <node concept="3clFbC" id="4xgAvM0APjo" role="3uHU7B">
                        <node concept="37vLTw" id="4xgAvM0APjp" role="3uHU7B">
                          <ref role="3cqZAo" node="4xgAvM0APjP" resolve="n" />
                        </node>
                        <node concept="Rm8GO" id="4xgAvM0APjq" role="3uHU7w">
                          <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
                          <ref role="Rm8GQ" node="7O4OqLqZhXa" resolve="V" />
                        </node>
                      </node>
                      <node concept="3clFbC" id="4xgAvM0APjr" role="3uHU7w">
                        <node concept="37vLTw" id="4xgAvM0APjs" role="3uHU7B">
                          <ref role="3cqZAo" node="4xgAvM0APjP" resolve="n" />
                        </node>
                        <node concept="Rm8GO" id="4xgAvM0APjt" role="3uHU7w">
                          <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
                          <ref role="Rm8GQ" node="7O4OqLqZ_mS" resolve="L" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="4xgAvM0APju" role="3uHU7B">
              <node concept="1Wc70l" id="4xgAvM0APjv" role="1eOMHV">
                <node concept="2dkUwp" id="4xgAvM0APjw" role="3uHU7w">
                  <node concept="3cmrfG" id="4xgAvM0APjx" role="3uHU7w">
                    <property role="3cmrfH" value="3" />
                  </node>
                  <node concept="37vLTw" id="4xgAvM0APjy" role="3uHU7B">
                    <ref role="3cqZAo" node="4xgAvM0APjR" resolve="occur" />
                  </node>
                </node>
                <node concept="1eOMI4" id="4xgAvM0APjz" role="3uHU7B">
                  <node concept="22lmx$" id="4xgAvM0APj$" role="1eOMHV">
                    <node concept="22lmx$" id="4xgAvM0APj_" role="3uHU7B">
                      <node concept="3clFbC" id="4xgAvM0APjA" role="3uHU7w">
                        <node concept="37vLTw" id="4xgAvM0APjB" role="3uHU7B">
                          <ref role="3cqZAo" node="4xgAvM0APjP" resolve="n" />
                        </node>
                        <node concept="Rm8GO" id="4xgAvM0APjC" role="3uHU7w">
                          <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
                          <ref role="Rm8GQ" node="7O4OqLqZ_vi" resolve="C" />
                        </node>
                      </node>
                      <node concept="22lmx$" id="4xgAvM0APjD" role="3uHU7B">
                        <node concept="3clFbC" id="4xgAvM0APjE" role="3uHU7B">
                          <node concept="37vLTw" id="4xgAvM0APjF" role="3uHU7B">
                            <ref role="3cqZAo" node="4xgAvM0APjP" resolve="n" />
                          </node>
                          <node concept="Rm8GO" id="4xgAvM0APjG" role="3uHU7w">
                            <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
                            <ref role="Rm8GQ" node="7O4OqLqZhTd" resolve="I" />
                          </node>
                        </node>
                        <node concept="3clFbC" id="4xgAvM0APjH" role="3uHU7w">
                          <node concept="37vLTw" id="4xgAvM0APjI" role="3uHU7B">
                            <ref role="3cqZAo" node="4xgAvM0APjP" resolve="n" />
                          </node>
                          <node concept="Rm8GO" id="4xgAvM0APjJ" role="3uHU7w">
                            <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
                            <ref role="Rm8GQ" node="7O4OqLqZhYD" resolve="X" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="4xgAvM0APjK" role="3uHU7w">
                      <node concept="Rm8GO" id="4xgAvM0APjL" role="3uHU7w">
                        <ref role="1Px2BO" node="7O4OqLqZhRZ" resolve="Number" />
                        <ref role="Rm8GQ" node="7O4OqLqZ_Ma" resolve="M" />
                      </node>
                      <node concept="37vLTw" id="4xgAvM0APjM" role="3uHU7B">
                        <ref role="3cqZAo" node="4xgAvM0APjP" resolve="n" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4xgAvM0APjO" role="3clF45" />
      <node concept="37vLTG" id="4xgAvM0APjP" role="3clF46">
        <property role="TrG5h" value="n" />
        <node concept="3uibUv" id="4xgAvM0APjQ" role="1tU5fm">
          <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
      <node concept="37vLTG" id="4xgAvM0APjR" role="3clF46">
        <property role="TrG5h" value="occur" />
        <node concept="10Oyi0" id="4xgAvM0APjS" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="4xgAvM0APjN" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7O4OqLr0SKW" role="jymVt" />
    <node concept="312cEu" id="7O4OqLr0UzK" role="jymVt">
      <property role="TrG5h" value="Pair" />
      <node concept="312cEg" id="7O4OqLr0Vak" role="jymVt">
        <property role="TrG5h" value="a" />
        <node concept="3Tm1VV" id="7O4OqLr0V8H" role="1B3o_S" />
        <node concept="16syzq" id="7O4OqLr0Va7" role="1tU5fm">
          <ref role="16sUi3" node="7O4OqLr0UVQ" resolve="A" />
        </node>
      </node>
      <node concept="312cEg" id="7O4OqLr0Vee" role="jymVt">
        <property role="TrG5h" value="b" />
        <node concept="3Tm1VV" id="7O4OqLr0VcB" role="1B3o_S" />
        <node concept="16syzq" id="7O4OqLr0Ve1" role="1tU5fm">
          <ref role="16sUi3" node="7O4OqLr0UXh" resolve="B" />
        </node>
      </node>
      <node concept="3clFbW" id="7O4OqLr0Vh1" role="jymVt">
        <node concept="3cqZAl" id="7O4OqLr0Vh3" role="3clF45" />
        <node concept="3Tm1VV" id="7O4OqLr0Vi$" role="1B3o_S" />
        <node concept="3clFbS" id="7O4OqLr0Vh5" role="3clF47">
          <node concept="3clFbF" id="7O4OqLr0VoC" role="3cqZAp">
            <node concept="37vLTI" id="7O4OqLr0VNc" role="3clFbG">
              <node concept="37vLTw" id="7O4OqLr0VQQ" role="37vLTx">
                <ref role="3cqZAo" node="7O4OqLr0ViT" resolve="a" />
              </node>
              <node concept="2OqwBi" id="7O4OqLr0Vvq" role="37vLTJ">
                <node concept="Xjq3P" id="7O4OqLr0VoB" role="2Oq$k0" />
                <node concept="2OwXpG" id="7O4OqLr0VFc" role="2OqNvi">
                  <ref role="2Oxat5" node="7O4OqLr0Vak" resolve="a" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7O4OqLr0X6D" role="3cqZAp">
            <node concept="37vLTI" id="7O4OqLr0X_q" role="3clFbG">
              <node concept="37vLTw" id="7O4OqLr0XE$" role="37vLTx">
                <ref role="3cqZAo" node="7O4OqLr0Vjf" resolve="b" />
              </node>
              <node concept="2OqwBi" id="7O4OqLr0Xeg" role="37vLTJ">
                <node concept="Xjq3P" id="7O4OqLr0X6B" role="2Oq$k0" />
                <node concept="2OwXpG" id="7O4OqLr0XrS" role="2OqNvi">
                  <ref role="2Oxat5" node="7O4OqLr0Vee" resolve="b" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7O4OqLr0ViT" role="3clF46">
          <property role="TrG5h" value="a" />
          <node concept="16syzq" id="7O4OqLr0ViS" role="1tU5fm">
            <ref role="16sUi3" node="7O4OqLr0UVQ" resolve="A" />
          </node>
        </node>
        <node concept="37vLTG" id="7O4OqLr0Vjf" role="3clF46">
          <property role="TrG5h" value="b" />
          <node concept="16syzq" id="7O4OqLr0Vj_" role="1tU5fm">
            <ref role="16sUi3" node="7O4OqLr0UXh" resolve="B" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7O4OqLr0Tua" role="1B3o_S" />
      <node concept="16euLQ" id="7O4OqLr0UVQ" role="16eVyc">
        <property role="TrG5h" value="A" />
      </node>
      <node concept="16euLQ" id="7O4OqLr0UXh" role="16eVyc">
        <property role="TrG5h" value="B" />
      </node>
    </node>
    <node concept="2tJIrI" id="7O4OqLqZUk3" role="jymVt" />
    <node concept="2YIFZL" id="4xgAvM0ALH9" role="jymVt">
      <property role="TrG5h" value="consumeNums" />
      <node concept="3clFbS" id="4xgAvM0ALHb" role="3clF47">
        <node concept="3clFbJ" id="4xgAvM0ALHc" role="3cqZAp">
          <node concept="3clFbC" id="4xgAvM0ALHd" role="3clFbw">
            <node concept="37vLTw" id="4xgAvM0ALHe" role="3uHU7w">
              <ref role="3cqZAo" node="4xgAvM0ALHJ" resolve="arg" />
            </node>
            <node concept="2OqwBi" id="4xgAvM0ALHf" role="3uHU7B">
              <node concept="37vLTw" id="4xgAvM0ALHg" role="2Oq$k0">
                <ref role="3cqZAo" node="4xgAvM0ALHG" resolve="nums" />
              </node>
              <node concept="1uHKPH" id="4xgAvM0ALHh" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbS" id="4xgAvM0ALHi" role="3clFbx">
            <node concept="3cpWs6" id="4xgAvM0ALHj" role="3cqZAp">
              <node concept="1rXfSq" id="4xgAvM0ALHk" role="3cqZAk">
                <ref role="37wK5l" node="4xgAvM0ALH9" resolve="consumeNums" />
                <node concept="2OqwBi" id="4xgAvM0ALHl" role="37wK5m">
                  <node concept="37vLTw" id="4xgAvM0ALHm" role="2Oq$k0">
                    <ref role="3cqZAo" node="4xgAvM0ALHG" resolve="nums" />
                  </node>
                  <node concept="1eb2uI" id="4xgAvM0ALHn" role="2OqNvi">
                    <node concept="3cmrfG" id="4xgAvM0ALHo" role="1eb2uK">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4xgAvM0ALHp" role="37wK5m">
                  <ref role="3cqZAo" node="4xgAvM0ALHJ" resolve="arg" />
                </node>
                <node concept="3cpWs3" id="4xgAvM0ALHq" role="37wK5m">
                  <node concept="3cmrfG" id="4xgAvM0ALHr" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="4xgAvM0ALHs" role="3uHU7B">
                    <ref role="3cqZAo" node="4xgAvM0ALHL" resolve="occur" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4xgAvM0ALHt" role="9aQIa">
            <node concept="3clFbS" id="4xgAvM0ALHu" role="9aQI4">
              <node concept="3cpWs6" id="4xgAvM0ALHv" role="3cqZAp">
                <node concept="2ShNRf" id="4xgAvM0ALHw" role="3cqZAk">
                  <node concept="1pGfFk" id="4xgAvM0ALHx" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="7O4OqLr0Vh1" resolve="Pair" />
                    <node concept="37vLTw" id="4xgAvM0ALHy" role="37wK5m">
                      <ref role="3cqZAo" node="4xgAvM0ALHL" resolve="occur" />
                    </node>
                    <node concept="37vLTw" id="4xgAvM0ALHz" role="37wK5m">
                      <ref role="3cqZAo" node="4xgAvM0ALHG" resolve="nums" />
                    </node>
                    <node concept="3uibUv" id="4xgAvM0ALH$" role="1pMfVU">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                    <node concept="_YKpA" id="4xgAvM0ALH_" role="1pMfVU">
                      <node concept="3uibUv" id="4xgAvM0ALHA" role="_ZDj9">
                        <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4xgAvM0ALHC" role="3clF45">
        <ref role="3uigEE" node="7O4OqLr0UzK" resolve="Pair" />
        <node concept="3uibUv" id="4xgAvM0ALHD" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
        <node concept="_YKpA" id="4xgAvM0ALHE" role="11_B2D">
          <node concept="3uibUv" id="4xgAvM0ALHF" role="_ZDj9">
            <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4xgAvM0ALHG" role="3clF46">
        <property role="TrG5h" value="nums" />
        <node concept="_YKpA" id="4xgAvM0ALHH" role="1tU5fm">
          <node concept="3uibUv" id="4xgAvM0ALHI" role="_ZDj9">
            <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4xgAvM0ALHJ" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="3uibUv" id="4xgAvM0ALHK" role="1tU5fm">
          <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
      <node concept="37vLTG" id="4xgAvM0ALHL" role="3clF46">
        <property role="TrG5h" value="occur" />
        <node concept="3uibUv" id="4xgAvM0ALHM" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4xgAvM0ALHB" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7O4OqLr0XHh" role="jymVt" />
    <node concept="2YIFZL" id="4xgAvM0AI$U" role="jymVt">
      <property role="TrG5h" value="sum" />
      <node concept="3clFbS" id="4xgAvM0AI$W" role="3clF47">
        <node concept="3clFbJ" id="4xgAvM0AI$X" role="3cqZAp">
          <node concept="3clFbS" id="4xgAvM0AI$Y" role="3clFbx">
            <node concept="3cpWs6" id="4xgAvM0AI$Z" role="3cqZAp">
              <node concept="3cmrfG" id="4xgAvM0AI_0" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4xgAvM0AI_1" role="3clFbw">
            <node concept="2OqwBi" id="4xgAvM0AI_2" role="3uHU7B">
              <node concept="37vLTw" id="4xgAvM0AI_3" role="2Oq$k0">
                <ref role="3cqZAo" node="4xgAvM0AIBA" resolve="nums" />
              </node>
              <node concept="34oBXx" id="4xgAvM0AI_4" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="4xgAvM0AI_5" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="9aQIb" id="4xgAvM0AI_6" role="9aQIa">
            <node concept="3clFbS" id="4xgAvM0AI_7" role="9aQI4">
              <node concept="3cpWs8" id="4xgAvM0AI_8" role="3cqZAp">
                <node concept="3cpWsn" id="4xgAvM0AI_9" role="3cpWs9">
                  <property role="TrG5h" value="head" />
                  <node concept="3uibUv" id="4xgAvM0AI_a" role="1tU5fm">
                    <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
                  </node>
                  <node concept="2OqwBi" id="4xgAvM0AI_b" role="33vP2m">
                    <node concept="37vLTw" id="4xgAvM0AI_c" role="2Oq$k0">
                      <ref role="3cqZAo" node="4xgAvM0AIBA" resolve="nums" />
                    </node>
                    <node concept="1uHKPH" id="4xgAvM0AI_d" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4xgAvM0AI_e" role="3cqZAp">
                <node concept="3cpWsn" id="4xgAvM0AI_f" role="3cpWs9">
                  <property role="TrG5h" value="occurNumsPair" />
                  <node concept="3uibUv" id="4xgAvM0AI_g" role="1tU5fm">
                    <ref role="3uigEE" node="7O4OqLr0UzK" resolve="Pair" />
                    <node concept="3uibUv" id="4xgAvM0AI_h" role="11_B2D">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                    <node concept="_YKpA" id="4xgAvM0AI_i" role="11_B2D">
                      <node concept="3uibUv" id="4xgAvM0AI_j" role="_ZDj9">
                        <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="4xgAvM0AI_k" role="33vP2m">
                    <ref role="37wK5l" node="4xgAvM0ALH9" resolve="consumeNums" />
                    <node concept="2OqwBi" id="4xgAvM0AI_l" role="37wK5m">
                      <node concept="37vLTw" id="4xgAvM0AI_m" role="2Oq$k0">
                        <ref role="3cqZAo" node="4xgAvM0AIBA" resolve="nums" />
                      </node>
                      <node concept="1eb2uI" id="4xgAvM0AI_n" role="2OqNvi">
                        <node concept="3cmrfG" id="4xgAvM0AI_o" role="1eb2uK">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4xgAvM0AI_p" role="37wK5m">
                      <ref role="3cqZAo" node="4xgAvM0AI_9" resolve="head" />
                    </node>
                    <node concept="3cmrfG" id="4xgAvM0AI_q" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4xgAvM0AI_r" role="3cqZAp">
                <node concept="3clFbS" id="4xgAvM0AI_s" role="3clFbx">
                  <node concept="3SKdUt" id="4xgAvM0AI_t" role="3cqZAp">
                    <node concept="1PaTwC" id="4xgAvM0AI_u" role="1aUNEU">
                      <node concept="3oM_SD" id="4xgAvM0AI_v" role="1PaTwD">
                        <property role="3oM_SC" value="corner" />
                      </node>
                      <node concept="3oM_SD" id="4xgAvM0AI_w" role="1PaTwD">
                        <property role="3oM_SC" value="case:" />
                      </node>
                      <node concept="3oM_SD" id="4xgAvM0AI_x" role="1PaTwD">
                        <property role="3oM_SC" value="nothing" />
                      </node>
                      <node concept="3oM_SD" id="4xgAvM0AI_y" role="1PaTwD">
                        <property role="3oM_SC" value="left" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4xgAvM0AI_z" role="3cqZAp">
                    <node concept="3clFbS" id="4xgAvM0AI_$" role="3clFbx">
                      <node concept="3SKdUt" id="4xgAvM0AI__" role="3cqZAp">
                        <node concept="1PaTwC" id="4xgAvM0AI_A" role="1aUNEU">
                          <node concept="3oM_SD" id="4xgAvM0AI_B" role="1PaTwD">
                            <property role="3oM_SC" value="TODO:Error" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="4xgAvM0AI_C" role="3cqZAp">
                        <node concept="3cmrfG" id="4xgAvM0AI_D" role="3cqZAk">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="4xgAvM0AI_E" role="3clFbw">
                      <node concept="1eOMI4" id="4xgAvM0AI_F" role="3fr31v">
                        <node concept="1rXfSq" id="4xgAvM0AI_G" role="1eOMHV">
                          <ref role="37wK5l" node="4xgAvM0APj7" resolve="validOccur" />
                          <node concept="37vLTw" id="4xgAvM0AI_H" role="37wK5m">
                            <ref role="3cqZAo" node="4xgAvM0AI_9" resolve="head" />
                          </node>
                          <node concept="2OqwBi" id="4xgAvM0AI_I" role="37wK5m">
                            <node concept="37vLTw" id="4xgAvM0AI_J" role="2Oq$k0">
                              <ref role="3cqZAo" node="4xgAvM0AI_f" resolve="occurNumsPair" />
                            </node>
                            <node concept="2OwXpG" id="4xgAvM0AI_K" role="2OqNvi">
                              <ref role="2Oxat5" node="7O4OqLr0Vak" resolve="a" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="4xgAvM0AI_L" role="3cqZAp">
                    <node concept="17qRlL" id="4xgAvM0AI_M" role="3cqZAk">
                      <node concept="1rXfSq" id="4xgAvM0AI_N" role="3uHU7w">
                        <ref role="37wK5l" node="4xgAvM0AZQw" resolve="valOf" />
                        <node concept="37vLTw" id="4xgAvM0AI_O" role="37wK5m">
                          <ref role="3cqZAo" node="4xgAvM0AI_9" resolve="head" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4xgAvM0AI_P" role="3uHU7B">
                        <node concept="37vLTw" id="4xgAvM0AI_Q" role="2Oq$k0">
                          <ref role="3cqZAo" node="4xgAvM0AI_f" resolve="occurNumsPair" />
                        </node>
                        <node concept="2OwXpG" id="4xgAvM0AI_R" role="2OqNvi">
                          <ref role="2Oxat5" node="7O4OqLr0Vak" resolve="a" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4xgAvM0AI_S" role="3clFbw">
                  <node concept="3cmrfG" id="4xgAvM0AI_T" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="4xgAvM0AI_U" role="3uHU7B">
                    <node concept="2OqwBi" id="4xgAvM0AI_V" role="2Oq$k0">
                      <node concept="37vLTw" id="4xgAvM0AI_W" role="2Oq$k0">
                        <ref role="3cqZAo" node="4xgAvM0AI_f" resolve="occurNumsPair" />
                      </node>
                      <node concept="2OwXpG" id="4xgAvM0AI_X" role="2OqNvi">
                        <ref role="2Oxat5" node="7O4OqLr0Vee" resolve="b" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="4xgAvM0AI_Y" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4xgAvM0AI_Z" role="3cqZAp">
                <node concept="3cpWsn" id="4xgAvM0AIA0" role="3cpWs9">
                  <property role="TrG5h" value="next" />
                  <node concept="3uibUv" id="4xgAvM0AIA1" role="1tU5fm">
                    <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
                  </node>
                  <node concept="2OqwBi" id="4xgAvM0AIA2" role="33vP2m">
                    <node concept="2OqwBi" id="4xgAvM0AIA3" role="2Oq$k0">
                      <node concept="37vLTw" id="4xgAvM0AIA4" role="2Oq$k0">
                        <ref role="3cqZAo" node="4xgAvM0AI_f" resolve="occurNumsPair" />
                      </node>
                      <node concept="2OwXpG" id="4xgAvM0AIA5" role="2OqNvi">
                        <ref role="2Oxat5" node="7O4OqLr0Vee" resolve="b" />
                      </node>
                    </node>
                    <node concept="1uHKPH" id="4xgAvM0AIA6" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4xgAvM0AIA7" role="3cqZAp">
                <node concept="3clFbS" id="4xgAvM0AIA8" role="3clFbx">
                  <node concept="3SKdUt" id="4xgAvM0AIA9" role="3cqZAp">
                    <node concept="1PaTwC" id="4xgAvM0AIAa" role="1aUNEU">
                      <node concept="3oM_SD" id="4xgAvM0AIAb" role="1PaTwD">
                        <property role="3oM_SC" value="TODO" />
                      </node>
                      <node concept="3oM_SD" id="4xgAvM0AIAc" role="1PaTwD">
                        <property role="3oM_SC" value="Error" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="4xgAvM0AIAd" role="3cqZAp">
                    <node concept="3cmrfG" id="4xgAvM0AIAe" role="3cqZAk">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="4xgAvM0AIAf" role="3clFbw">
                  <node concept="1eOMI4" id="4xgAvM0AIAg" role="3fr31v">
                    <node concept="1rXfSq" id="4xgAvM0AIAh" role="1eOMHV">
                      <ref role="37wK5l" node="4xgAvM0APj7" resolve="validOccur" />
                      <node concept="37vLTw" id="4xgAvM0AIAi" role="37wK5m">
                        <ref role="3cqZAo" node="4xgAvM0AI_9" resolve="head" />
                      </node>
                      <node concept="2OqwBi" id="4xgAvM0AIAj" role="37wK5m">
                        <node concept="37vLTw" id="4xgAvM0AIAk" role="2Oq$k0">
                          <ref role="3cqZAo" node="4xgAvM0AI_f" resolve="occurNumsPair" />
                        </node>
                        <node concept="2OwXpG" id="4xgAvM0AIAl" role="2OqNvi">
                          <ref role="2Oxat5" node="7O4OqLr0Vak" resolve="a" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4xgAvM0AIAm" role="3cqZAp">
                <node concept="3clFbS" id="4xgAvM0AIAn" role="3clFbx">
                  <node concept="3clFbJ" id="4xgAvM0AIAo" role="3cqZAp">
                    <node concept="3clFbS" id="4xgAvM0AIAp" role="3clFbx">
                      <node concept="3cpWs8" id="4xgAvM0AIAq" role="3cqZAp">
                        <node concept="3cpWsn" id="4xgAvM0AIAr" role="3cpWs9">
                          <property role="TrG5h" value="occurNumsPair2" />
                          <node concept="3uibUv" id="4xgAvM0AIAs" role="1tU5fm">
                            <ref role="3uigEE" node="7O4OqLr0UzK" resolve="Pair" />
                            <node concept="3uibUv" id="4xgAvM0AIAt" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                            </node>
                            <node concept="_YKpA" id="4xgAvM0AIAu" role="11_B2D">
                              <node concept="3uibUv" id="4xgAvM0AIAv" role="_ZDj9">
                                <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
                              </node>
                            </node>
                          </node>
                          <node concept="1rXfSq" id="4xgAvM0AIAw" role="33vP2m">
                            <ref role="37wK5l" node="4xgAvM0ALH9" resolve="consumeNums" />
                            <node concept="2OqwBi" id="4xgAvM0AIAx" role="37wK5m">
                              <node concept="2OqwBi" id="4xgAvM0AIAy" role="2Oq$k0">
                                <node concept="37vLTw" id="4xgAvM0AIAz" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4xgAvM0AI_f" resolve="occurNumsPair" />
                                </node>
                                <node concept="2OwXpG" id="4xgAvM0AIA$" role="2OqNvi">
                                  <ref role="2Oxat5" node="7O4OqLr0Vee" resolve="b" />
                                </node>
                              </node>
                              <node concept="1eb2uI" id="4xgAvM0AIA_" role="2OqNvi">
                                <node concept="3cmrfG" id="4xgAvM0AIAA" role="1eb2uK">
                                  <property role="3cmrfH" value="1" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="4xgAvM0AIAB" role="37wK5m">
                              <ref role="3cqZAo" node="4xgAvM0AIA0" resolve="next" />
                            </node>
                            <node concept="3cmrfG" id="4xgAvM0AIAC" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="4xgAvM0AIAD" role="3cqZAp">
                        <node concept="3clFbS" id="4xgAvM0AIAE" role="3clFbx">
                          <node concept="3cpWs6" id="4xgAvM0AIAF" role="3cqZAp">
                            <node concept="3cpWs3" id="4xgAvM0AIAG" role="3cqZAk">
                              <node concept="1rXfSq" id="4xgAvM0AIAH" role="3uHU7w">
                                <ref role="37wK5l" node="4xgAvM0AI$U" resolve="sum" />
                                <node concept="2OqwBi" id="4xgAvM0AIAI" role="37wK5m">
                                  <node concept="37vLTw" id="4xgAvM0AIAJ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4xgAvM0AIAr" resolve="occurNumsPair2" />
                                  </node>
                                  <node concept="2OwXpG" id="4xgAvM0AIAK" role="2OqNvi">
                                    <ref role="2Oxat5" node="7O4OqLr0Vee" resolve="b" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1eOMI4" id="4xgAvM0AIAL" role="3uHU7B">
                                <node concept="3cpWsd" id="4xgAvM0AIAM" role="1eOMHV">
                                  <node concept="1rXfSq" id="4xgAvM0AIAN" role="3uHU7w">
                                    <ref role="37wK5l" node="4xgAvM0AZQw" resolve="valOf" />
                                    <node concept="37vLTw" id="4xgAvM0AIAO" role="37wK5m">
                                      <ref role="3cqZAo" node="4xgAvM0AI_9" resolve="head" />
                                    </node>
                                  </node>
                                  <node concept="1rXfSq" id="4xgAvM0AIAP" role="3uHU7B">
                                    <ref role="37wK5l" node="4xgAvM0AZQw" resolve="valOf" />
                                    <node concept="37vLTw" id="4xgAvM0AIAQ" role="37wK5m">
                                      <ref role="3cqZAo" node="4xgAvM0AIA0" resolve="next" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="4xgAvM0AIAR" role="3clFbw">
                          <node concept="3cmrfG" id="4xgAvM0AIAS" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="4xgAvM0AIAT" role="3uHU7B">
                            <node concept="37vLTw" id="4xgAvM0AIAU" role="2Oq$k0">
                              <ref role="3cqZAo" node="4xgAvM0AIAr" resolve="occurNumsPair2" />
                            </node>
                            <node concept="2OwXpG" id="4xgAvM0AIAV" role="2OqNvi">
                              <ref role="2Oxat5" node="7O4OqLr0Vak" resolve="a" />
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="4xgAvM0AIAW" role="9aQIa">
                          <node concept="3clFbS" id="4xgAvM0AIAX" role="9aQI4">
                            <node concept="3SKdUt" id="4xgAvM0AIAY" role="3cqZAp">
                              <node concept="1PaTwC" id="4xgAvM0AIAZ" role="1aUNEU">
                                <node concept="3oM_SD" id="4xgAvM0AIB0" role="1PaTwD">
                                  <property role="3oM_SC" value="TODO:Error" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4xgAvM0AIB1" role="3cqZAp">
                              <node concept="3cmrfG" id="4xgAvM0AIB2" role="3cqZAk">
                                <property role="3cmrfH" value="0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1Wc70l" id="4xgAvM0AIB3" role="3clFbw">
                      <node concept="3clFbC" id="4xgAvM0AIB4" role="3uHU7w">
                        <node concept="3cmrfG" id="4xgAvM0AIB5" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="2OqwBi" id="4xgAvM0AIB6" role="3uHU7B">
                          <node concept="37vLTw" id="4xgAvM0AIB7" role="2Oq$k0">
                            <ref role="3cqZAo" node="4xgAvM0AI_f" resolve="occurNumsPair" />
                          </node>
                          <node concept="2OwXpG" id="4xgAvM0AIB8" role="2OqNvi">
                            <ref role="2Oxat5" node="7O4OqLr0Vak" resolve="a" />
                          </node>
                        </node>
                      </node>
                      <node concept="1rXfSq" id="4xgAvM0AIB9" role="3uHU7B">
                        <ref role="37wK5l" node="4xgAvM0AS$U" resolve="validSub" />
                        <node concept="37vLTw" id="4xgAvM0AIBa" role="37wK5m">
                          <ref role="3cqZAo" node="4xgAvM0AI_9" resolve="head" />
                        </node>
                        <node concept="37vLTw" id="4xgAvM0AIBb" role="37wK5m">
                          <ref role="3cqZAo" node="4xgAvM0AIA0" resolve="next" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="4xgAvM0AIBc" role="3clFbw">
                  <ref role="37wK5l" node="4xgAvM0AUsy" resolve="shouldSub" />
                  <node concept="37vLTw" id="4xgAvM0AIBd" role="37wK5m">
                    <ref role="3cqZAo" node="4xgAvM0AI_9" resolve="head" />
                  </node>
                  <node concept="37vLTw" id="4xgAvM0AIBe" role="37wK5m">
                    <ref role="3cqZAo" node="4xgAvM0AIA0" resolve="next" />
                  </node>
                </node>
                <node concept="9aQIb" id="4xgAvM0AIBf" role="9aQIa">
                  <node concept="3clFbS" id="4xgAvM0AIBg" role="9aQI4">
                    <node concept="3cpWs6" id="4xgAvM0AIBh" role="3cqZAp">
                      <node concept="3cpWs3" id="4xgAvM0AIBi" role="3cqZAk">
                        <node concept="1rXfSq" id="4xgAvM0AIBj" role="3uHU7w">
                          <ref role="37wK5l" node="4xgAvM0AI$U" resolve="sum" />
                          <node concept="2OqwBi" id="4xgAvM0AIBk" role="37wK5m">
                            <node concept="37vLTw" id="4xgAvM0AIBl" role="2Oq$k0">
                              <ref role="3cqZAo" node="4xgAvM0AI_f" resolve="occurNumsPair" />
                            </node>
                            <node concept="2OwXpG" id="4xgAvM0AIBm" role="2OqNvi">
                              <ref role="2Oxat5" node="7O4OqLr0Vee" resolve="b" />
                            </node>
                          </node>
                        </node>
                        <node concept="1eOMI4" id="4xgAvM0AIBn" role="3uHU7B">
                          <node concept="17qRlL" id="4xgAvM0AIBo" role="1eOMHV">
                            <node concept="2OqwBi" id="4xgAvM0AIBp" role="3uHU7w">
                              <node concept="37vLTw" id="4xgAvM0AIBq" role="2Oq$k0">
                                <ref role="3cqZAo" node="4xgAvM0AI_f" resolve="occurNumsPair" />
                              </node>
                              <node concept="2OwXpG" id="4xgAvM0AIBr" role="2OqNvi">
                                <ref role="2Oxat5" node="7O4OqLr0Vak" resolve="a" />
                              </node>
                            </node>
                            <node concept="1rXfSq" id="4xgAvM0AIBs" role="3uHU7B">
                              <ref role="37wK5l" node="4xgAvM0AZQw" resolve="valOf" />
                              <node concept="37vLTw" id="4xgAvM0AIBt" role="37wK5m">
                                <ref role="3cqZAo" node="4xgAvM0AI_9" resolve="head" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="4xgAvM0AIBu" role="3cqZAp">
                <node concept="1PaTwC" id="4xgAvM0AIBv" role="1aUNEU">
                  <node concept="3oM_SD" id="4xgAvM0AIBw" role="1PaTwD">
                    <property role="3oM_SC" value="DEAD" />
                  </node>
                  <node concept="3oM_SD" id="4xgAvM0AIBx" role="1PaTwD">
                    <property role="3oM_SC" value="CODE" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4xgAvM0AIBy" role="3cqZAp">
                <node concept="3cmrfG" id="4xgAvM0AIBz" role="3cqZAk">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="4xgAvM0AIB_" role="3clF45" />
      <node concept="37vLTG" id="4xgAvM0AIBA" role="3clF46">
        <property role="TrG5h" value="nums" />
        <node concept="_YKpA" id="4xgAvM0AIBB" role="1tU5fm">
          <node concept="3uibUv" id="4xgAvM0AIBC" role="_ZDj9">
            <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0AIB$" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7O4OqLqZhbT" role="jymVt" />
    <node concept="3Tm1VV" id="emwOxtH4k5" role="1B3o_S" />
    <node concept="2tJIrI" id="7O4OqLr0VSJ" role="jymVt" />
  </node>
  <node concept="Qs71p" id="emwOxtHFE5">
    <property role="TrG5h" value="Ore" />
    <node concept="3Tm1VV" id="emwOxtHFE6" role="1B3o_S" />
    <node concept="QsSxf" id="emwOxtHFFK" role="Qtgdg">
      <property role="TrG5h" value="Iron" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" />
    </node>
    <node concept="QsSxf" id="emwOxtHFGz" role="Qtgdg">
      <property role="TrG5h" value="Silver" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" />
    </node>
    <node concept="QsSxf" id="emwOxtHFPc" role="Qtgdg">
      <property role="TrG5h" value="Gold" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" />
    </node>
  </node>
  <node concept="Qs71p" id="7O4OqLqZhRZ">
    <property role="TrG5h" value="Number" />
    <node concept="3Tm1VV" id="7O4OqLqZhS0" role="1B3o_S" />
    <node concept="QsSxf" id="7O4OqLqZhTd" role="Qtgdg">
      <property role="TrG5h" value="I" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" />
    </node>
    <node concept="QsSxf" id="7O4OqLqZhXa" role="Qtgdg">
      <property role="TrG5h" value="V" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" />
    </node>
    <node concept="QsSxf" id="7O4OqLqZhYD" role="Qtgdg">
      <property role="TrG5h" value="X" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" />
    </node>
    <node concept="QsSxf" id="7O4OqLqZ_mS" role="Qtgdg">
      <property role="TrG5h" value="L" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" />
    </node>
    <node concept="QsSxf" id="7O4OqLqZ_vi" role="Qtgdg">
      <property role="TrG5h" value="C" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" />
    </node>
    <node concept="QsSxf" id="7O4OqLqZ_DH" role="Qtgdg">
      <property role="TrG5h" value="D" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" />
    </node>
    <node concept="QsSxf" id="7O4OqLqZ_Ma" role="Qtgdg">
      <property role="TrG5h" value="M" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" />
    </node>
  </node>
  <node concept="312cEu" id="4xgAvM0CSJi">
    <property role="TrG5h" value="Assign" />
    <node concept="2tJIrI" id="4xgAvM0CUcS" role="jymVt" />
    <node concept="312cEg" id="4xgAvM0CUfE" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="4xgAvM0CUeB" role="1B3o_S" />
      <node concept="17QB3L" id="4xgAvM0CUfw" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4xgAvM0CUi7" role="jymVt">
      <property role="TrG5h" value="value" />
      <node concept="3Tm6S6" id="4xgAvM0CUh4" role="1B3o_S" />
      <node concept="3uibUv" id="4xgAvM0E1jO" role="1tU5fm">
        <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0CUdK" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0CUkW" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3clFbS" id="4xgAvM0CUkZ" role="3clF47">
        <node concept="3cpWs6" id="4xgAvM0CUne" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0CUv2" role="3cqZAk">
            <node concept="Xjq3P" id="4xgAvM0CUo$" role="2Oq$k0" />
            <node concept="2OwXpG" id="4xgAvM0CUBG" role="2OqNvi">
              <ref role="2Oxat5" node="4xgAvM0CUfE" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0CUjT" role="1B3o_S" />
      <node concept="17QB3L" id="4xgAvM0CUkM" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4xgAvM0CUj2" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0CUGP" role="jymVt">
      <property role="TrG5h" value="getNum" />
      <node concept="3clFbS" id="4xgAvM0CUGS" role="3clF47">
        <node concept="3cpWs6" id="4xgAvM0CUKk" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0CUNJ" role="3cqZAk">
            <node concept="Xjq3P" id="4xgAvM0CULE" role="2Oq$k0" />
            <node concept="2OwXpG" id="4xgAvM0CV3Q" role="2OqNvi">
              <ref role="2Oxat5" node="4xgAvM0CUi7" resolve="value" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0CUFd" role="1B3o_S" />
      <node concept="3uibUv" id="4xgAvM0E1F5" role="3clF45">
        <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0CX65" role="jymVt" />
    <node concept="3clFbW" id="4xgAvM0CXa7" role="jymVt">
      <node concept="3cqZAl" id="4xgAvM0CXa9" role="3clF45" />
      <node concept="3Tm1VV" id="4xgAvM0CXaa" role="1B3o_S" />
      <node concept="3clFbS" id="4xgAvM0CXab" role="3clF47">
        <node concept="3clFbF" id="4xgAvM0CXfW" role="3cqZAp">
          <node concept="37vLTI" id="4xgAvM0CXGg" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0CXJb" role="37vLTx">
              <ref role="3cqZAo" node="4xgAvM0CXck" resolve="name" />
            </node>
            <node concept="2OqwBi" id="4xgAvM0CXki" role="37vLTJ">
              <node concept="Xjq3P" id="4xgAvM0CXfV" role="2Oq$k0" />
              <node concept="2OwXpG" id="4xgAvM0CXsM" role="2OqNvi">
                <ref role="2Oxat5" node="4xgAvM0CUfE" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xgAvM0E1PM" role="3cqZAp">
          <node concept="37vLTI" id="4xgAvM0E2DB" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0E2HB" role="37vLTx">
              <ref role="3cqZAo" node="4xgAvM0CXcL" resolve="num" />
            </node>
            <node concept="2OqwBi" id="4xgAvM0E27B" role="37vLTJ">
              <node concept="Xjq3P" id="4xgAvM0E1PK" role="2Oq$k0" />
              <node concept="2OwXpG" id="4xgAvM0E2mY" role="2OqNvi">
                <ref role="2Oxat5" node="4xgAvM0CUi7" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4xgAvM0CXck" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4xgAvM0CXcj" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4xgAvM0CXcL" role="3clF46">
        <property role="TrG5h" value="num" />
        <node concept="3uibUv" id="4xgAvM0CXd6" role="1tU5fm">
          <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0CUDL" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0CSKx" role="jymVt">
      <property role="TrG5h" value="accept" />
      <node concept="3clFbS" id="4xgAvM0CSK$" role="3clF47">
        <node concept="3clFbF" id="4xgAvM0CTri" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0CTvV" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0CTrh" role="2Oq$k0">
              <ref role="3cqZAo" node="4xgAvM0CTod" resolve="visitor" />
            </node>
            <node concept="liA8E" id="4xgAvM0CU36" role="2OqNvi">
              <ref role="37wK5l" node="4xgAvM0CTOg" resolve="visit" />
              <node concept="Xjq3P" id="4xgAvM0CUa_" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0CSJT" role="1B3o_S" />
      <node concept="3cqZAl" id="4xgAvM0CSKR" role="3clF45" />
      <node concept="37vLTG" id="4xgAvM0CTod" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="4xgAvM0CToc" role="1tU5fm">
          <ref role="3uigEE" node="4xgAvM0CSLa" resolve="EvalVisitor" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4xgAvM0CSJj" role="1B3o_S" />
    <node concept="3uibUv" id="4xgAvM0DnMC" role="EKbjA">
      <ref role="3uigEE" node="4xgAvM0Dnsy" resolve="Visitable" />
    </node>
  </node>
  <node concept="312cEu" id="4xgAvM0CSLa">
    <property role="TrG5h" value="EvalVisitor" />
    <node concept="312cEg" id="4xgAvM0CSM5" role="jymVt">
      <property role="TrG5h" value="env" />
      <node concept="3Tm6S6" id="4xgAvM0CSLR" role="1B3o_S" />
      <node concept="3uibUv" id="4xgAvM0CSLU" role="1tU5fm">
        <ref role="3uigEE" node="emwOxtH4k4" resolve="Env" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0CTnn" role="jymVt" />
    <node concept="3clFbW" id="4xgAvM0CSMu" role="jymVt">
      <node concept="3cqZAl" id="4xgAvM0CSMw" role="3clF45" />
      <node concept="3Tm1VV" id="4xgAvM0CSMO" role="1B3o_S" />
      <node concept="3clFbS" id="4xgAvM0CSMy" role="3clF47">
        <node concept="3clFbF" id="4xgAvM0CSOJ" role="3cqZAp">
          <node concept="37vLTI" id="4xgAvM0CT6I" role="3clFbG">
            <node concept="2ShNRf" id="4xgAvM0CT9u" role="37vLTx">
              <node concept="1pGfFk" id="4xgAvM0CTlj" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="emwOxtH51T" resolve="Env" />
              </node>
            </node>
            <node concept="2OqwBi" id="4xgAvM0CST5" role="37vLTJ">
              <node concept="Xjq3P" id="4xgAvM0CSOI" role="2Oq$k0" />
              <node concept="2OwXpG" id="4xgAvM0CT0M" role="2OqNvi">
                <ref role="2Oxat5" node="4xgAvM0CSM5" resolve="env" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0CTLS" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0CTOg" role="jymVt">
      <property role="TrG5h" value="visit" />
      <node concept="3clFbS" id="4xgAvM0CTOj" role="3clF47">
        <node concept="3clFbF" id="4xgAvM0CVaM" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0CVrB" role="3clFbG">
            <node concept="2OqwBi" id="4xgAvM0CVgv" role="2Oq$k0">
              <node concept="Xjq3P" id="4xgAvM0CVaK" role="2Oq$k0" />
              <node concept="2OwXpG" id="4xgAvM0CVlm" role="2OqNvi">
                <ref role="2Oxat5" node="4xgAvM0CSM5" resolve="env" />
              </node>
            </node>
            <node concept="liA8E" id="4xgAvM0CVXX" role="2OqNvi">
              <ref role="37wK5l" node="emwOxtH6oX" resolve="addBinding" />
              <node concept="2OqwBi" id="4xgAvM0CWa$" role="37wK5m">
                <node concept="37vLTw" id="4xgAvM0CW2_" role="2Oq$k0">
                  <ref role="3cqZAo" node="4xgAvM0CTQ5" resolve="assgn" />
                </node>
                <node concept="liA8E" id="4xgAvM0CWmC" role="2OqNvi">
                  <ref role="37wK5l" node="4xgAvM0CUkW" resolve="getName" />
                </node>
              </node>
              <node concept="2OqwBi" id="4xgAvM0CWzH" role="37wK5m">
                <node concept="37vLTw" id="4xgAvM0CWtJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4xgAvM0CTQ5" resolve="assgn" />
                </node>
                <node concept="liA8E" id="4xgAvM0CWLg" role="2OqNvi">
                  <ref role="37wK5l" node="4xgAvM0CUGP" resolve="getNum" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0CTNp" role="1B3o_S" />
      <node concept="3cqZAl" id="4xgAvM0CTPg" role="3clF45" />
      <node concept="37vLTG" id="4xgAvM0CTQ5" role="3clF46">
        <property role="TrG5h" value="assgn" />
        <node concept="3uibUv" id="4xgAvM0CTQ4" role="1tU5fm">
          <ref role="3uigEE" node="4xgAvM0CSJi" resolve="Assign" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0CTWO" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0DMVD" role="jymVt">
      <property role="TrG5h" value="visit" />
      <node concept="3clFbS" id="4xgAvM0DMVG" role="3clF47">
        <node concept="3cpWs8" id="4xgAvM0E6Es" role="3cqZAp">
          <node concept="3cpWsn" id="4xgAvM0E6Ev" role="3cpWs9">
            <property role="TrG5h" value="nums" />
            <node concept="_YKpA" id="4xgAvM0E6Eo" role="1tU5fm">
              <node concept="3uibUv" id="4xgAvM0E6Iy" role="_ZDj9">
                <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
              </node>
            </node>
            <node concept="2ShNRf" id="4xgAvM0E6VE" role="33vP2m">
              <node concept="Tc6Ow" id="4xgAvM0E7Ez" role="2ShVmc">
                <node concept="3uibUv" id="4xgAvM0E878" role="HW$YZ">
                  <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
                </node>
                <node concept="2OqwBi" id="4xgAvM0Ea3l" role="3lWHg$">
                  <node concept="2OqwBi" id="4xgAvM0E950" role="2Oq$k0">
                    <node concept="37vLTw" id="4xgAvM0E8Vn" role="2Oq$k0">
                      <ref role="3cqZAo" node="4xgAvM0DN9N" resolve="vlAsk" />
                    </node>
                    <node concept="liA8E" id="4xgAvM0E9kL" role="2OqNvi">
                      <ref role="37wK5l" node="4xgAvM0E50s" resolve="getNames" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="4xgAvM0Eb96" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4xgAvM0E5X6" role="3cqZAp">
          <node concept="2GrKxI" id="4xgAvM0E5X8" role="2Gsz3X">
            <property role="TrG5h" value="name" />
          </node>
          <node concept="2OqwBi" id="4xgAvM0E6ir" role="2GsD0m">
            <node concept="37vLTw" id="4xgAvM0E6aM" role="2Oq$k0">
              <ref role="3cqZAo" node="4xgAvM0DN9N" resolve="vlAsk" />
            </node>
            <node concept="liA8E" id="4xgAvM0E6wA" role="2OqNvi">
              <ref role="37wK5l" node="4xgAvM0E50s" resolve="getNames" />
            </node>
          </node>
          <node concept="3clFbS" id="4xgAvM0E5Xc" role="2LFqv$">
            <node concept="3clFbF" id="4xgAvM0EbgC" role="3cqZAp">
              <node concept="2OqwBi" id="4xgAvM0EbQN" role="3clFbG">
                <node concept="37vLTw" id="4xgAvM0EbgB" role="2Oq$k0">
                  <ref role="3cqZAo" node="4xgAvM0E6Ev" resolve="nums" />
                </node>
                <node concept="2Ke9KJ" id="4xgAvM0EdMJ" role="2OqNvi">
                  <node concept="2OqwBi" id="4xgAvM0Eero" role="25WWJ7">
                    <node concept="37vLTw" id="4xgAvM0EegU" role="2Oq$k0">
                      <ref role="3cqZAo" node="4xgAvM0CSM5" resolve="env" />
                    </node>
                    <node concept="liA8E" id="4xgAvM0Ef11" role="2OqNvi">
                      <ref role="37wK5l" node="emwOxtHdCp" resolve="lookupName" />
                      <node concept="2GrUjf" id="4xgAvM0Efir" role="37wK5m">
                        <ref role="2Gs0qQ" node="4xgAvM0E5X8" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4xgAvM0EfM5" role="3cqZAp">
          <node concept="3cpWsn" id="4xgAvM0EfM8" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="10Oyi0" id="4xgAvM0EfM3" role="1tU5fm" />
            <node concept="2OqwBi" id="4xgAvM0Eh12" role="33vP2m">
              <node concept="37vLTw" id="4xgAvM0EgFK" role="2Oq$k0">
                <ref role="3cqZAo" node="4xgAvM0CSM5" resolve="env" />
              </node>
              <node concept="2PDubS" id="4xgAvM0EhlB" role="2OqNvi">
                <ref role="37wK5l" node="4xgAvM0AI$U" resolve="sum" />
                <node concept="37vLTw" id="4xgAvM0EhBs" role="37wK5m">
                  <ref role="3cqZAo" node="4xgAvM0E6Ev" resolve="nums" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xgAvM0Eidx" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0EiB0" role="3clFbG">
            <node concept="10M0yZ" id="4xgAvM0EidH" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="4xgAvM0EjmZ" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="4xgAvM0EoLB" role="37wK5m">
                <node concept="37vLTw" id="4xgAvM0Ep4Z" role="3uHU7w">
                  <ref role="3cqZAo" node="4xgAvM0EfM8" resolve="value" />
                </node>
                <node concept="Xl_RD" id="4xgAvM0EjBI" role="3uHU7B">
                  <property role="Xl_RC" value="Total value is " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xgAvM0EhKe" role="3cqZAp" />
        <node concept="3cpWs6" id="4xgAvM0DNg6" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="4xgAvM0DMRI" role="1B3o_S" />
      <node concept="3cqZAl" id="4xgAvM0DMU9" role="3clF45" />
      <node concept="37vLTG" id="4xgAvM0DN9N" role="3clF46">
        <property role="TrG5h" value="vlAsk" />
        <node concept="3uibUv" id="4xgAvM0DN9M" role="1tU5fm">
          <ref role="3uigEE" node="4xgAvM0DMZ_" resolve="ValueAsk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0DMNX" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0DJ1_" role="jymVt">
      <property role="TrG5h" value="visit" />
      <node concept="3clFbS" id="4xgAvM0DJ1C" role="3clF47">
        <node concept="3cpWs8" id="4xgAvM0FUsC" role="3cqZAp">
          <node concept="3cpWsn" id="4xgAvM0FUsD" role="3cpWs9">
            <property role="TrG5h" value="nums" />
            <node concept="_YKpA" id="4xgAvM0FUsE" role="1tU5fm">
              <node concept="3uibUv" id="4xgAvM0FUsF" role="_ZDj9">
                <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
              </node>
            </node>
            <node concept="2ShNRf" id="4xgAvM0FUsG" role="33vP2m">
              <node concept="Tc6Ow" id="4xgAvM0FUsH" role="2ShVmc">
                <node concept="3uibUv" id="4xgAvM0FUsI" role="HW$YZ">
                  <ref role="3uigEE" node="7O4OqLqZhRZ" resolve="Number" />
                </node>
                <node concept="2OqwBi" id="4xgAvM0FUsJ" role="3lWHg$">
                  <node concept="2OqwBi" id="4xgAvM0FUsK" role="2Oq$k0">
                    <node concept="37vLTw" id="4xgAvM0FVt8" role="2Oq$k0">
                      <ref role="3cqZAo" node="4xgAvM0DJ5e" resolve="cnvAsk" />
                    </node>
                    <node concept="liA8E" id="4xgAvM0G5ue" role="2OqNvi">
                      <ref role="37wK5l" node="4xgAvM0FZRo" resolve="getNames" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="4xgAvM0FUsN" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4xgAvM0FUsO" role="3cqZAp">
          <node concept="2GrKxI" id="4xgAvM0FUsP" role="2Gsz3X">
            <property role="TrG5h" value="name" />
          </node>
          <node concept="2OqwBi" id="4xgAvM0FUsQ" role="2GsD0m">
            <node concept="liA8E" id="4xgAvM0FUsS" role="2OqNvi">
              <ref role="37wK5l" node="4xgAvM0FZRo" resolve="getNames" />
            </node>
            <node concept="37vLTw" id="4xgAvM0G6T$" role="2Oq$k0">
              <ref role="3cqZAo" node="4xgAvM0DJ5e" resolve="cnvAsk" />
            </node>
          </node>
          <node concept="3clFbS" id="4xgAvM0FUsT" role="2LFqv$">
            <node concept="3clFbF" id="4xgAvM0FUsU" role="3cqZAp">
              <node concept="2OqwBi" id="4xgAvM0FUsV" role="3clFbG">
                <node concept="37vLTw" id="4xgAvM0FUsW" role="2Oq$k0">
                  <ref role="3cqZAo" node="4xgAvM0FUsD" resolve="nums" />
                </node>
                <node concept="2Ke9KJ" id="4xgAvM0FUsX" role="2OqNvi">
                  <node concept="2OqwBi" id="4xgAvM0FUsY" role="25WWJ7">
                    <node concept="37vLTw" id="4xgAvM0FUsZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="4xgAvM0CSM5" resolve="env" />
                    </node>
                    <node concept="liA8E" id="4xgAvM0FUt0" role="2OqNvi">
                      <ref role="37wK5l" node="emwOxtHdCp" resolve="lookupName" />
                      <node concept="2GrUjf" id="4xgAvM0FUt1" role="37wK5m">
                        <ref role="2Gs0qQ" node="4xgAvM0FUsP" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4xgAvM0G7ID" role="3cqZAp">
          <node concept="3cpWsn" id="4xgAvM0G7IE" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="10Oyi0" id="4xgAvM0G7IF" role="1tU5fm" />
            <node concept="2OqwBi" id="4xgAvM0G7IG" role="33vP2m">
              <node concept="37vLTw" id="4xgAvM0G7IH" role="2Oq$k0">
                <ref role="3cqZAo" node="4xgAvM0CSM5" resolve="env" />
              </node>
              <node concept="2PDubS" id="4xgAvM0G7II" role="2OqNvi">
                <ref role="37wK5l" node="4xgAvM0AI$U" resolve="sum" />
                <node concept="37vLTw" id="4xgAvM0G7IJ" role="37wK5m">
                  <ref role="3cqZAo" node="4xgAvM0FUsD" resolve="nums" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xgAvM0FTYG" role="3cqZAp" />
        <node concept="3cpWs8" id="4xgAvM0Gxhw" role="3cqZAp">
          <node concept="3cpWsn" id="4xgAvM0Gxhz" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10OMs4" id="4xgAvM0Gxhu" role="1tU5fm" />
            <node concept="17qRlL" id="4xgAvM0Gm$b" role="33vP2m">
              <node concept="2OqwBi" id="4xgAvM0Gb2Z" role="3uHU7B">
                <node concept="37vLTw" id="4xgAvM0Ga$P" role="2Oq$k0">
                  <ref role="3cqZAo" node="4xgAvM0CSM5" resolve="env" />
                </node>
                <node concept="liA8E" id="4xgAvM0Gcde" role="2OqNvi">
                  <ref role="37wK5l" node="emwOxtHH8M" resolve="lookupConversion" />
                  <node concept="2OqwBi" id="4xgAvM0Gdo6" role="37wK5m">
                    <node concept="37vLTw" id="4xgAvM0GcF2" role="2Oq$k0">
                      <ref role="3cqZAo" node="4xgAvM0DJ5e" resolve="cnvAsk" />
                    </node>
                    <node concept="liA8E" id="4xgAvM0Gez$" role="2OqNvi">
                      <ref role="37wK5l" node="4xgAvM0FZR6" resolve="getOre" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="4xgAvM0Gqd4" role="3uHU7w">
                <node concept="10QFUN" id="4xgAvM0Gqd1" role="1eOMHV">
                  <node concept="10OMs4" id="4xgAvM0GqEp" role="10QFUM" />
                  <node concept="37vLTw" id="4xgAvM0GrgE" role="10QFUP">
                    <ref role="3cqZAo" node="4xgAvM0G7IE" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xgAvM0GwLh" role="3cqZAp" />
        <node concept="3SKdUt" id="4xgAvM0GERq" role="3cqZAp">
          <node concept="1PaTwC" id="4xgAvM0GERr" role="1aUNEU">
            <node concept="3oM_SD" id="4xgAvM0GGeU" role="1PaTwD">
              <property role="3oM_SC" value="TODO:" />
            </node>
            <node concept="3oM_SD" id="4xgAvM0GGeV" role="1PaTwD">
              <property role="3oM_SC" value="Better" />
            </node>
            <node concept="3oM_SD" id="4xgAvM0GGeW" role="1PaTwD">
              <property role="3oM_SC" value="message" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xgAvM0Gt0Q" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0Guu3" role="3clFbG">
            <node concept="10M0yZ" id="4xgAvM0Gt12" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="4xgAvM0GvhY" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(float)" resolve="println" />
              <node concept="37vLTw" id="4xgAvM0G_RE" role="37wK5m">
                <ref role="3cqZAo" node="4xgAvM0Gxhz" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0DIXY" role="1B3o_S" />
      <node concept="3cqZAl" id="4xgAvM0DJ1t" role="3clF45" />
      <node concept="37vLTG" id="4xgAvM0DJ5e" role="3clF46">
        <property role="TrG5h" value="cnvAsk" />
        <node concept="3uibUv" id="4xgAvM0DJ5d" role="1tU5fm">
          <ref role="3uigEE" node="4xgAvM0DIe5" resolve="ConversionAsk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0DMt3" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0DM_M" role="jymVt">
      <property role="TrG5h" value="visit" />
      <node concept="3clFbS" id="4xgAvM0DM_P" role="3clF47">
        <node concept="3cpWs6" id="4xgAvM0DMIK" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="4xgAvM0DMxm" role="1B3o_S" />
      <node concept="3cqZAl" id="4xgAvM0DM_E" role="3clF45" />
      <node concept="37vLTG" id="4xgAvM0DMD_" role="3clF46">
        <property role="TrG5h" value="cnvDef" />
        <node concept="3uibUv" id="4xgAvM0DMD$" role="1tU5fm">
          <ref role="3uigEE" node="4xgAvM0DMg_" resolve="ConversionDef" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4xgAvM0CSLb" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="4xgAvM0Dnsy">
    <property role="TrG5h" value="Visitable" />
    <node concept="2tJIrI" id="4xgAvM0DnsO" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0Dnt$" role="jymVt">
      <property role="TrG5h" value="accept" />
      <node concept="3clFbS" id="4xgAvM0DntB" role="3clF47" />
      <node concept="3Tm1VV" id="4xgAvM0DntC" role="1B3o_S" />
      <node concept="3cqZAl" id="4xgAvM0Dntp" role="3clF45" />
      <node concept="37vLTG" id="4xgAvM0DntV" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="4xgAvM0DntU" role="1tU5fm">
          <ref role="3uigEE" node="4xgAvM0CSLa" resolve="EvalVisitor" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4xgAvM0Dnsz" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4xgAvM0DIe5">
    <property role="TrG5h" value="ConversionAsk" />
    <node concept="2tJIrI" id="4xgAvM0DINe" role="jymVt" />
    <node concept="312cEg" id="4xgAvM0FZQn" role="jymVt">
      <property role="TrG5h" value="ore" />
      <node concept="3Tm6S6" id="4xgAvM0FZQo" role="1B3o_S" />
      <node concept="3uibUv" id="4xgAvM0FZQp" role="1tU5fm">
        <ref role="3uigEE" node="emwOxtHFE5" resolve="Ore" />
      </node>
    </node>
    <node concept="312cEg" id="4xgAvM0FZQt" role="jymVt">
      <property role="TrG5h" value="names" />
      <node concept="3Tm6S6" id="4xgAvM0FZQu" role="1B3o_S" />
      <node concept="_YKpA" id="4xgAvM0FZQv" role="1tU5fm">
        <node concept="3uibUv" id="4xgAvM0FZQw" role="_ZDj9">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0FZQx" role="jymVt" />
    <node concept="3clFbW" id="4xgAvM0FZQy" role="jymVt">
      <node concept="3cqZAl" id="4xgAvM0FZQz" role="3clF45" />
      <node concept="3Tm1VV" id="4xgAvM0FZQ$" role="1B3o_S" />
      <node concept="3clFbS" id="4xgAvM0FZQ_" role="3clF47">
        <node concept="3clFbF" id="4xgAvM0FZQA" role="3cqZAp">
          <node concept="37vLTI" id="4xgAvM0FZQB" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0FZQC" role="37vLTx">
              <ref role="3cqZAo" node="4xgAvM0FZQS" resolve="ore" />
            </node>
            <node concept="2OqwBi" id="4xgAvM0FZQD" role="37vLTJ">
              <node concept="Xjq3P" id="4xgAvM0FZQE" role="2Oq$k0" />
              <node concept="2OwXpG" id="4xgAvM0FZQF" role="2OqNvi">
                <ref role="2Oxat5" node="4xgAvM0FZQn" resolve="ore" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xgAvM0FZQM" role="3cqZAp">
          <node concept="37vLTI" id="4xgAvM0FZQN" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0FZQO" role="37vLTx">
              <ref role="3cqZAo" node="4xgAvM0FZQW" resolve="names" />
            </node>
            <node concept="2OqwBi" id="4xgAvM0FZQP" role="37vLTJ">
              <node concept="Xjq3P" id="4xgAvM0FZQQ" role="2Oq$k0" />
              <node concept="2OwXpG" id="4xgAvM0FZQR" role="2OqNvi">
                <ref role="2Oxat5" node="4xgAvM0FZQt" resolve="names" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4xgAvM0FZQS" role="3clF46">
        <property role="TrG5h" value="ore" />
        <node concept="3uibUv" id="4xgAvM0FZQT" role="1tU5fm">
          <ref role="3uigEE" node="emwOxtHFE5" resolve="Ore" />
        </node>
      </node>
      <node concept="37vLTG" id="4xgAvM0FZQW" role="3clF46">
        <property role="TrG5h" value="names" />
        <node concept="_YKpA" id="4xgAvM0FZQX" role="1tU5fm">
          <node concept="3uibUv" id="4xgAvM0FZQY" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0FZR5" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0FZR6" role="jymVt">
      <property role="TrG5h" value="getOre" />
      <node concept="3clFbS" id="4xgAvM0FZR7" role="3clF47">
        <node concept="3cpWs6" id="4xgAvM0FZR8" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0FZR9" role="3cqZAk">
            <node concept="Xjq3P" id="4xgAvM0FZRa" role="2Oq$k0" />
            <node concept="2OwXpG" id="4xgAvM0FZRb" role="2OqNvi">
              <ref role="2Oxat5" node="4xgAvM0FZQn" resolve="ore" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0FZRc" role="1B3o_S" />
      <node concept="3uibUv" id="4xgAvM0FZRd" role="3clF45">
        <ref role="3uigEE" node="emwOxtHFE5" resolve="Ore" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0FZRe" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0FZRo" role="jymVt">
      <property role="TrG5h" value="getNames" />
      <node concept="3clFbS" id="4xgAvM0FZRp" role="3clF47">
        <node concept="3cpWs6" id="4xgAvM0FZRq" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0FZRr" role="3cqZAk">
            <node concept="Xjq3P" id="4xgAvM0FZRs" role="2Oq$k0" />
            <node concept="2OwXpG" id="4xgAvM0FZRt" role="2OqNvi">
              <ref role="2Oxat5" node="4xgAvM0FZQt" resolve="names" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0FZRu" role="1B3o_S" />
      <node concept="_YKpA" id="4xgAvM0FZRv" role="3clF45">
        <node concept="3uibUv" id="4xgAvM0FZRw" role="_ZDj9">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0G0zC" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0FZRx" role="jymVt">
      <property role="TrG5h" value="accept" />
      <node concept="3clFbS" id="4xgAvM0FZRy" role="3clF47">
        <node concept="3clFbF" id="4xgAvM0FZRz" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0FZR$" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0FZR_" role="2Oq$k0">
              <ref role="3cqZAo" node="4xgAvM0FZRE" resolve="visitor" />
            </node>
            <node concept="liA8E" id="4xgAvM0FZRA" role="2OqNvi">
              <ref role="37wK5l" node="4xgAvM0DJ1_" resolve="visit" />
              <node concept="Xjq3P" id="4xgAvM0FZRB" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0FZRC" role="1B3o_S" />
      <node concept="3cqZAl" id="4xgAvM0FZRD" role="3clF45" />
      <node concept="37vLTG" id="4xgAvM0FZRE" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="4xgAvM0FZRF" role="1tU5fm">
          <ref role="3uigEE" node="4xgAvM0CSLa" resolve="EvalVisitor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0G3oU" role="jymVt" />
    <node concept="3Tm1VV" id="4xgAvM0DIe6" role="1B3o_S" />
    <node concept="3uibUv" id="4xgAvM0DIf1" role="EKbjA">
      <ref role="3uigEE" node="4xgAvM0Dnsy" resolve="Visitable" />
    </node>
  </node>
  <node concept="312cEu" id="4xgAvM0DMg_">
    <property role="TrG5h" value="ConversionDef" />
    <node concept="2tJIrI" id="4xgAvM0FZQm" role="jymVt" />
    <node concept="312cEg" id="4xgAvM0FL2H" role="jymVt">
      <property role="TrG5h" value="ore" />
      <node concept="3Tm6S6" id="4xgAvM0FKZ_" role="1B3o_S" />
      <node concept="3uibUv" id="4xgAvM0FL1D" role="1tU5fm">
        <ref role="3uigEE" node="emwOxtHFE5" resolve="Ore" />
      </node>
    </node>
    <node concept="312cEg" id="4xgAvM0FLag" role="jymVt">
      <property role="TrG5h" value="credits" />
      <node concept="3Tm6S6" id="4xgAvM0FL6O" role="1B3o_S" />
      <node concept="10Oyi0" id="4xgAvM0FL9c" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4xgAvM0FLhQ" role="jymVt">
      <property role="TrG5h" value="amount" />
      <node concept="3Tm6S6" id="4xgAvM0FLen" role="1B3o_S" />
      <node concept="_YKpA" id="4xgAvM0FLgJ" role="1tU5fm">
        <node concept="3uibUv" id="4xgAvM0FLhO" role="_ZDj9">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0FKXz" role="jymVt" />
    <node concept="3clFbW" id="4xgAvM0FLm1" role="jymVt">
      <node concept="3cqZAl" id="4xgAvM0FLm3" role="3clF45" />
      <node concept="3Tm1VV" id="4xgAvM0FLm4" role="1B3o_S" />
      <node concept="3clFbS" id="4xgAvM0FLm5" role="3clF47">
        <node concept="3clFbF" id="4xgAvM0FLvp" role="3cqZAp">
          <node concept="37vLTI" id="4xgAvM0FM42" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0FMcU" role="37vLTx">
              <ref role="3cqZAo" node="4xgAvM0FLof" resolve="ore" />
            </node>
            <node concept="2OqwBi" id="4xgAvM0FL_X" role="37vLTJ">
              <node concept="Xjq3P" id="4xgAvM0FLvo" role="2Oq$k0" />
              <node concept="2OwXpG" id="4xgAvM0FLLz" role="2OqNvi">
                <ref role="2Oxat5" node="4xgAvM0FL2H" resolve="ore" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xgAvM0FMnU" role="3cqZAp">
          <node concept="37vLTI" id="4xgAvM0FNnF" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0FNs2" role="37vLTx">
              <ref role="3cqZAo" node="4xgAvM0FLpy" resolve="credits" />
            </node>
            <node concept="2OqwBi" id="4xgAvM0FMsy" role="37vLTJ">
              <node concept="Xjq3P" id="4xgAvM0FMnS" role="2Oq$k0" />
              <node concept="2OwXpG" id="4xgAvM0FMHe" role="2OqNvi">
                <ref role="2Oxat5" node="4xgAvM0FLag" resolve="credits" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xgAvM0FN$r" role="3cqZAp">
          <node concept="37vLTI" id="4xgAvM0FOtt" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0FOA2" role="37vLTx">
              <ref role="3cqZAo" node="4xgAvM0FLru" resolve="amount" />
            </node>
            <node concept="2OqwBi" id="4xgAvM0FNFA" role="37vLTJ">
              <node concept="Xjq3P" id="4xgAvM0FN$p" role="2Oq$k0" />
              <node concept="2OwXpG" id="4xgAvM0FNN_" role="2OqNvi">
                <ref role="2Oxat5" node="4xgAvM0FLhQ" resolve="amount" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4xgAvM0FLof" role="3clF46">
        <property role="TrG5h" value="ore" />
        <node concept="3uibUv" id="4xgAvM0FLoe" role="1tU5fm">
          <ref role="3uigEE" node="emwOxtHFE5" resolve="Ore" />
        </node>
      </node>
      <node concept="37vLTG" id="4xgAvM0FLpy" role="3clF46">
        <property role="TrG5h" value="credits" />
        <node concept="10Oyi0" id="4xgAvM0FLqR" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4xgAvM0FLru" role="3clF46">
        <property role="TrG5h" value="amount" />
        <node concept="_YKpA" id="4xgAvM0FLsN" role="1tU5fm">
          <node concept="3uibUv" id="4xgAvM0FLt8" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0FLjZ" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0FOW8" role="jymVt">
      <property role="TrG5h" value="getOre" />
      <node concept="3clFbS" id="4xgAvM0FOWb" role="3clF47">
        <node concept="3cpWs6" id="4xgAvM0FP2x" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0FPmy" role="3cqZAk">
            <node concept="Xjq3P" id="4xgAvM0FP3V" role="2Oq$k0" />
            <node concept="2OwXpG" id="4xgAvM0FPIk" role="2OqNvi">
              <ref role="2Oxat5" node="4xgAvM0FL2H" resolve="ore" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0FOQU" role="1B3o_S" />
      <node concept="3uibUv" id="4xgAvM0FOV6" role="3clF45">
        <ref role="3uigEE" node="emwOxtHFE5" resolve="Ore" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0FOMK" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0FPX0" role="jymVt">
      <property role="TrG5h" value="getCredits" />
      <node concept="3clFbS" id="4xgAvM0FPX3" role="3clF47">
        <node concept="3cpWs6" id="4xgAvM0FQdC" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0FQ$2" role="3cqZAk">
            <node concept="Xjq3P" id="4xgAvM0FQf2" role="2Oq$k0" />
            <node concept="2OwXpG" id="4xgAvM0FQQo" role="2OqNvi">
              <ref role="2Oxat5" node="4xgAvM0FLag" resolve="credits" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0FPRc" role="1B3o_S" />
      <node concept="10Oyi0" id="4xgAvM0FPVY" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4xgAvM0FQUW" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0FS0P" role="jymVt">
      <property role="TrG5h" value="getAmount" />
      <node concept="3clFbS" id="4xgAvM0FS0S" role="3clF47">
        <node concept="3cpWs6" id="4xgAvM0FSm_" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0FSHJ" role="3cqZAk">
            <node concept="Xjq3P" id="4xgAvM0FSoj" role="2Oq$k0" />
            <node concept="2OwXpG" id="4xgAvM0FSZ_" role="2OqNvi">
              <ref role="2Oxat5" node="4xgAvM0FLhQ" resolve="amount" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0FRVs" role="1B3o_S" />
      <node concept="_YKpA" id="4xgAvM0FRVv" role="3clF45">
        <node concept="3uibUv" id="4xgAvM0FS6r" role="_ZDj9">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4xgAvM0DIhh" role="jymVt">
      <property role="TrG5h" value="accept" />
      <node concept="3clFbS" id="4xgAvM0DIhk" role="3clF47">
        <node concept="3clFbF" id="4xgAvM0DImy" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0DIoo" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0DImx" role="2Oq$k0">
              <ref role="3cqZAo" node="4xgAvM0DIhH" resolve="visitor" />
            </node>
            <node concept="liA8E" id="4xgAvM0DIGH" role="2OqNvi">
              <ref role="37wK5l" node="4xgAvM0DM_M" resolve="visit" />
              <node concept="Xjq3P" id="4xgAvM0DIJJ" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0DIgY" role="1B3o_S" />
      <node concept="3cqZAl" id="4xgAvM0DIh1" role="3clF45" />
      <node concept="37vLTG" id="4xgAvM0DIhH" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="4xgAvM0DIhG" role="1tU5fm">
          <ref role="3uigEE" node="4xgAvM0CSLa" resolve="EvalVisitor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0G3oT" role="jymVt" />
    <node concept="2tJIrI" id="4xgAvM0DMnF" role="jymVt" />
    <node concept="3Tm1VV" id="4xgAvM0DMgA" role="1B3o_S" />
    <node concept="3uibUv" id="4xgAvM0DMhD" role="EKbjA">
      <ref role="3uigEE" node="4xgAvM0Dnsy" resolve="Visitable" />
    </node>
  </node>
  <node concept="312cEu" id="4xgAvM0DMZ_">
    <property role="TrG5h" value="ValueAsk" />
    <node concept="2tJIrI" id="4xgAvM0DN1O" role="jymVt" />
    <node concept="312cEg" id="4xgAvM0E3$e" role="jymVt">
      <property role="TrG5h" value="names" />
      <node concept="3Tm6S6" id="4xgAvM0E3yV" role="1B3o_S" />
      <node concept="_YKpA" id="4xgAvM0E3$1" role="1tU5fm">
        <node concept="3uibUv" id="4xgAvM0E3$c" role="_ZDj9">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0E3_o" role="jymVt" />
    <node concept="3clFbW" id="4xgAvM0E3Bw" role="jymVt">
      <node concept="3cqZAl" id="4xgAvM0E3By" role="3clF45" />
      <node concept="3Tm1VV" id="4xgAvM0E3Bz" role="1B3o_S" />
      <node concept="3clFbS" id="4xgAvM0E3B$" role="3clF47">
        <node concept="3clFbF" id="4xgAvM0E3Ep" role="3cqZAp">
          <node concept="37vLTI" id="4xgAvM0E4vD" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0E4K1" role="37vLTx">
              <ref role="3cqZAo" node="4xgAvM0E4L$" resolve="nms" />
            </node>
            <node concept="2OqwBi" id="4xgAvM0E3IJ" role="37vLTJ">
              <node concept="Xjq3P" id="4xgAvM0E3Eo" role="2Oq$k0" />
              <node concept="2OwXpG" id="4xgAvM0E3S4" role="2OqNvi">
                <ref role="2Oxat5" node="4xgAvM0E3$e" resolve="names" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4xgAvM0E4L$" role="3clF46">
        <property role="TrG5h" value="nms" />
        <node concept="_YKpA" id="4xgAvM0E4Ly" role="1tU5fm">
          <node concept="3uibUv" id="4xgAvM0E4Sl" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0E3xR" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0E50s" role="jymVt">
      <property role="TrG5h" value="getNames" />
      <node concept="3clFbS" id="4xgAvM0E50v" role="3clF47">
        <node concept="3cpWs6" id="4xgAvM0E5eq" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0E5va" role="3cqZAk">
            <node concept="Xjq3P" id="4xgAvM0E5ik" role="2Oq$k0" />
            <node concept="2OwXpG" id="4xgAvM0E5DG" role="2OqNvi">
              <ref role="2Oxat5" node="4xgAvM0E3$e" resolve="names" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0E4Y2" role="1B3o_S" />
      <node concept="_YKpA" id="4xgAvM0E58a" role="3clF45">
        <node concept="3uibUv" id="4xgAvM0E5am" role="_ZDj9">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0E4VE" role="jymVt" />
    <node concept="3clFb_" id="4xgAvM0DN0q" role="jymVt">
      <property role="TrG5h" value="accept" />
      <node concept="3clFbS" id="4xgAvM0DN0r" role="3clF47">
        <node concept="3clFbF" id="4xgAvM0DN0s" role="3cqZAp">
          <node concept="2OqwBi" id="4xgAvM0DN0t" role="3clFbG">
            <node concept="37vLTw" id="4xgAvM0DN0u" role="2Oq$k0">
              <ref role="3cqZAo" node="4xgAvM0DN0z" resolve="visitor" />
            </node>
            <node concept="liA8E" id="4xgAvM0DN0v" role="2OqNvi">
              <ref role="37wK5l" node="4xgAvM0DMVD" resolve="visit" />
              <node concept="Xjq3P" id="4xgAvM0DN0w" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xgAvM0DN0x" role="1B3o_S" />
      <node concept="3cqZAl" id="4xgAvM0DN0y" role="3clF45" />
      <node concept="37vLTG" id="4xgAvM0DN0z" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="4xgAvM0DN0$" role="1tU5fm">
          <ref role="3uigEE" node="4xgAvM0CSLa" resolve="EvalVisitor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xgAvM0DN0f" role="jymVt" />
    <node concept="3Tm1VV" id="4xgAvM0DMZA" role="1B3o_S" />
    <node concept="3uibUv" id="4xgAvM0EFfW" role="EKbjA">
      <ref role="3uigEE" node="4xgAvM0Dnsy" resolve="Visitable" />
    </node>
  </node>
</model>

