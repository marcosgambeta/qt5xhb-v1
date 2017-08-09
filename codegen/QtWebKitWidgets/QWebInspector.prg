$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBPAGE
REQUEST QSIZE
#endif

CLASS QWebInspector INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD page
   METHOD setPage
   METHOD event
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QWebInspector ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
QWebPage * page () const
*/
$method=|QWebPage *|page|

/*
void setPage ( QWebPage * page )
*/
$method=|void|setPage|QWebPage *

/*
virtual bool event ( QEvent * ev )
*/
$method=|bool|event|QEvent *

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

#pragma ENDDUMP
