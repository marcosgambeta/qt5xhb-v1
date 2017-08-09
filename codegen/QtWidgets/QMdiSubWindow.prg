$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMDIAREA
REQUEST QMENU
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QMdiSubWindow INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD isShaded
   METHOD keyboardPageStep
   METHOD keyboardSingleStep
   METHOD mdiArea
   METHOD setKeyboardPageStep
   METHOD setKeyboardSingleStep
   METHOD setOption
   METHOD setSystemMenu
   METHOD setWidget
   METHOD systemMenu
   METHOD testOption
   METHOD widget
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD showShaded
   METHOD showSystemMenu

   METHOD onAboutToActivate
   METHOD onWindowStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QMdiSubWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

/*
bool isShaded () const
*/
$method=|bool|isShaded|

/*
int keyboardPageStep () const
*/
$method=|int|keyboardPageStep|

/*
int keyboardSingleStep () const
*/
$method=|int|keyboardSingleStep|

/*
QMdiArea * mdiArea () const
*/
$method=|QMdiArea *|mdiArea|

/*
void setKeyboardPageStep ( int step )
*/
$method=|void|setKeyboardPageStep|int

/*
void setKeyboardSingleStep ( int step )
*/
$method=|void|setKeyboardSingleStep|int

/*
void setOption ( SubWindowOption option, bool on = true )
*/
$method=|void|setOption|QMdiSubWindow::SubWindowOption,bool=true

/*
void setSystemMenu ( QMenu * systemMenu )
*/
$method=|void|setSystemMenu|QMenu *

/*
void setWidget ( QWidget * widget )
*/
$method=|void|setWidget|QWidget *

/*
QMenu * systemMenu () const
*/
$method=|QMenu *|systemMenu|

/*
bool testOption ( SubWindowOption option ) const
*/
$method=|bool|testOption|QMdiSubWindow::SubWindowOption

/*
QWidget * widget () const
*/
$method=|QWidget *|widget|

/*
virtual QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void showShaded ()
*/
$method=|void|showShaded|

/*
void showSystemMenu ()
*/
$method=|void|showSystemMenu|

#pragma ENDDUMP
