$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QGRAPHICSITEM
REQUEST QPOINT
REQUEST QPOLYGON
REQUEST QPAINTERPATH
REQUEST QPOINTF
REQUEST QPOLYGONF
REQUEST QMATRIX
REQUEST QGRAPHICSSCENE
REQUEST QRECTF
REQUEST QTRANSFORM
REQUEST QVARIANT
REQUEST QSIZE
#endif

CLASS QGraphicsView INHERIT QAbstractScrollArea

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD backgroundBrush
   METHOD cacheMode
   METHOD centerOn
   METHOD dragMode
   METHOD ensureVisible
   METHOD fitInView
   METHOD foregroundBrush
   METHOD isInteractive
   METHOD isTransformed
   METHOD itemAt
   METHOD mapFromScene
   METHOD mapToScene
   METHOD matrix
   METHOD optimizationFlags
   METHOD render
   METHOD renderHints
   METHOD resetCachedContent
   METHOD resetMatrix
   METHOD resetTransform
   METHOD resizeAnchor
   METHOD rotate
   METHOD rubberBandSelectionMode
   METHOD scale
   METHOD scene
   METHOD sceneRect
   METHOD setAlignment
   METHOD setBackgroundBrush
   METHOD setCacheMode
   METHOD setDragMode
   METHOD setForegroundBrush
   METHOD setInteractive
   METHOD setMatrix
   METHOD setOptimizationFlag
   METHOD setOptimizationFlags
   METHOD setRenderHint
   METHOD setRenderHints
   METHOD setResizeAnchor
   METHOD setRubberBandSelectionMode
   METHOD setScene
   METHOD setSceneRect
   METHOD setTransform
   METHOD setTransformationAnchor
   METHOD setViewportUpdateMode
   METHOD shear
   METHOD transform
   METHOD transformationAnchor
   METHOD translate
   METHOD viewportTransform
   METHOD viewportUpdateMode
   METHOD inputMethodQuery
   METHOD sizeHint
   METHOD invalidateScene
   METHOD updateScene
   METHOD updateSceneRect

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>

/*
QGraphicsView ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
QGraphicsView ( QGraphicsScene * scene, QWidget * parent = 0 )
*/
$internalConstructor=|new2|QGraphicsScene *,QWidget *=0

