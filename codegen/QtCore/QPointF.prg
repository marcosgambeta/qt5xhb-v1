%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QPointF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD manhattanLength
   METHOD setX
   METHOD setY
   METHOD toPoint
   METHOD x
   METHOD y

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

$prototype=QPointF()
$internalConstructor=|new1|

$prototype=QPointF(const QPoint & point)
$internalConstructor=|new2|const QPoint &

$prototype=QPointF(qreal xpos, qreal ypos)
$internalConstructor=|new3|qreal,qreal

//[1]QPointF()
//[2]QPointF(const QPoint & point)
//[3]QPointF(qreal xpos, qreal ypos)

HB_FUNC_STATIC( QPOINTF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPointF_new1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QPointF_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPointF_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=qreal manhattanLength() const
$method=|qreal|manhattanLength|

$prototype=void setX(qreal x)
$method=|void|setX|qreal

$prototype=void setY(qreal y)
$method=|void|setY|qreal

$prototype=QPoint toPoint() const
$method=|QPoint|toPoint|

$prototype=qreal x() const
$method=|qreal|x|

$prototype=qreal y() const
$method=|qreal|y|

$extraMethods

#pragma ENDDUMP
