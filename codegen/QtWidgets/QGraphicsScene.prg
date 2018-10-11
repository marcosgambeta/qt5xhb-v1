%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests
$addRequest=QGraphicsSceneContextMenuEvent
$addRequest=QGraphicsSceneDragDropEvent
$addRequest=QGraphicsSceneEvent
$addRequest=QGraphicsSceneHelpEvent
$addRequest=QGraphicsSceneHoverEvent
$addRequest=QGraphicsSceneMouseEvent
$addRequest=QGraphicsSceneMoveEvent
$addRequest=QGraphicsSceneResizeEvent
$addRequest=QGraphicsSceneWheelEvent

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>
#include <QPalette>
#include <QGraphicsWidget>
#include <QGraphicsProxyWidget>
#include <QStyle>

$prototype=QGraphicsScene ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QGraphicsScene ( const QRectF & sceneRect, QObject * parent = 0 )
$internalConstructor=|new2|const QRectF &,QObject *=0

$prototype=QGraphicsScene ( qreal x, qreal y, qreal width, qreal height, QObject * parent = 0 )
$internalConstructor=|new3|qreal,qreal,qreal,qreal,QObject *=0

//[1]QGraphicsScene ( QObject * parent = 0 )
//[2]QGraphicsScene ( const QRectF & sceneRect, QObject * parent = 0 )
//[3]QGraphicsScene ( qreal x, qreal y, qreal width, qreal height, QObject * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSSCENE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QGraphicsScene_new1();
  }
  else if( ISBETWEEN(1,2) && ISQRECTF(1) && ISOPTQOBJECT(2) )
  {
    QGraphicsScene_new2();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTQOBJECT(5) )
  {
    QGraphicsScene_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QGraphicsItem * activePanel () const
$method=|QGraphicsItem *|activePanel|

$prototype=QGraphicsWidget * activeWindow () const
$method=|QGraphicsWidget *|activeWindow|

$prototype=QGraphicsEllipseItem * addEllipse ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
$internalMethod=|QGraphicsEllipseItem *|addEllipse,addEllipse1|const QRectF &,const QPen &=QPen(),const QBrush &=QBrush()

$prototype=QGraphicsEllipseItem * addEllipse ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
$internalMethod=|QGraphicsEllipseItem *|addEllipse,addEllipse2|qreal,qreal,qreal,qreal,const QPen &=QPen(),const QBrush &=QBrush()

//[1]QGraphicsEllipseItem * addEllipse ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
//[2]QGraphicsEllipseItem * addEllipse ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )

HB_FUNC_STATIC( QGRAPHICSSCENE_ADDELLIPSE )
{
  if( ISBETWEEN(1,3) && ISQRECTF(1) && (ISQPEN(2)||ISNIL(2)) && (ISQBRUSH(3)||ISNIL(3)) )
  {
    QGraphicsScene_addEllipse1();
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQPEN(5)||ISNIL(5)) && (ISQBRUSH(6)||ISNIL(6)) )
  {
    QGraphicsScene_addEllipse2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addEllipse

$prototype=void addItem ( QGraphicsItem * item )
$method=|void|addItem|QGraphicsItem *

$prototype=QGraphicsLineItem * addLine ( const QLineF & line, const QPen & pen = QPen() )
$internalMethod=|QGraphicsLineItem *|addLine,addLine1|const QLineF &,const QPen &=QPen()

$prototype=QGraphicsLineItem * addLine ( qreal x1, qreal y1, qreal x2, qreal y2, const QPen & pen = QPen() )
$internalMethod=|QGraphicsLineItem *|addLine,addLine2|qreal,qreal,qreal,qreal,const QPen &=QPen()

//[1]QGraphicsLineItem * addLine ( const QLineF & line, const QPen & pen = QPen() )
//[2]QGraphicsLineItem * addLine ( qreal x1, qreal y1, qreal x2, qreal y2, const QPen & pen = QPen() )

HB_FUNC_STATIC( QGRAPHICSSCENE_ADDLINE )
{
  if( ISBETWEEN(1,2) && ISQLINEF(1) && (ISQPEN(2)||ISNIL(2)) )
  {
    QGraphicsScene_addLine1();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQPEN(5)||ISNIL(5)) )
  {
    QGraphicsScene_addLine2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addLine

$prototype=QGraphicsPathItem * addPath ( const QPainterPath & path, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
$method=|QGraphicsPathItem *|addPath|const QPainterPath &,const QPen &=QPen(),const QBrush &=QBrush()

$prototype=QGraphicsPixmapItem * addPixmap ( const QPixmap & pixmap )
$method=|QGraphicsPixmapItem *|addPixmap|const QPixmap &

$prototype=QGraphicsPolygonItem * addPolygon ( const QPolygonF & polygon, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
$method=|QGraphicsPolygonItem *|addPolygon|const QPolygonF &,const QPen &=QPen(),const QBrush &=QBrush()

$prototype=QGraphicsRectItem * addRect ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
$internalMethod=|QGraphicsRectItem *|addRect,addRect1|const QRectF &,const QPen &=QPen(),const QBrush &=QBrush()

$prototype=QGraphicsRectItem * addRect ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
$internalMethod=|QGraphicsRectItem *|addRect,addRect2|qreal,qreal,qreal,qreal,const QPen &=QPen(),const QBrush &=QBrush()

//[1]QGraphicsRectItem * addRect ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
//[2]QGraphicsRectItem * addRect ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )

HB_FUNC_STATIC( QGRAPHICSSCENE_ADDRECT )
{
  if( ISBETWEEN(1,3) && ISQRECTF(1) && (ISQPEN(2)||ISNIL(2)) && (ISQBRUSH(3)||ISNIL(3)) )
  {
    QGraphicsScene_addRect1();
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQPEN(5)||ISNIL(5)) && (ISQBRUSH(6)||ISNIL(6)) )
  {
    QGraphicsScene_addRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addRect

$prototype=QGraphicsSimpleTextItem * addSimpleText ( const QString & text, const QFont & font = QFont() )
$method=|QGraphicsSimpleTextItem *|addSimpleText|const QString &,const QFont &=QFont()

$prototype=QGraphicsTextItem * addText ( const QString & text, const QFont & font = QFont() )
$method=|QGraphicsTextItem *|addText|const QString &,const QFont &=QFont()

$prototype=QGraphicsProxyWidget * addWidget ( QWidget * widget, Qt::WindowFlags wFlags = 0 )
$method=|QGraphicsProxyWidget *|addWidget|QWidget *,Qt::WindowFlags=0

$prototype=QBrush backgroundBrush () const
$method=|QBrush|backgroundBrush|

$prototype=int bspTreeDepth () const
$method=|int|bspTreeDepth|

$prototype=void clearFocus ()
$method=|void|clearFocus|

$prototype=QGraphicsItemGroup * createItemGroup ( const QList<QGraphicsItem *> & items )
$method=|QGraphicsItemGroup *|createItemGroup|const QList<QGraphicsItem *> &

$prototype=void destroyItemGroup ( QGraphicsItemGroup * group )
$method=|void|destroyItemGroup|QGraphicsItemGroup *

$prototype=QGraphicsItem * focusItem () const
$method=|QGraphicsItem *|focusItem|

$prototype=QFont font () const
$method=|QFont|font|

$prototype=QBrush foregroundBrush () const
$method=|QBrush|foregroundBrush|

$prototype=bool hasFocus () const
$method=|bool|hasFocus|

$prototype=qreal height () const
$method=|qreal|height|

$prototype=virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=void invalidate ( qreal x, qreal y, qreal w, qreal h, SceneLayers layers = AllLayers )
$internalMethod=|void|invalidate,invalidate1|qreal,qreal,qreal,qreal,QGraphicsScene::SceneLayers=QGraphicsScene::AllLayers

$prototype=void invalidate ( const QRectF & rect = QRectF(), SceneLayers layers = AllLayers )
$internalMethod=|void|invalidate,invalidate2|const QRectF &=QRectF(),QGraphicsScene::SceneLayers=QGraphicsScene::AllLayers

//[1]void invalidate ( qreal x, qreal y, qreal w, qreal h, SceneLayers layers = AllLayers )
//[2]void invalidate ( const QRectF & rect = QRectF(), SceneLayers layers = AllLayers )

HB_FUNC_STATIC( QGRAPHICSSCENE_INVALIDATE )
{
  if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTNUM(5) )
  {
    QGraphicsScene_invalidate1();
  }
  else if( ISBETWEEN(0,2) && (ISQRECTF(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QGraphicsScene_invalidate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=invalidate

$prototype=bool isActive () const
$method=|bool|isActive|

$prototype=bool isSortCacheEnabled () const
$method=|bool|isSortCacheEnabled|

$prototype=QGraphicsItem * itemAt ( const QPointF & position, const QTransform & deviceTransform ) const
$internalMethod=|QGraphicsItem *|itemAt,itemAt1|const QPointF &,const QTransform &

$prototype=QGraphicsItem * itemAt ( qreal x, qreal y, const QTransform & deviceTransform ) const
$internalMethod=|QGraphicsItem *|itemAt,itemAt2|qreal,qreal,const QTransform &

//[1]QGraphicsItem * itemAt ( const QPointF & position, const QTransform & deviceTransform ) const
//[2]QGraphicsItem * itemAt ( qreal x, qreal y, const QTransform & deviceTransform ) const

HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMAT )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISQTRANSFORM(2) )
  {
    QGraphicsScene_itemAt1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQTRANSFORM(3) )
  {
    QGraphicsScene_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=itemAt

$prototype=ItemIndexMethod itemIndexMethod () const
$method=|QGraphicsScene::ItemIndexMethod|itemIndexMethod|

$prototype=QRectF itemsBoundingRect () const
$method=|QRectF|itemsBoundingRect|

$prototype=QGraphicsItem * mouseGrabberItem () const
$method=|QGraphicsItem *|mouseGrabberItem|

$prototype=QPalette palette () const
$method=|QPalette|palette|

$prototype=void removeItem ( QGraphicsItem * item )
$method=|void|removeItem|QGraphicsItem *

$prototype=void render ( QPainter * painter, const QRectF & target = QRectF(), const QRectF & source = QRectF(), Qt::AspectRatioMode aspectRatioMode = Qt::KeepAspectRatio )
$method=|void|render|QPainter *,const QRectF &=QRectF(),const QRectF &=QRectF(),Qt::AspectRatioMode=Qt::KeepAspectRatio

$prototype=QRectF sceneRect () const
$method=|QRectF|sceneRect|

$prototype=QPainterPath selectionArea () const
$method=|QPainterPath|selectionArea|

$prototype=bool sendEvent ( QGraphicsItem * item, QEvent * event )
$method=|bool|sendEvent|QGraphicsItem *,QEvent *

$prototype=void setActivePanel ( QGraphicsItem * item )
$method=|void|setActivePanel|QGraphicsItem *

$prototype=void setActiveWindow ( QGraphicsWidget * widget )
$method=|void|setActiveWindow|QGraphicsWidget *

$prototype=void setBackgroundBrush ( const QBrush & brush )
$method=|void|setBackgroundBrush|const QBrush &

$prototype=void setBspTreeDepth ( int depth )
$method=|void|setBspTreeDepth|int

$prototype=void setFocus ( Qt::FocusReason focusReason = Qt::OtherFocusReason )
$method=|void|setFocus|Qt::FocusReason=Qt::OtherFocusReason

$prototype=void setFocusItem ( QGraphicsItem * item, Qt::FocusReason focusReason = Qt::OtherFocusReason )
$method=|void|setFocusItem|QGraphicsItem *,Qt::FocusReason=Qt::OtherFocusReason

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=void setForegroundBrush ( const QBrush & brush )
$method=|void|setForegroundBrush|const QBrush &

$prototype=void setItemIndexMethod ( ItemIndexMethod method )
$method=|void|setItemIndexMethod|QGraphicsScene::ItemIndexMethod

$prototype=void setPalette ( const QPalette & palette )
$method=|void|setPalette|const QPalette &

$prototype=void setSceneRect ( const QRectF & rect )
$internalMethod=|void|setSceneRect,setSceneRect1|const QRectF &

$prototype=void setSceneRect ( qreal x, qreal y, qreal w, qreal h )
$internalMethod=|void|setSceneRect,setSceneRect2|qreal,qreal,qreal,qreal

//[1]void setSceneRect ( const QRectF & rect )
//[2]void setSceneRect ( qreal x, qreal y, qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSSCENE_SETSCENERECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsScene_setSceneRect1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsScene_setSceneRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSceneRect

$prototype=void setSelectionArea ( const QPainterPath & path, const QTransform & deviceTransform )
$internalMethod=|void|setSelectionArea,setSelectionArea1|const QPainterPath &,const QTransform &

$prototype=void setSelectionArea ( const QPainterPath & path, Qt::ItemSelectionMode mode, const QTransform & deviceTransform )
$internalMethod=|void|setSelectionArea,setSelectionArea2|const QPainterPath &,Qt::ItemSelectionMode,const QTransform &

//[1]void setSelectionArea ( const QPainterPath & path, const QTransform & deviceTransform )
//[2]void setSelectionArea ( const QPainterPath & path, Qt::ItemSelectionMode mode, const QTransform & deviceTransform )

HB_FUNC_STATIC( QGRAPHICSSCENE_SETSELECTIONAREA )
{
  if( ISNUMPAR(2) && ISQPAINTERPATH(1) && ISQTRANSFORM(2) )
  {
    QGraphicsScene_setSelectionArea1();
  }
  else if( ISNUMPAR(3) && ISQPAINTERPATH(1) && ISNUM(2) && ISQTRANSFORM(3) )
  {
    QGraphicsScene_setSelectionArea2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSelectionArea

$prototype=void setSortCacheEnabled ( bool enabled )
$method=|void|setSortCacheEnabled|bool

$prototype=void setStickyFocus ( bool enabled )
$method=|void|setStickyFocus|bool

$prototype=void setStyle ( QStyle * style )
$method=|void|setStyle|QStyle *

$prototype=bool stickyFocus () const
$method=|bool|stickyFocus|

$prototype=QStyle * style () const
$method=|QStyle *|style|

$prototype=void update ( qreal x, qreal y, qreal w, qreal h )
$internalMethod=|void|update,update1|qreal,qreal,qreal,qreal

$prototype=void update ( const QRectF & rect = QRectF() )
$internalMethod=|void|update,update2|const QRectF &=QRectF()

//[1]void update ( qreal x, qreal y, qreal w, qreal h )
//[2]void update ( const QRectF & rect = QRectF() )

HB_FUNC_STATIC( QGRAPHICSSCENE_UPDATE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsScene_update1();
  }
  else if( ISBETWEEN(0,1) && (ISQRECTF(1)||ISNIL(1)) )
  {
    QGraphicsScene_update2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=update

$prototype=qreal width () const
$method=|qreal|width|

$prototype=void advance ()
$method=|void|advance|

$prototype=void clear ()
$method=|void|clear|

$prototype=void clearSelection ()
$method=|void|clearSelection|

$beginSignals
$signal=|changed(QList<QRectF>)
$signal=|sceneRectChanged(QRectF)
$signal=|selectionChanged()
$endSignals

#pragma ENDDUMP