//[1]QGraphicsView ( QWidget * parent = 0 )
//[2]QGraphicsView ( QGraphicsScene * scene, QWidget * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSVIEW_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QGraphicsView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQGRAPHICSSCENE(1) && ISOPTQWIDGET(2) )
  {
    QGraphicsView_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Qt::Alignment alignment () const
*/
$method=|Qt::Alignment|alignment|

/*
QBrush backgroundBrush () const
*/
$method=|QBrush|backgroundBrush|

/*
CacheMode cacheMode () const
*/
$method=|QGraphicsView::CacheMode|cacheMode|

/*
void centerOn ( const QPointF & pos )
*/
$internalMethod=|void|centerOn,centerOn1|const QPointF &

/*
void centerOn ( qreal x, qreal y )
*/
$internalMethod=|void|centerOn,centeron2|qreal,qreal

/*
void centerOn ( const QGraphicsItem * item )
*/
$internalMethod=|void|centerOn,centerOn3|const QGraphicsItem *

//[1]void centerOn ( const QPointF & pos )
//[2]void centerOn ( qreal x, qreal y )
//[3]void centerOn ( const QGraphicsItem * item )

HB_FUNC_STATIC( QGRAPHICSVIEW_CENTERON )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsView_centeron1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsView_centeron2();
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSITEM(1) )
  {
    QGraphicsView_centeron3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
DragMode dragMode () const
*/
$method=|QGraphicsView::DragMode|dragMode|

/*
void ensureVisible ( const QRectF & rect, int xmargin = 50, int ymargin = 50 )
*/
$internalMethod=|void|ensureVisible,ensureVisible1|const QRectF &,int=50,int=50

/*
void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
*/
$internalMethod=|void|ensureVisible,ensureVisible2|qreal,qreal,qreal,qreal,int=50,int=50

/*
void ensureVisible ( const QGraphicsItem * item, int xmargin = 50, int ymargin = 50 )
*/
$internalMethod=|void|ensureVisible,ensureVisible3|const QGraphicsItem *,int=50,int=50

//[1]void ensureVisible ( const QRectF & rect, int xmargin = 50, int ymargin = 50 )
//[2]void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
//[3]void ensureVisible ( const QGraphicsItem * item, int xmargin = 50, int ymargin = 50 )

HB_FUNC_STATIC( QGRAPHICSVIEW_ENSUREVISIBLE )
{
  if( ISBETWEEN(1,3) && ISQRECTF(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QGraphicsView_ensureVisible1();
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTNUM(5) && ISOPTNUM(6) )
  {
    QGraphicsView_ensureVisible2();
  }
  else if( ISBETWEEN(1,3) && ISOBJECT(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QGraphicsView_ensureVisible3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void fitInView ( const QRectF & rect, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
*/
$internalMethod=|void|fitInView,fitInView1|const QRectF &,Qt::AspectRatioMode=Qt::IgnoreAspectRatio

/*
void fitInView ( qreal x, qreal y, qreal w, qreal h, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
*/
$internalMethod=|void|fitInView,fitInView2|qreal,qreal,qreal,qreal,Qt::AspectRatioMode=Qt::IgnoreAspectRatio

/*
void fitInView ( const QGraphicsItem * item, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
*/
$internalMethod=|void|fitInView,fitInView3|const QGraphicsItem *,Qt::AspectRatioMode=Qt::IgnoreAspectRatio

//[1]void fitInView ( const QRectF & rect, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
//[2]void fitInView ( qreal x, qreal y, qreal w, qreal h, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
//[3]void fitInView ( const QGraphicsItem * item, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )

HB_FUNC_STATIC( QGRAPHICSVIEW_FITINVIEW )
{
  if( ISBETWEEN(1,2) && ISQRECTF(1) && ISOPTNUM(2) )
  {
    QGraphicsView_fitInView1();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTNUM(5) )
  {
    QGraphicsView_fitInView2();
  }
  else if( ISBETWEEN(1,2) && ISOBJECT(1) && ISOPTNUM(2) )
  {
    QGraphicsView_fitInView3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QBrush foregroundBrush () const
*/
$method=|QBrush|foregroundBrush|

/*
bool isInteractive () const
*/
$method=|bool|isInteractive|

/*
bool isTransformed () const
*/
$method=|bool|isTransformed|

/*
QGraphicsItem * itemAt ( const QPoint & pos ) const
*/
$internalMethod=|QGraphicsItem *|itemAt,itemAt1|const QPoint &

/*
QGraphicsItem * itemAt ( int x, int y ) const
*/
$method=|QGraphicsItem *|itemAt,itemAt2|int,int

//[1]QGraphicsItem * itemAt ( const QPoint & pos ) const
//[2]QGraphicsItem * itemAt ( int x, int y ) const

HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QGraphicsView_itemAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsView_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPoint mapFromScene ( const QPointF & point ) const
*/
$internalMethod=|QPoint|mapFromScene,mapFromScene1|const QPointF &

/*
QPolygon mapFromScene ( const QRectF & rect ) const
*/
$internalMethod=|QPolygon|mapFromScene,mapFromScene2|const QRectF &

/*
QPolygon mapFromScene ( const QPolygonF & polygon ) const
*/
$internalMethod=|QPolygon|mapFromScene,mapFromScene3|const QPolygonF &

/*
QPainterPath mapFromScene ( const QPainterPath & path ) const
*/
$internalMethod=|QPainterPath|mapFromScene,mapFromScene4|const QPainterPath &

/*
QPoint mapFromScene ( qreal x, qreal y ) const
*/
$internalMethod=|QPoint|mapFromScene,mapFromScene5|qreal,qreal

/*
QPolygon mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
$internalMethod=|QPolygon|mapFromScene,mapFromScene6|qreal,qreal,qreal,qreal

//[1]QPoint mapFromScene ( const QPointF & point ) const
//[2]QPolygon mapFromScene ( const QRectF & rect ) const
//[3]QPolygon mapFromScene ( const QPolygonF & polygon ) const
//[4]QPainterPath mapFromScene ( const QPainterPath & path ) const
//[5]QPoint mapFromScene ( qreal x, qreal y ) const
//[6]QPolygon mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsView_mapFromScene1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsView_mapFromScene2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QGraphicsView_mapFromScene3();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QGraphicsView_mapFromScene4();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsView_mapFromScene5();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsView_mapFromScene6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF mapToScene ( const QPoint & point ) const
*/
$internalMethod=|QPointF|mapToScene,mapToScene1|const QPoint &

/*
QPolygonF mapToScene ( const QRect & rect ) const
*/
$internalMethod=|QPolygonF|mapToScene,mapToScene2|const QRect &

/*
QPolygonF mapToScene ( const QPolygon & polygon ) const
*/
$internalMethod=|QPolygonF|mapToScene,mapToScene3|const QPolygon &

/*
QPainterPath mapToScene ( const QPainterPath & path ) const
*/
$internalMethod=|QPainterPath|mapToScene,mapToScene4|const QPainterPath &

/*
QPointF mapToScene ( int x, int y ) const
*/
$internalMethod=|QPointF|mapToScene,mapToScene5|int,int

/*
QPolygonF mapToScene ( int x, int y, int w, int h ) const
*/
$internalMethod=|QPolygonF|mapToScene,mapToScene6|int,int,int,int

//[1]QPointF mapToScene ( const QPoint & point ) const
//[2]QPolygonF mapToScene ( const QRect & rect ) const
//[3]QPolygonF mapToScene ( const QPolygon & polygon ) const
//[4]QPainterPath mapToScene ( const QPainterPath & path ) const
//[5]QPointF mapToScene ( int x, int y ) const
//[6]QPolygonF mapToScene ( int x, int y, int w, int h ) const

HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QGraphicsView_mapToScene1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QGraphicsView_mapToScene2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QGraphicsView_mapToScene3();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QGraphicsView_mapToScene4();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsView_mapToScene5();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsView_mapToScene6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QMatrix matrix () const
*/
$method=|QMatrix|matrix|

/*
OptimizationFlags optimizationFlags () const
*/
$method=|QGraphicsView::OptimizationFlags|optimizationFlags|

/*
void render ( QPainter * painter, const QRectF & target = QRectF(), const QRect & source = QRect(), Qt::AspectRatioMode aspectRatioMode = Qt::KeepAspectRatio )
*/
$method=|void|render|QPainter *,const QRectF &=QRectF(),const QRect &=QRect(),Qt::AspectRatioMode=Qt::KeepAspectRatio

/*
QPainter::RenderHints renderHints () const
*/
$method=|QPainter::RenderHints|renderHints|

/*
void resetCachedContent ()
*/
$method=|void|resetCachedContent|

/*
void resetMatrix ()
*/
$method=|void|resetMatrix|

/*
void resetTransform ()
*/
$method=|void|resetTransform|

/*
ViewportAnchor resizeAnchor () const
*/
$method=|QGraphicsView::ViewportAnchor|resizeAnchor|

/*
void rotate ( qreal angle )
*/
$method=|void|rotate|qreal

/*
Qt::ItemSelectionMode rubberBandSelectionMode () const
*/
$method=|Qt::ItemSelectionMode|rubberBandSelectionMode|

/*
void scale ( qreal sx, qreal sy )
*/
$method=|void|scale|qreal,qreal

/*
QGraphicsScene * scene () const
*/
$method=|QGraphicsScene *|scene|

/*
QRectF sceneRect () const
*/
$method=|QRectF|sceneRect|

/*
void setAlignment ( Qt::Alignment alignment )
*/
$method=|void|setAlignment|Qt::Alignment

/*
void setBackgroundBrush ( const QBrush & brush )
*/
$method=|void|setBackgroundBrush|const QBrush &

/*
void setCacheMode ( CacheMode mode )
*/
$method=|void|setCacheMode|QGraphicsView::CacheMode

/*
void setDragMode ( DragMode mode )
*/
$method=|void|setDragMode|QGraphicsView::DragMode

/*
void setForegroundBrush ( const QBrush & brush )
*/
$method=|void|setForegroundBrush|const QBrush &

/*
void setInteractive ( bool allowed )
*/
$method=|void|setInteractive|bool

/*
void setMatrix ( const QMatrix & matrix, bool combine = false )
*/
$method=|void|setMatrix|const QMatrix &,bool=false

/*
void setOptimizationFlag ( OptimizationFlag flag, bool enabled = true )
*/
$method=|void|setOptimizationFlag|QGraphicsView::OptimizationFlag,bool=true

/*
void setOptimizationFlags ( OptimizationFlags flags )
*/
$method=|void|setOptimizationFlags|QGraphicsView::OptimizationFlags

/*
void setRenderHint ( QPainter::RenderHint hint, bool enabled = true )
*/
$method=|void|setRenderHint|QPainter::RenderHint,bool=true

/*
void setRenderHints ( QPainter::RenderHints hints )
*/
$method=|void|setRenderHints|QPainter::RenderHints

/*
void setResizeAnchor ( ViewportAnchor anchor )
*/
$method=|void|setResizeAnchor|QGraphicsView::ViewportAnchor

/*
void setRubberBandSelectionMode ( Qt::ItemSelectionMode mode )
*/
$method=|void|setRubberBandSelectionMode|Qt::ItemSelectionMode

/*
void setScene ( QGraphicsScene * scene )
*/
$method=|void|setScene|QGraphicsScene *

/*
void setSceneRect ( const QRectF & rect )
*/
$internalMethod=|void|setSceneRect,setSceneRect1|const QRectF &

/*
void setSceneRect ( qreal x, qreal y, qreal w, qreal h )
*/
$internalMethod=|void|setSceneRect,setSceneRect2|qreal,qreal,qreal,qreal

//[1]void setSceneRect ( const QRectF & rect )
//[2]void setSceneRect ( qreal x, qreal y, qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSVIEW_SETSCENERECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsView_setSceneRect1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsView_setSceneRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setTransform ( const QTransform & matrix, bool combine = false )
*/
$method=|void|setTransform|const QTransform &,bool=false

/*
void setTransformationAnchor ( ViewportAnchor anchor )
*/
$method=|void|setTransformationAnchor|QGraphicsView::ViewportAnchor

/*
void setViewportUpdateMode ( ViewportUpdateMode mode )
*/
$method=|void|setViewportUpdateMode|QGraphicsView::ViewportUpdateMode

/*
void shear ( qreal sh, qreal sv )
*/
$method=|void|shear|qreal,qreal

/*
QTransform transform () const
*/
$method=|QTransform|transform|

/*
ViewportAnchor transformationAnchor () const
*/
$method=|QGraphicsView::ViewportAnchor|transformationAnchor|

/*
void translate ( qreal dx, qreal dy )
*/
$method=|void|translate|qreal,qreal

/*
QTransform viewportTransform () const
*/
$method=|QTransform|viewportTransform|

/*
ViewportUpdateMode viewportUpdateMode () const
*/
$method=|QGraphicsView::ViewportUpdateMode|viewportUpdateMode|

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void invalidateScene ( const QRectF & rect = QRectF(), QGraphicsScene::SceneLayers layers = QGraphicsScene::AllLayers )
*/
$method=|void|invalidateScene|const QRectF &=QRectF(),QGraphicsScene::SceneLayers=QGraphicsScene::AllLayers

/*
void updateScene ( const QList<QRectF> & rects )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_UPDATESCENE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      QList<QRectF> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->updateScene ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void updateSceneRect ( const QRectF & rect )
*/
$method=|void|updateSceneRect|const QRectF &

#pragma ENDDUMP
