%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPositioning

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QGeoPositionInfo()
$internalConstructor=5,2,0|new1|

$prototype=QGeoPositionInfo(const QGeoCoordinate &coordinate, const QDateTime &updateTime)
$internalConstructor=5,2,0|new2|const QGeoCoordinate &,const QDateTime &

$prototype=QGeoPositionInfo(const QGeoPositionInfo &other)
$internalConstructor=5,2,0|new3|const QGeoPositionInfo &

//[1]QGeoPositionInfo()
//[2]QGeoPositionInfo(const QGeoCoordinate &coordinate, const QDateTime &updateTime)
//[3]QGeoPositionInfo(const QGeoPositionInfo &other)

HB_FUNC_STATIC( QGEOPOSITIONINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoPositionInfo_new1();
  }
  else if( ISNUMPAR(2) && ISQGEOCOORDINATE(1) && ISQDATETIME(2) )
  {
    QGeoPositionInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQGEOPOSITIONINFO(1) )
  {
    QGeoPositionInfo_new3();
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
