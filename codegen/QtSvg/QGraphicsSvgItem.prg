%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QSvgRenderer>

$prototype=QGraphicsSvgItem ( QGraphicsItem * parent = 0 )
$internalConstructor=|new1|QGraphicsItem *=0

$prototype=QGraphicsSvgItem ( const QString & fileName, QGraphicsItem * parent = 0 )
$internalConstructor=|new2|const QString &,QGraphicsItem *=0

//[1]QGraphicsSvgItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsSvgItem ( const QString & fileName, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSSVGITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsSvgItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsSvgItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString elementId () const
$method=|QString|elementId|

$prototype=QSize maximumCacheSize () const
$method=|QSize|maximumCacheSize|

$prototype=QSvgRenderer * renderer () const
$method=|QSvgRenderer *|renderer|

$prototype=void setElementId ( const QString & id )
$method=|void|setElementId|const QString &

$prototype=void setMaximumCacheSize ( const QSize & size )
$method=|void|setMaximumCacheSize|const QSize &

$prototype=void setSharedRenderer ( QSvgRenderer * renderer )
$method=|void|setSharedRenderer|QSvgRenderer *

$prototype=virtual QRectF boundingRect () const
$virtualMethod=|QRectF|boundingRect|

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

$prototype=virtual int type () const
$virtualMethod=|int|type|

#pragma ENDDUMP
