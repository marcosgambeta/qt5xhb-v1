$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QScrollerProperties

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD scrollMetric
   METHOD setScrollMetric
   METHOD setDefaultScrollerProperties
   METHOD unsetDefaultScrollerProperties

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QScrollerProperties()
*/
$internalConstructor=|new1|

/*
QScrollerProperties(const QScrollerProperties & sp)
*/
$internalConstructor=|new2|const QScrollerProperties &

//[1]QScrollerProperties()
//[2]QScrollerProperties(const QScrollerProperties & sp)

HB_FUNC_STATIC( QSCROLLERPROPERTIES_NEW )
{
  if( ISNUMPAR(0) )
  {
    QScrollerProperties_new1();
  }
  else if( ISNUMPAR(1) && ISQSCROLLERPROPERTIES(1) )
  {
    QScrollerProperties_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QVariant scrollMetric(ScrollMetric metric) const
*/
$method=|QVariant|scrollMetric|QScrollerProperties::ScrollMetric

/*
void setScrollMetric(ScrollMetric metric, const QVariant & value)
*/
$method=|void|setScrollMetric|QScrollerProperties::ScrollMetric,const QVariant &

/*
void setDefaultScrollerProperties(const QScrollerProperties & sp)
*/
$method=|void|setDefaultScrollerProperties|const QScrollerProperties &

/*
void unsetDefaultScrollerProperties()
*/
$method=|void|unsetDefaultScrollerProperties|

$extraMethods

#pragma ENDDUMP
