%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QLinearGradient INHERIT QGradient

   METHOD new
   METHOD delete
   METHOD finalStop
   METHOD setFinalStop
   METHOD setStart
   METHOD start

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QLinearGradient ()
$internalConstructor=|new1|

$prototype=QLinearGradient ( const QPointF & start, const QPointF & finalStop )
$internalConstructor=|new2|const QPointF &,const QPointF &

$prototype=QLinearGradient ( qreal x1, qreal y1, qreal x2, qreal y2 )
$internalConstructor=|new3|qreal,qreal,qreal,qreal

//[1]QLinearGradient ()
//[2]QLinearGradient ( const QPointF & start, const QPointF & finalStop )
//[3]QLinearGradient ( qreal x1, qreal y1, qreal x2, qreal y2 )

HB_FUNC_STATIC( QLINEARGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QLinearGradient_new1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    QLinearGradient_new2();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QLinearGradient_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QPointF finalStop () const
$method=|QPointF|finalStop|

$prototype=void setFinalStop ( const QPointF & stop )
$internalMethod=|void|setFinalStop,setFinalStop1|const QPointF &

$prototype=void setFinalStop ( qreal x, qreal y )
$internalMethod=|void|setFinalStop,setFinalStop2|qreal,qreal

//[1]void setFinalStop ( const QPointF & stop )
//[2]void setFinalStop ( qreal x, qreal y )

HB_FUNC_STATIC( QLINEARGRADIENT_SETFINALSTOP )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QLinearGradient_setFinalStop1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QLinearGradient_setFinalStop2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setStart ( const QPointF & start )
$internalMethod=|void|setStart,setStart1|const QPointF &

$prototype=void setStart ( qreal x, qreal y )
$internalMethod=|void|setStart,setStart2|qreal,qreal

//[1]void setStart ( const QPointF & start )
//[2]void setStart ( qreal x, qreal y )

HB_FUNC_STATIC( QLINEARGRADIENT_SETSTART )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QLinearGradient_setStart1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QLinearGradient_setStart2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPointF start () const
$method=|QPointF|start|

#pragma ENDDUMP
