%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=explicit QVirtualKeyboardAbstractInputMethod(QObject *parent = nullptr)

$prototype=~QVirtualKeyboardAbstractInputMethod()
$deleteMethod

$prototype=QVirtualKeyboardInputContext *inputContext() const
$prototype=QVirtualKeyboardInputEngine *inputEngine() const
$prototype=virtual QList<QVirtualKeyboardInputEngine::InputMode> inputModes(const QString &locale) = 0
$prototype=virtual bool setInputMode(const QString &locale, QVirtualKeyboardInputEngine::InputMode inputMode) = 0
$prototype=virtual bool setTextCase(QVirtualKeyboardInputEngine::TextCase textCase) = 0
$prototype=virtual bool keyEvent(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers) = 0
$prototype=virtual QList<QVirtualKeyboardSelectionListModel::Type> selectionLists()
$prototype=virtual int selectionListItemCount(QVirtualKeyboardSelectionListModel::Type type)
$prototype=virtual QVariant selectionListData(QVirtualKeyboardSelectionListModel::Type type, int index, QVirtualKeyboardSelectionListModel::Role role)
$prototype=virtual void selectionListItemSelected(QVirtualKeyboardSelectionListModel::Type type, int index)
$prototype=virtual bool selectionListRemoveItem(QVirtualKeyboardSelectionListModel::Type type, int index)
$prototype=virtual QList<QVirtualKeyboardInputEngine::PatternRecognitionMode> patternRecognitionModes() const
$prototype=virtual QVirtualKeyboardTrace *traceBegin(int traceId, QVirtualKeyboardInputEngine::PatternRecognitionMode patternRecognitionMode, const QVariantMap &traceCaptureDeviceInfo, const QVariantMap &traceScreenInfo)
$prototype=virtual bool traceEnd(QVirtualKeyboardTrace *trace)
$prototype=virtual bool reselect(int cursorPosition, const QVirtualKeyboardInputEngine::ReselectFlags &reselectFlags)
$prototype=virtual bool clickPreeditText(int cursorPosition)
$prototype=virtual void reset() [slot]
$prototype=virtual void update() [slot]
$prototype=void setInputEngine(QVirtualKeyboardInputEngine *inputEngine) [private]

$beginSignals
$signal=|selectionListChanged(QVirtualKeyboardSelectionListModel::Type)
$signal=|selectionListActiveItemChanged(QVirtualKeyboardSelectionListModel::Type,int)
$signal=|selectionListsChanged()
$endSignals

#pragma ENDDUMP
