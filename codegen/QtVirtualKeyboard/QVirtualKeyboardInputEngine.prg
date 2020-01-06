%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtVirtualKeyboard

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QVirtualKeyboardInputEngine(QVirtualKeyboardInputContext *parent = nullptr)

$prototype=~QVirtualKeyboardInputEngine()
$deleteMethod

%%
%% Q_PROPERTY(Qt::Key activeKey READ activeKey NOTIFY activeKeyChanged)
%%

$prototype=Qt::Key activeKey() const

%%
%% Q_PROPERTY(Qt::Key previousKey READ previousKey NOTIFY previousKeyChanged)
%%

$prototype=Qt::Key previousKey() const

%%
%% Q_PROPERTY(QVirtualKeyboardAbstractInputMethod *inputMethod READ inputMethod WRITE setInputMethod NOTIFY inputMethodChanged)
%%

$prototype=QVirtualKeyboardAbstractInputMethod *inputMethod() const
$prototype=void setInputMethod(QVirtualKeyboardAbstractInputMethod *inputMethod)

%%
%% Q_PROPERTY(QList<int> inputModes READ inputModes NOTIFY inputModesChanged)
%%

$prototype=QList<int> inputModes() const

%%
%% Q_PROPERTY(InputMode inputMode READ inputMode WRITE setInputMode NOTIFY inputModeChanged)
%%

$prototype=InputMode inputMode() const
$prototype=void setInputMode(InputMode inputMode)

%%
%% Q_PROPERTY(QList<int> patternRecognitionModes READ patternRecognitionModes NOTIFY patternRecognitionModesChanged)
%%

$prototype=QList<int> patternRecognitionModes() const

%%
%% Q_PROPERTY(QVirtualKeyboardSelectionListModel *wordCandidateListModel READ wordCandidateListModel NOTIFY wordCandidateListModelChanged)
%%

$prototype=QVirtualKeyboardSelectionListModel *wordCandidateListModel() const

%%
%% Q_PROPERTY(bool wordCandidateListVisibleHint READ wordCandidateListVisibleHint NOTIFY wordCandidateListVisibleHintChanged)
%%

$prototype=bool wordCandidateListVisibleHint() const

%%
%%
%%

$prototype=void init()
$prototype=Q_INVOKABLE bool virtualKeyPress(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers, bool repeat)
$prototype=Q_INVOKABLE void virtualKeyCancel()
$prototype=Q_INVOKABLE bool virtualKeyRelease(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers)
$prototype=Q_INVOKABLE bool virtualKeyClick(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers)
$prototype=QVirtualKeyboardInputContext *inputContext() const
$prototype=Q_INVOKABLE QVirtualKeyboardTrace *traceBegin(int traceId, PatternRecognitionMode patternRecognitionMode, const QVariantMap &traceCaptureDeviceInfo, const QVariantMap &traceScreenInfo)
$prototype=Q_INVOKABLE bool traceEnd(QVirtualKeyboardTrace *trace)
$prototype=Q_INVOKABLE bool reselect(int cursorPosition, const ReselectFlags &reselectFlags)
$prototype=bool clickPreeditText(int cursorPosition)
$prototype=void reset() [private] [slot]
$prototype=void update() [private] [slot]
$prototype=void shiftChanged() [private] [slot]
$prototype=void updateSelectionListModels() [private] [slot]
$prototype=void updateInputModes() [private] [slot]
$prototype=void timerEvent(QTimerEvent *timerEvent) [protected]

$beginSignals
$signal=|virtualKeyClicked(Qt::Key,QString,Qt::KeyboardModifiers,bool)
$signal=|activeKeyChanged(Qt::Key)
$signal=|previousKeyChanged(Qt::Key)
$signal=|inputMethodChanged()
$signal=|inputMethodReset()
$signal=|inputMethodUpdate()
$signal=|inputModesChanged()
$signal=|inputModeChanged()
$signal=|patternRecognitionModesChanged()
$signal=|wordCandidateListModelChanged()
$signal=|wordCandidateListVisibleHintChanged()
$endSignals

#pragma ENDDUMP
