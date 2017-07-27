$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QAccessibleValueChangeEvent INHERIT QAccessibleEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setValue
   METHOD value

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAccessibleValueChangeEvent(QObject *obj, const QVariant &val)
*/
$constructor=|new|QObject *,const QVariant &

$deleteMethod

/*
void setValue(const QVariant & val)
*/
$method=|void|setValue|const QVariant &

/*
QVariant value() const
*/
$method=|QVariant|value|

#pragma ENDDUMP
