<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1e4a6c9a-2a7b-45a9-9c0f-84ea24004d23(mps.tweaks.fatalerrordialogutil.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="515552c7-fcc0-4ab4-9789-2f3c49344e85" name="jetbrains.mps.baseLanguage.varVariable" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
  </languages>
  <imports>
    <import index="jkny" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.wm(MPS.IDEA/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="al1t" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diagnostic(MPS.IDEA/)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242773" name="modifiers" index="pLAjc" />
        <property id="1207318242774" name="keycode" index="pLAjf" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="4692598989365753297" name="updateInBackground" index="1rBW0U" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1562714432501166198" name="jetbrains.mps.lang.plugin.structure.SimpleShortcutChange" flags="lg" index="Zd509">
        <child id="1562714432501166206" name="keystroke" index="Zd501" />
      </concept>
      <concept id="1562714432501166197" name="jetbrains.mps.lang.plugin.structure.KeymapChangesDeclaration" flags="ng" index="Zd50a">
        <child id="1562714432501166199" name="shortcutChange" index="Zd508" />
      </concept>
      <concept id="6193305307616715384" name="jetbrains.mps.lang.plugin.structure.ShortcutChange" flags="ngI" index="1bYyw_">
        <reference id="6193305307616734326" name="action" index="1bYAoF" />
      </concept>
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ngI" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <property id="2523873803623706117" name="isMultiline" index="hSjvv" />
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
        <child id="1160998916832" name="message" index="1gVpfI" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
        <property id="6328114375520539781" name="url" index="1X82VU" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="515552c7-fcc0-4ab4-9789-2f3c49344e85" name="jetbrains.mps.baseLanguage.varVariable">
      <concept id="1177714083117" name="jetbrains.mps.baseLanguage.varVariable.structure.VarType" flags="in" index="PeGgZ" />
      <concept id="1236693300889" name="jetbrains.mps.baseLanguage.varVariable.structure.VarVariableDeclaration" flags="ng" index="3KEzu6" />
    </language>
  </registry>
  <node concept="2DaZZR" id="1XcSpu4klHQ" />
  <node concept="Zd50a" id="5CtXlv$CiD2">
    <property role="TrG5h" value="FatalErrorDialogUtil_KeyMap" />
    <node concept="Zd509" id="5CtXlv$CiD3" role="Zd508">
      <ref role="1bYAoF" node="5CtXlv$BM99" />
      <node concept="pLAjd" id="5CtXlv$CiD4" role="Zd501">
        <property role="pLAjc" value="ctrl+alt" />
        <property role="pLAjf" value="VK_E" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="5CtXlv$BM99">
    <property role="2uzpH1" value="Open Fatal Errors Dialog" />
    <property role="TrG5h" value="OpenFatalErrorsDialog" />
    <property role="1rBW0U" value="true" />
    <node concept="tnohg" id="5CtXlv$BM9a" role="tncku">
      <node concept="3clFbS" id="5CtXlv$BM9b" role="2VODD2">
        <node concept="3SKdUt" id="5CtXlv$CkCN" role="3cqZAp">
          <node concept="1PaTwC" id="5CtXlv$CkCO" role="1aUNEU">
            <node concept="3oM_SD" id="5CtXlv$CkF5" role="1PaTwD">
              <property role="3oM_SC" value="You" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkF6" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkF7" role="1PaTwD">
              <property role="3oM_SC" value="find" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkF8" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkF9" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkFa" role="1PaTwD">
              <property role="3oM_SC" value="Intellij" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkFb" role="1PaTwD">
              <property role="3oM_SC" value="status" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkFc" role="1PaTwD">
              <property role="3oM_SC" value="bar" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkFd" role="1PaTwD">
              <property role="3oM_SC" value="widget" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkFe" role="1PaTwD">
              <property role="3oM_SC" value="ids" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkFf" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkFg" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkFh" role="1PaTwD">
              <property role="3oM_SC" value="file" />
              <property role="1X82VU" value="https://github.com/JetBrains/intellij-community/blob/c052c934734d12133bddac322c39f4ea6e899c79/platform/platform-resources/src/META-INF/LangExtensions.xml#L1260" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkIR" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkFn" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkFo" role="1PaTwD">
              <property role="3oM_SC" value="widget" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkFp" role="1PaTwD">
              <property role="3oM_SC" value="(loaded" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkFq" role="1PaTwD">
              <property role="3oM_SC" value="models)" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkFr" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkFs" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="5CtXlv$CkFt" role="1PaTwD">
              <property role="3oM_SC" value="file." />
              <property role="1X82VU" value="https://github.com/JetBrains/MPS/blob/master/plugins/mps-memtool/META-INF/plugin.xml#L25" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5CtXlv$BSnJ" role="3cqZAp">
          <node concept="3KEzu6" id="5CtXlv$CjwJ" role="3cpWs9">
            <property role="TrG5h" value="FATAL_ERROR_DIALOG_ID" />
            <node concept="Xl_RD" id="5CtXlv$CjwK" role="33vP2m">
              <property role="Xl_RC" value="FatalError" />
            </node>
            <node concept="PeGgZ" id="5CtXlv$CjwL" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="5CtXlv$CkJn" role="3cqZAp" />
        <node concept="3cpWs8" id="5CtXlv$CcjZ" role="3cqZAp">
          <node concept="3KEzu6" id="5CtXlv$CjsN" role="3cpWs9">
            <property role="TrG5h" value="ideMessagePanel" />
            <node concept="0kSF2" id="5CtXlv$CjsO" role="33vP2m">
              <node concept="3uibUv" id="5CtXlv$CjsP" role="0kSFW">
                <ref role="3uigEE" to="al1t:~IdeMessagePanel" resolve="IdeMessagePanel" />
              </node>
              <node concept="2EnYce" id="5CtXlv$CjsQ" role="0kSFX">
                <property role="hSjvv" value="true" />
                <node concept="2OqwBi" id="5CtXlv$CjsR" role="2Oq$k0">
                  <property role="hSjvv" value="true" />
                  <node concept="2OqwBi" id="5CtXlv$CjsS" role="2Oq$k0">
                    <property role="hSjvv" value="true" />
                    <node concept="2YIFZM" id="5CtXlv$CjsT" role="2Oq$k0">
                      <ref role="37wK5l" to="jkny:~WindowManager.getInstance()" resolve="getInstance" />
                      <ref role="1Pybhc" to="jkny:~WindowManager" resolve="WindowManager" />
                    </node>
                    <node concept="liA8E" id="5CtXlv$CjsU" role="2OqNvi">
                      <ref role="37wK5l" to="jkny:~WindowManager.getIdeFrame(com.intellij.openapi.project.Project)" resolve="getIdeFrame" />
                      <node concept="2OqwBi" id="5CtXlv$CjsV" role="37wK5m">
                        <node concept="2WthIp" id="5CtXlv$CjsW" role="2Oq$k0" />
                        <node concept="1DTwFV" id="5CtXlv$CjsX" role="2OqNvi">
                          <ref role="2WH_rO" node="5CtXlv$BP42" resolve="ideaProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5CtXlv$CjsY" role="2OqNvi">
                    <ref role="37wK5l" to="jkny:~IdeFrame.getStatusBar()" resolve="getStatusBar" />
                  </node>
                </node>
                <node concept="liA8E" id="5CtXlv$CjsZ" role="2OqNvi">
                  <ref role="37wK5l" to="jkny:~StatusBar.getWidget(java.lang.String)" resolve="getWidget" />
                  <node concept="37vLTw" id="5CtXlv$Cjt0" role="37wK5m">
                    <ref role="3cqZAo" node="5CtXlv$CjwJ" resolve="DIALOG_ID" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="PeGgZ" id="5CtXlv$Cjt1" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="1XcSpu4ksaJ" role="3cqZAp" />
        <node concept="1gVbGN" id="1XcSpu4kqeJ" role="3cqZAp">
          <node concept="3y3z36" id="1XcSpu4kr0B" role="1gVkn0">
            <node concept="10Nm6u" id="1XcSpu4kroh" role="3uHU7w" />
            <node concept="37vLTw" id="1XcSpu4kqjN" role="3uHU7B">
              <ref role="3cqZAo" node="5CtXlv$CjsN" resolve="errorWidget" />
            </node>
          </node>
          <node concept="Xl_RD" id="1XcSpu4ksfa" role="1gVpfI">
            <property role="Xl_RC" value="Fatal Error Dialog is not available." />
          </node>
        </node>
        <node concept="3clFbH" id="5CtXlv$Cixe" role="3cqZAp" />
        <node concept="3SKdUt" id="1XcSpu4kB5P" role="3cqZAp">
          <node concept="1PaTwC" id="1XcSpu4kB5Q" role="1aUNEU">
            <node concept="3oM_SD" id="1XcSpu4kCMV" role="1PaTwD">
              <property role="3oM_SC" value="todo:" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kCMY" role="1PaTwD">
              <property role="3oM_SC" value="An" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBjY" role="1PaTwD">
              <property role="3oM_SC" value="IndexOutOfBoundsException" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBmH" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kB9I" role="1PaTwD">
              <property role="3oM_SC" value="thrown" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kB9U" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kB9Y" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBa6" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBae" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBai" role="1PaTwD">
              <property role="3oM_SC" value="called" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBbh" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBbu" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBbz" role="1PaTwD">
              <property role="3oM_SC" value="message" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBbG" role="1PaTwD">
              <property role="3oM_SC" value="pool" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBbO" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBJy" role="1PaTwD">
              <property role="3oM_SC" value="empty." />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBMV" role="1PaTwD">
              <property role="3oM_SC" value="This" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBNl" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBNp" role="1PaTwD">
              <property role="3oM_SC" value="handy" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBNO" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBOx" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBOV" role="1PaTwD">
              <property role="3oM_SC" value="purposes" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBPJ" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBUk" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBVy" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBVA" role="1PaTwD">
              <property role="3oM_SC" value="fixed" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBW1" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBWp" role="1PaTwD">
              <property role="3oM_SC" value="checking" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBWR" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBWW" role="1PaTwD">
              <property role="3oM_SC" value="size" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBXE" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBY2" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBYr" role="1PaTwD">
              <property role="3oM_SC" value="message" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBY$" role="1PaTwD">
              <property role="3oM_SC" value="pool." />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kBYZ" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kCKB" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kCKI" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kCL9" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kCLe" role="1PaTwD">
              <property role="3oM_SC" value="public" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kCLE" role="1PaTwD">
              <property role="3oM_SC" value="function" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kCM8" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kCOK" role="1PaTwD">
              <property role="3oM_SC" value="IdeMessagePanel" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kCNF" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="1XcSpu4kCUx" role="1PaTwD">
              <property role="3oM_SC" value="far." />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1XcSpu4kB03" role="3cqZAp" />
        <node concept="3clFbF" id="5CtXlv$BQpt" role="3cqZAp">
          <node concept="2OqwBi" id="5CtXlv$C5xB" role="3clFbG">
            <node concept="37vLTw" id="5CtXlv$BSDL" role="2Oq$k0">
              <ref role="3cqZAo" node="5CtXlv$CjsN" resolve="widget" />
            </node>
            <node concept="liA8E" id="5CtXlv$C6G9" role="2OqNvi">
              <ref role="37wK5l" to="al1t:~IdeMessagePanel.openErrorsDialog(com.intellij.diagnostic.LogMessage)" resolve="openErrorsDialog" />
              <node concept="10Nm6u" id="5CtXlv$C6Hi" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="5CtXlv$BP42" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="5CtXlv$BP43" role="1oa70y" />
    </node>
  </node>
</model>

