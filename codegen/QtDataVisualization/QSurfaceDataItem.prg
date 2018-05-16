%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD new
   METHOD delete

   METHOD position
   METHOD setPosition
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD x
   METHOD y
   METHOD z

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=QSurfaceDataItem()
$internalConstructor=|new1|

$prototype=QSurfaceDataItem(const QVector3D &position)
$internalConstructor=|new2|const QVector3D &

$prototype=QSurfaceDataItem(const QSurfaceDataItem &other)
$internalConstructor=|new3|const QSurfaceDataItem &

//[1]QSurfaceDataItem()
//[2]QSurfaceDataItem(const QVector3D &position)
//[3]QSurfaceDataItem(const QSurfaceDataItem &other)

HB_FUNC_STATIC( QSURFACEDATAITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSurfaceDataItem_new1();
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QSurfaceDataItem_new2();
  }
  else if( ISNUMPAR(1) && ISQSURFACEDATAITEM(1) )
  {
    QSurfaceDataItem_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QSurfaceDataItem()
$deleteMethod

$prototype=void setPosition(const QVector3D &pos)
$method=|void|setPosition|const QVector3D &

$prototype=QVector3D position() const
$method=|QVector3D|position|

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
