%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QGEOCOORDINATE
#endif

$beginClass

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

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QGeoPositionInfo()
$constructor=5,2,0|new1|

$prototype=QGeoPositionInfo(const QGeoCoordinate &coordinate, const QDateTime &updateTime)
$constructor=5,2,0|new2|const QGeoCoordinate &,const QDateTime &

$prototype=QGeoPositionInfo(const QGeoPositionInfo &other)
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

$prototype=bool isValid() const
$method=5,2,0|bool|isValid|

$prototype=void setTimestamp(const QDateTime &timestamp)
$method=5,2,0|void|setTimestamp|const QDateTime &

$prototype=QDateTime timestamp() const
$method=5,2,0|QDateTime|timestamp|

$prototype=void setCoordinate(const QGeoCoordinate &coordinate)
$method=5,2,0|void|setCoordinate|const QGeoCoordinate &

$prototype=QGeoCoordinate coordinate() const
$method=5,2,0|QGeoCoordinate|coordinate|

$prototype=void setAttribute(Attribute attribute, qreal value)
$method=5,2,0|void|setAttribute|QGeoPositionInfo::Attribute,qreal

$prototype=qreal attribute(Attribute attribute) const
$method=5,2,0|qreal|attribute|QGeoPositionInfo::Attribute

$prototype=void removeAttribute(Attribute attribute)
$method=5,2,0|void|removeAttribute|QGeoPositionInfo::Attribute

$prototype=bool hasAttribute(Attribute attribute) const
$method=5,2,0|bool|hasAttribute|QGeoPositionInfo::Attribute

$extraMethods

#pragma ENDDUMP
