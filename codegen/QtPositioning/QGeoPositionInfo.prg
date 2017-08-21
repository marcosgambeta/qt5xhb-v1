$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QGEOCOORDINATE
#endif

CLASS QGeoPositionInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setTimestamp
   METHOD timestamp
   METHOD setCoordinate
   METHOD coordinate
   METHOD setAttribute
   METHOD attribute
   METHOD removeAttribute
   METHOD hasAttribute

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QGeoPositionInfo()
*/
$constructor=5,2,0|new1|

/*
QGeoPositionInfo(const QGeoCoordinate &coordinate, const QDateTime &updateTime)
*/
$constructor=5,2,0|new2|const QGeoCoordinate &,const QDateTime &

/*
QGeoPositionInfo(const QGeoPositionInfo &other)
*/
$constructor=5,2,0|new3|const QGeoPositionInfo &

//[1]QGeoPositionInfo()
//[2]QGeoPositionInfo(const QGeoCoordinate &coordinate, const QDateTime &updateTime)
//[3]QGeoPositionInfo(const QGeoPositionInfo &other)

HB_FUNC_STATIC( QGEOPOSITIONINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOPOSITIONINFO_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQGEOCOORDINATE(1) && ISQDATETIME(2) )
  {
    HB_FUNC_EXEC( QGEOPOSITIONINFO_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQGEOPOSITIONINFO(1) )
  {
    HB_FUNC_EXEC( QGEOPOSITIONINFO_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
bool isValid() const
*/
$method=5,2,0|bool|isValid|

/*
void setTimestamp(const QDateTime &timestamp)
*/
$method=5,2,0|void|setTimestamp|const QDateTime &

/*
QDateTime timestamp() const
*/
$method=5,2,0|QDateTime|timestamp|

/*
void setCoordinate(const QGeoCoordinate &coordinate)
*/
$method=5,2,0|void|setCoordinate|const QGeoCoordinate &

/*
QGeoCoordinate coordinate() const
*/
$method=5,2,0|QGeoCoordinate|coordinate|

/*
void setAttribute(Attribute attribute, qreal value)
*/
$method=5,2,0|void|setAttribute|QGeoPositionInfo::Attribute,qreal

/*
qreal attribute(Attribute attribute) const
*/
$method=5,2,0|qreal|attribute|QGeoPositionInfo::Attribute

/*
void removeAttribute(Attribute attribute)
*/
$method=5,2,0|void|removeAttribute|QGeoPositionInfo::Attribute

/*
bool hasAttribute(Attribute attribute) const
*/
$method=5,2,0|bool|hasAttribute|QGeoPositionInfo::Attribute

$extraMethods

#pragma ENDDUMP
