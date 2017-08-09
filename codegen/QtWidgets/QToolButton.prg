$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QSIZE
#endif

CLASS QToolButton INHERIT QAbstractButton

   METHOD new
   METHOD delete
   METHOD arrowType
   METHOD autoRaise
   METHOD defaultAction
   METHOD menu
   METHOD popupMode
   METHOD setArrowType
   METHOD setAutoRaise
   METHOD setMenu
   METHOD setPopupMode
   METHOD toolButtonStyle
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setDefaultAction
   METHOD setToolButtonStyle
   METHOD showMenu

   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QToolButton ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
Qt::ArrowType arrowType () const
*/
$method=|Qt::ArrowType|arrowType|

/*
bool autoRaise () const
*/
$method=|bool|autoRaise|

/*
QAction * defaultAction () const
*/
$method=|QAction *|defaultAction|

/*
QMenu * menu () const
*/
$method=|QMenu *|menu||#ifndef QT_NO_MENU

/*
ToolButtonPopupMode popupMode () const
*/
$method=|QToolButton::ToolButtonPopupMode|popupMode||#ifndef QT_NO_MENU

/*
void setArrowType ( Qt::ArrowType type )
*/
$method=|void|setArrowType|Qt::ArrowType

/*
void setAutoRaise ( bool enable )
*/
$method=|void|setAutoRaise|bool

/*
void setMenu ( QMenu * menu )
*/
$method=|void|setMenu|QMenu *|#ifndef QT_NO_MENU

/*
void setPopupMode ( ToolButtonPopupMode mode )
*/
$method=|void|setPopupMode|QToolButton::ToolButtonPopupMode|#ifndef QT_NO_MENU

/*
Qt::ToolButtonStyle toolButtonStyle () const
*/
$method=|Qt::ToolButtonStyle|toolButtonStyle|

/*
QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void setDefaultAction ( QAction * action )
*/
$method=|void|setDefaultAction|QAction *

/*
void setToolButtonStyle ( Qt::ToolButtonStyle style )
*/
$method=|void|setToolButtonStyle|Qt::ToolButtonStyle

/*
void showMenu ()
*/
$method=|void|showMenu||#ifndef QT_NO_MENU

#pragma ENDDUMP
