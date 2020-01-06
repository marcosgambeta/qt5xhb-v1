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

$prototype=explicit QVirtualKeyboardInputContext(QObject *parent = nullptr)

$prototype=~QVirtualKeyboardInputContext()
$deleteMethod

%%
%% Q_PROPERTY(bool shift READ isShiftActive NOTIFY shiftActiveChanged)
%%
%%
%% Q_PROPERTY(bool shiftActive READ isShiftActive NOTIFY shiftActiveChanged REVISION 4)
%%

$prototype=bool isShiftActive() const

%%
%% Q_PROPERTY(bool capsLock READ isCapsLockActive NOTIFY capsLockActiveChanged)
%%
%%
%% Q_PROPERTY(bool capsLockActive READ isCapsLockActive NOTIFY capsLockActiveChanged REVISION 4)
%%

$prototype=bool isCapsLockActive() const

%%
%% Q_PROPERTY(bool uppercase READ isUppercase NOTIFY uppercaseChanged)
%%

$prototype=bool isUppercase() const

%%
%% Q_PROPERTY(int anchorPosition READ anchorPosition NOTIFY anchorPositionChanged)
%%

$prototype=int anchorPosition() const

%%
%% Q_PROPERTY(int cursorPosition READ cursorPosition NOTIFY cursorPositionChanged)
%%

$prototype=int cursorPosition() const

%%
%% Q_PROPERTY(Qt::InputMethodHints inputMethodHints READ inputMethodHints NOTIFY inputMethodHintsChanged)
%%

$prototype=Qt::InputMethodHints inputMethodHints() const

%%
%% Q_PROPERTY(QString preeditText READ preeditText WRITE setPreeditText NOTIFY preeditTextChanged)
%%

$prototype=QString preeditText() const
$prototype=void setPreeditText(const QString &text, QList<QInputMethodEvent::Attribute> attributes = QList<QInputMethodEvent::Attribute>(), int replaceFrom = 0, int replaceLength = 0)

%%
%% Q_PROPERTY(QString surroundingText READ surroundingText NOTIFY surroundingTextChanged)
%%

$prototype=QString surroundingText() const

%%
%% Q_PROPERTY(QString selectedText READ selectedText NOTIFY selectedTextChanged)
%%

$prototype=QString selectedText() const

%%
%% Q_PROPERTY(QRectF anchorRectangle READ anchorRectangle NOTIFY anchorRectangleChanged)
%%

$prototype=QRectF anchorRectangle() const

%%
%% Q_PROPERTY(QRectF cursorRectangle READ cursorRectangle NOTIFY cursorRectangleChanged)
%%

$prototype=QRectF cursorRectangle() const

%%
%% Q_PROPERTY(bool animating READ isAnimating WRITE setAnimating NOTIFY animatingChanged)
%%

$prototype=bool isAnimating() const
$prototype=void setAnimating(bool isAnimating)

%%
%% Q_PROPERTY(QString locale READ locale NOTIFY localeChanged)
%%

$prototype=QString locale() const

%%
%% Q_PROPERTY(QVirtualKeyboardInputEngine *inputEngine READ inputEngine CONSTANT)
%%

$prototype=QVirtualKeyboardInputEngine *inputEngine() const

%%
%% Q_PROPERTY(bool selectionControlVisible READ isSelectionControlVisible NOTIFY selectionControlVisibleChanged)
%%

$prototype=bool isSelectionControlVisible() const

%%
%% Q_PROPERTY(bool anchorRectIntersectsClipRect READ anchorRectIntersectsClipRect NOTIFY anchorRectIntersectsClipRectChanged)
%%

$prototype=bool anchorRectIntersectsClipRect() const

%%
%% Q_PROPERTY(bool cursorRectIntersectsClipRect READ cursorRectIntersectsClipRect NOTIFY cursorRectIntersectsClipRectChanged)
%%

$prototype=bool cursorRectIntersectsClipRect() const

%%
%% Q_PROPERTY(QVirtualKeyboardInputContextPrivate *priv READ priv CONSTANT)
%%

$prototype=QVirtualKeyboardInputContextPrivate *priv() const

%%
%%
%%

$prototype=QList<QInputMethodEvent::Attribute> preeditTextAttributes() const
$prototype=Q_INVOKABLE void sendKeyClick(int key, const QString &text, int modifiers = 0)
$prototype=Q_INVOKABLE void commit()
$prototype=Q_INVOKABLE void commit(const QString &text, int replaceFrom = 0, int replaceLength = 0)
$prototype=Q_INVOKABLE void clear()
$prototype=Q_INVOKABLE void setSelectionOnFocusObject(const QPointF &anchorPos, const QPointF &cursorPos)

$beginSignals
$signal=|preeditTextChanged()
$signal=|inputMethodHintsChanged()
$signal=|surroundingTextChanged()
$signal=|selectedTextChanged()
$signal=|anchorPositionChanged()
$signal=|cursorPositionChanged()
$signal=|anchorRectangleChanged()
$signal=|cursorRectangleChanged()
$signal=|shiftActiveChanged()
$signal=|capsLockActiveChanged()
$signal=|uppercaseChanged()
$signal=|animatingChanged()
$signal=|localeChanged()
$signal=|selectionControlVisibleChanged()
$signal=|anchorRectIntersectsClipRectChanged()
$signal=|cursorRectIntersectsClipRectChanged()
$endSignals

#pragma ENDDUMP
