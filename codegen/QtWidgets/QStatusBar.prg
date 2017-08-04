$header

#include "hbclass.ch"

CLASS QStatusBar INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD addPermanentWidget
   METHOD addWidget
   METHOD currentMessage
   METHOD insertPermanentWidget
   METHOD insertWidget
   METHOD isSizeGripEnabled
   METHOD removeWidget
   METHOD setSizeGripEnabled
   METHOD clearMessage
   METHOD showMessage

   METHOD onMessageChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QStatusBar ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
void addPermanentWidget ( QWidget * widget, int stretch = 0 )
*/
$method=|void|addPermanentWidget|QWidget *,int=0

/*
void addWidget ( QWidget * widget, int stretch = 0 )
*/
$method=|void|addWidget|QWidget *,int=0

/*
QString currentMessage () const
*/
$method=|QString|currentMessage|

/*
int insertPermanentWidget ( int index, QWidget * widget, int stretch = 0 )
*/
$method=|int|insertPermanentWidget|int,QWidget *,int=0

/*
int insertWidget ( int index, QWidget * widget, int stretch = 0 )
*/
$method=|int|insertWidget|int,QWidget *,int=0

/*
bool isSizeGripEnabled () const
*/
$method=|bool|isSizeGripEnabled|

/*
void removeWidget ( QWidget * widget )
*/
$method=|void|removeWidget|QWidget *

/*
void setSizeGripEnabled ( bool )
*/
$method=|void|setSizeGripEnabled|bool

/*
void clearMessage ()
*/
$method=|void|clearMessage|

/*
void showMessage ( const QString & message, int timeout = 0 )
*/
$method=|void|showMessage|const QString &,int=0

#pragma ENDDUMP
