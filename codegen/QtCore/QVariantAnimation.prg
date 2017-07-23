$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QEASINGCURVE
#endif

CLASS QVariantAnimation INHERIT QAbstractAnimation

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD currentValue
   METHOD easingCurve
   METHOD endValue
   METHOD keyValueAt
   METHOD setDuration
   METHOD setEasingCurve
   METHOD setEndValue
   METHOD setKeyValueAt
   METHOD setStartValue
   METHOD startValue

   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QVariant currentValue () const
*/
$method=|QVariant|currentValue|

/*
QEasingCurve easingCurve () const
*/
$method=|QEasingCurve|easingCurve|

/*
QVariant endValue () const
*/
$method=|QVariant|endValue|

/*
QVariant keyValueAt ( qreal step ) const
*/
$method=|QVariant|keyValueAt|qreal

/*
void setDuration ( int msecs )
*/
$method=|void|setDuration|int

/*
void setEasingCurve ( const QEasingCurve & easing )
*/
$method=|void|setEasingCurve|const QEasingCurve &

/*
void setEndValue ( const QVariant & value )
*/
$method=|void|setEndValue|const QVariant &

/*
void setKeyValueAt ( qreal step, const QVariant & value )
*/
$method=|void|setKeyValueAt|qreal,const QVariant &

/*
void setStartValue ( const QVariant & value )
*/
$method=|void|setStartValue|const QVariant &

/*
QVariant startValue () const
*/
$method=|QVariant|startValue|

#pragma ENDDUMP
