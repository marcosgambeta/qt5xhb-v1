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

CLASS QAbstractButton INHERIT QWidget

   METHOD delete
   METHOD autoExclusive
   METHOD setAutoExclusive
   METHOD autoRepeat
   METHOD setAutoRepeat
   METHOD autoRepeatDelay
   METHOD setAutoRepeatDelay
   METHOD autoRepeatInterval
   METHOD setAutoRepeatInterval
   METHOD icon
   METHOD setIcon
   METHOD iconSize
   METHOD setIconSize
   METHOD isCheckable
   METHOD setCheckable
   METHOD isChecked
   METHOD setChecked
   METHOD isDown
   METHOD setDown
   METHOD shortcut
   METHOD setShortcut
   METHOD text
   METHOD setText
   METHOD group
   METHOD animateClick
   METHOD click
   METHOD toggle

   METHOD onClicked
   METHOD onPressed
   METHOD onReleased
   METHOD onToggled

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=bool autoExclusive () const
$method=|bool|autoExclusive|

$prototype=void setAutoExclusive ( bool )
$method=|void|setAutoExclusive|bool

$prototype=bool autoRepeat () const
$method=|bool|autoRepeat|

$prototype=void setAutoRepeat ( bool )
$method=|void|setAutoRepeat|bool

$prototype=int autoRepeatDelay () const
$method=|int|autoRepeatDelay|

$prototype=void setAutoRepeatDelay ( int )
$method=|void|setAutoRepeatDelay|int

$prototype=int autoRepeatInterval () const
$method=|int|autoRepeatInterval|

$prototype=void setAutoRepeatInterval ( int )
$method=|void|setAutoRepeatInterval|int

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototype=void setIcon ( const QIcon & icon )
$method=|void|setIcon|const QIcon &

$prototype=QSize iconSize () const
$method=|QSize|iconSize|

$prototype=void setIconSize ( const QSize & size )
$method=|void|setIconSize|const QSize &

$prototype=bool isCheckable () const
$method=|bool|isCheckable|

$prototype=void setCheckable ( bool )
$method=|void|setCheckable|bool

$prototype=bool isChecked () const
$method=|bool|isChecked|

$prototype=void setChecked ( bool )
$method=|void|setChecked|bool

$prototype=bool isDown () const
$method=|bool|isDown|

$prototype=void setDown ( bool )
$method=|void|setDown|bool

$prototype=QKeySequence shortcut () const
$method=|QKeySequence|shortcut||#ifndef QT_NO_SHORTCUT

$prototype=void setShortcut ( const QKeySequence & key )
$method=|void|setShortcut|const QKeySequence &|#ifndef QT_NO_SHORTCUT

$prototype=QString text () const
$method=|QString|text|

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=QButtonGroup * group () const
$method=|QButtonGroup *|group||#ifndef QT_NO_BUTTONGROUP

$prototype=void animateClick ( int msec = 100 )
$method=|void|animateClick|int=100

$prototype=void click ()
$method=|void|click|

$prototype=void toggle ()
$method=|void|toggle|

#pragma ENDDUMP
