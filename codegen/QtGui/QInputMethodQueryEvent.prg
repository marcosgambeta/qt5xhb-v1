$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QInputMethodQueryEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD queries
   METHOD setValue
   METHOD value

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QInputMethodQueryEvent(Qt::InputMethodQueries queries)
*/
$constructor=|new|Qt::InputMethodQueries

$deleteMethod

/*
Qt::InputMethodQueries queries() const
*/
$method=|Qt::InputMethodQueries|queries|

/*
void setValue(Qt::InputMethodQuery query, const QVariant & value)
*/
$method=|void|setValue|Qt::InputMethodQuery,const QVariant &

/*
QVariant value(Qt::InputMethodQuery query) const
*/
$method=|QVariant|value|Qt::InputMethodQuery

#pragma ENDDUMP
