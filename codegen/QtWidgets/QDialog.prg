$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QDialog INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD isSizeGripEnabled
   METHOD setSizeGripEnabled
   METHOD result
   METHOD setModal
   METHOD setResult
   METHOD minimumSizeHint
   METHOD setVisible
   METHOD sizeHint
   METHOD accept
   METHOD done
   METHOD exec
   METHOD open
   METHOD reject
   METHOD orientation
   METHOD setOrientation
   METHOD extension
   METHOD setExtension
   METHOD showExtension

   METHOD onAccepted
   METHOD onFinished
   METHOD onRejected

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

/*
bool isSizeGripEnabled () const
*/
$method=|bool|isSizeGripEnabled|

/*
void setSizeGripEnabled ( bool )
*/
$method=|void|setSizeGripEnabled|bool

/*
int result () const
*/
$method=|int|result|

/*
void setModal ( bool modal )
*/
$method=|void|setModal|bool

/*
void setResult ( int i )
*/
$method=|void|setResult|int

/*
QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
virtual void accept ()
*/
$method=|void|accept|

/*
virtual void done ( int r )
*/
$method=|void|done|int

/*
virtual int exec ()
*/
$method=|int|exec|

/*
virtual void open ()
*/
$method=|void|open|

/*
virtual void reject ()
*/
$method=|void|reject|

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
void setOrientation (Qt::Orientation orientation)
*/
$method=|void|setOrientation|Qt::Orientation

/*
QWidget* extension () const
*/
$method=|QWidget *|extension|

/*
void setExtension (QWidget* extension)
*/
$method=|void|setExtension|QWidget *

/*
void showExtension(bool)
*/
$method=|void|showExtension|bool

#pragma ENDDUMP
