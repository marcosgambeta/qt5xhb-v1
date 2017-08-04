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

/*
bool autoExclusive () const
*/
$method=|bool|autoExclusive|

/*
void setAutoExclusive ( bool )
*/
$method=|void|setAutoExclusive|bool

/*
bool autoRepeat () const
*/
$method=|bool|autoRepeat|

/*
void setAutoRepeat ( bool )
*/
$method=|void|setAutoRepeat|bool

/*
int autoRepeatDelay () const
*/
$method=|int|autoRepeatDelay|

/*
void setAutoRepeatDelay ( int )
*/
$method=|void|setAutoRepeatDelay|int

/*
int autoRepeatInterval () const
*/
$method=|int|autoRepeatInterval|

/*
void setAutoRepeatInterval ( int )
*/
$method=|void|setAutoRepeatInterval|int

/*
QIcon icon () const
*/
$method=|QIcon|icon|

/*
void setIcon ( const QIcon & icon )
*/
$method=|void|setIcon|const QIcon &

/*
QSize iconSize () const
*/
$method=|QSize|iconSize|

/*
void setIconSize ( const QSize & size )
*/
$method=|void|setIconSize|const QSize &

/*
bool isCheckable () const
*/
$method=|bool|isCheckable|

/*
void setCheckable ( bool )
*/
$method=|void|setCheckable|bool

/*
bool isChecked () const
*/
$method=|bool|isChecked|

/*
void setChecked ( bool )
*/
$method=|void|setChecked|bool

/*
bool isDown () const
*/
$method=|bool|isDown|

/*
void setDown ( bool )
*/
$method=|void|setDown|bool

/*
QKeySequence shortcut () const
*/
$method=|QKeySequence|shortcut||#ifndef QT_NO_SHORTCUT

/*
void setShortcut ( const QKeySequence & key )
*/
$method=|void|setShortcut|const QKeySequence &|#ifndef QT_NO_SHORTCUT

/*
QString text () const
*/
$method=|QString|text|

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
QButtonGroup * group () const
*/
$method=|QButtonGroup *|group||#ifndef QT_NO_BUTTONGROUP

/*
void animateClick ( int msec = 100 )
*/
$method=|void|animateClick|int=100

/*
void click ()
*/
$method=|void|click|

/*
void toggle ()
*/
$method=|void|toggle|

#pragma ENDDUMP
