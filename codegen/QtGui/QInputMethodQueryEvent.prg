$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QInputMethodQueryEvent INHERIT QEvent

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

$prototype=QInputMethodQueryEvent(Qt::InputMethodQueries queries)
$constructor=|new|Qt::InputMethodQueries

$deleteMethod

$prototype=Qt::InputMethodQueries queries() const
$method=|Qt::InputMethodQueries|queries|

$prototype=void setValue(Qt::InputMethodQuery query, const QVariant & value)
$method=|void|setValue|Qt::InputMethodQuery,const QVariant &

$prototype=QVariant value(Qt::InputMethodQuery query) const
$method=|QVariant|value|Qt::InputMethodQuery

#pragma ENDDUMP
