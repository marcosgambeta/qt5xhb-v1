%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QSIZE
REQUEST QKEYSEQUENCE
REQUEST QBUTTONGROUP
#endif

$beginClassFrom=QWidget

%%   METHOD new
   METHOD delete

   METHOD animateClick
   METHOD autoExclusive
   METHOD autoRepeat
   METHOD autoRepeatDelay
   METHOD autoRepeatInterval
   METHOD click
   METHOD group
   METHOD icon
   METHOD iconSize
   METHOD isCheckable
   METHOD isChecked
   METHOD isDown
   METHOD setAutoExclusive
   METHOD setAutoRepeat
   METHOD setAutoRepeatDelay
   METHOD setAutoRepeatInterval
   METHOD setCheckable
   METHOD setChecked
   METHOD setDown
   METHOD setIcon
   METHOD setIconSize
   METHOD setShortcut
   METHOD setText
   METHOD shortcut
   METHOD text
   METHOD toggle

   METHOD onClicked
   METHOD onPressed
   METHOD onReleased
   METHOD onToggled

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QButtonGroup>

$prototype=explicit QAbstractButton(QWidget *parent = Q_NULLPTR) (abstract)

$prototype=QAbstractButton(QAbstractButtonPrivate &dd, QWidget* parent = Q_NULLPTR) (protected)

$prototype=~QAbstractButton()
$deleteMethod

%%
%% Q_PROPERTY(QString text READ text WRITE setText)
%%

$prototype=QString text () const
$method=|QString|text|

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

%%
%% Q_PROPERTY(QIcon icon READ icon WRITE setIcon)
%%

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototype=void setIcon ( const QIcon & icon )
$method=|void|setIcon|const QIcon &

%%
%% Q_PROPERTY(QSize iconSize READ iconSize WRITE setIconSize)
%%

$prototype=QSize iconSize () const
$method=|QSize|iconSize|

$prototype=void setIconSize ( const QSize & size ) (slot)
$method=|void|setIconSize|const QSize &

%% #ifndef QT_NO_SHORTCUT

%%
%% Q_PROPERTY(QKeySequence shortcut READ shortcut WRITE setShortcut)
%%

$prototype=QKeySequence shortcut () const
$method=|QKeySequence|shortcut||#ifndef QT_NO_SHORTCUT

$prototype=void setShortcut ( const QKeySequence & key )
$method=|void|setShortcut|const QKeySequence &|#ifndef QT_NO_SHORTCUT

%% #endif

%%
%% Q_PROPERTY(bool checkable READ isCheckable WRITE setCheckable)
%%

$prototype=bool isCheckable () const
$method=|bool|isCheckable|

$prototype=void setCheckable ( bool )
$method=|void|setCheckable|bool

%%
%% Q_PROPERTY(bool checked READ isChecked WRITE setChecked DESIGNABLE isCheckable NOTIFY toggled USER true)
%%

$prototype=bool isChecked () const
$method=|bool|isChecked|

$prototype=void setChecked ( bool ) (slot)
$method=|void|setChecked|bool

%%
%% Q_PROPERTY(bool autoRepeat READ autoRepeat WRITE setAutoRepeat)
%%

$prototype=bool autoRepeat () const
$method=|bool|autoRepeat|

$prototype=void setAutoRepeat ( bool )
$method=|void|setAutoRepeat|bool

%%
%% Q_PROPERTY(bool autoExclusive READ autoExclusive WRITE setAutoExclusive)
%%

$prototype=bool autoExclusive () const
$method=|bool|autoExclusive|

$prototype=void setAutoExclusive ( bool )
$method=|void|setAutoExclusive|bool

%%
%% Q_PROPERTY(int autoRepeatDelay READ autoRepeatDelay WRITE setAutoRepeatDelay)
%%

$prototype=int autoRepeatDelay () const
$method=|int|autoRepeatDelay|

$prototype=void setAutoRepeatDelay ( int )
$method=|void|setAutoRepeatDelay|int

%%
%% Q_PROPERTY(int autoRepeatInterval READ autoRepeatInterval WRITE setAutoRepeatInterval)
%%

$prototype=int autoRepeatInterval () const
$method=|int|autoRepeatInterval|

$prototype=void setAutoRepeatInterval ( int )
$method=|void|setAutoRepeatInterval|int

%%
%% Q_PROPERTY(bool down READ isDown WRITE setDown DESIGNABLE false)
%%

$prototype=bool isDown () const
$method=|bool|isDown|

$prototype=void setDown ( bool )
$method=|void|setDown|bool

%%
%%
%%

$prototype=QButtonGroup * group () const
$method=|QButtonGroup *|group||#ifndef QT_NO_BUTTONGROUP

$prototype=void animateClick ( int msec = 100 ) (slot)
$method=|void|animateClick|int=100

$prototype=void click () (slot)
$method=|void|click|

$prototype=void toggle () (slot)
$method=|void|toggle|

$prototype=void paintEvent(QPaintEvent *e) Q_DECL_OVERRIDE = 0 (protected)

$prototype=virtual bool hitButton(const QPoint &pos) const (protected)

$prototype=virtual void checkStateSet() (protected)

$prototype=virtual void nextCheckState() (protected)

$prototype=bool event(QEvent *e) Q_DECL_OVERRIDE (protected)

$prototype=void keyPressEvent(QKeyEvent *e) Q_DECL_OVERRIDE (protected)

$prototype=void keyReleaseEvent(QKeyEvent *e) Q_DECL_OVERRIDE (protected)

$prototype=void mousePressEvent(QMouseEvent *e) Q_DECL_OVERRIDE (protected)

$prototype=void mouseReleaseEvent(QMouseEvent *e) Q_DECL_OVERRIDE (protected)

$prototype=void mouseMoveEvent(QMouseEvent *e) Q_DECL_OVERRIDE (protected)

$prototype=void focusInEvent(QFocusEvent *e) Q_DECL_OVERRIDE (protected)

$prototype=void focusOutEvent(QFocusEvent *e) Q_DECL_OVERRIDE (protected)

$prototype=void changeEvent(QEvent *e) Q_DECL_OVERRIDE (protected)

$prototype=void timerEvent(QTimerEvent *e) Q_DECL_OVERRIDE (protected)

$beginSignals
$signal=|clicked(bool)
$signal=|pressed()
$signal=|released()
$signal=|toggled(bool)
$endSignals

#pragma ENDDUMP
