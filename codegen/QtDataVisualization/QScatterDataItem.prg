%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QScatterDataItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD position
   METHOD rotation
   METHOD setPosition
   METHOD setRotation
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD x
   METHOD y
   METHOD z

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

using namespace QtDataVisualization;

$prototype=QScatterDataItem()
$internalConstructor=|new1|

$prototype=QScatterDataItem(const QVector3D &position)
$internalConstructor=|new2|const QVector3D &

$prototype=QScatterDataItem(const QVector3D &position, const QQuaternion &rotation)
$internalConstructor=|new3|const QVector3D &,const QQuaternion &

$prototype=QScatterDataItem(const QScatterDataItem &other)
$internalConstructor=|new4|const QScatterDataItem &

//[1]QScatterDataItem()
//[2]QScatterDataItem(const QVector3D &position)
//[3]QScatterDataItem(const QVector3D &position, const QQuaternion &rotation)
//[4]QScatterDataItem(const QScatterDataItem &other)

HB_FUNC_STATIC( QSCATTERDATAITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QScatterDataItem_new1();
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QScatterDataItem_new2();
  }
  else if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQQUATERNION(2) )
  {
    QScatterDataItem_new3();
  }
  else if( ISNUMPAR(1) && ISQSCATTERDATAITEM(1) )
  {
    QScatterDataItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QScatterDataItem()
$deleteMethod

$prototype=void setPosition(const QVector3D &pos)
$method=|void|setPosition|const QVector3D &

$prototype=QVector3D position() const
$method=|QVector3D|position|

$prototype=void setRotation(const QQuaternion &rot)
$method=|void|setRotation|const QQuaternion &

$prototype=QQuaternion rotation() const
$method=|QQuaternion|rotation|

$prototype=void setX(float value)
$method=|void|setX|float

$prototype=void setY(float value)
$method=|void|setY|float

$prototype=void setZ(float value)
$method=|void|setZ|float

$prototype=float x() const
$method=|float|x|

$prototype=float y() const
$method=|float|y|

$prototype=float z() const
$method=|float|z|

$prototype=void createExtraData() (protected)

$extraMethods

#pragma ENDDUMP
