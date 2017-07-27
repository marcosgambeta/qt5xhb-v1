$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QActionEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD action
   METHOD before

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QActionEvent ( int type, QAction * action, QAction * before = 0 )
*/
$constructor=|new|int,QAction *,QAction *=0

$deleteMethod

/*
QAction * action () const
*/
$method=|QAction *|action|

/*
QAction * before () const
*/
$method=|QAction *|before|

#pragma ENDDUMP
