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

   DATA self_destruction INIT .F.

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
void QGraphicsView_new1 ()
{
  QGraphicsView * o = new QGraphicsView ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGraphicsView ( QGraphicsScene * scene, QWidget * parent = 0 )
*/
void QGraphicsView_new2 ()
{
  QGraphicsView * o = new QGraphicsView ( PQGRAPHICSSCENE(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

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
HB_FUNC_STATIC( QGRAPHICSVIEW_ALIGNMENT )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->alignment () );
  }
}

/*
QBrush backgroundBrush () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_BACKGROUNDBRUSH )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBrush * ptr = new QBrush( obj->backgroundBrush () );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
CacheMode cacheMode () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_CACHEMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->cacheMode () );
  }
}

/*
void centerOn ( const QPointF & pos )
*/
void QGraphicsView_centeron1 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->centerOn ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void centerOn ( qreal x, qreal y )
*/
void QGraphicsView_centeron2 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->centerOn ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void centerOn ( const QGraphicsItem * item )
*/
void QGraphicsView_centeron3 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    obj->centerOn ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QGRAPHICSVIEW_DRAGMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->dragMode () );
  }
}

/*
void ensureVisible ( const QRectF & rect, int xmargin = 50, int ymargin = 50 )
*/
void QGraphicsView_ensureVisible1 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ensureVisible ( *PQRECTF(1), OPINT(2,50), OPINT(3,50) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
*/
void QGraphicsView_ensureVisible2 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ensureVisible ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), OPINT(5,50), OPINT(6,50) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ensureVisible ( const QGraphicsItem * item, int xmargin = 50, int ymargin = 50 )
*/
void QGraphicsView_ensureVisible3 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    obj->ensureVisible ( par1, OPINT(2,50), OPINT(3,50) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
void QGraphicsView_fitInView1 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::IgnoreAspectRatio : hb_parni(2);
    obj->fitInView ( *PQRECTF(1), (Qt::AspectRatioMode) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fitInView ( qreal x, qreal y, qreal w, qreal h, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
*/
void QGraphicsView_fitInView2 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par5 = ISNIL(5)? (int) Qt::IgnoreAspectRatio : hb_parni(5);
    obj->fitInView ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), (Qt::AspectRatioMode) par5 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fitInView ( const QGraphicsItem * item, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
*/
void QGraphicsView_fitInView3 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::IgnoreAspectRatio : hb_parni(2);
    obj->fitInView ( par1, (Qt::AspectRatioMode) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QGRAPHICSVIEW_FOREGROUNDBRUSH )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBrush * ptr = new QBrush( obj->foregroundBrush () );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

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
void QGraphicsView_itemAt1 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * ptr = obj->itemAt ( *PQPOINT(1) );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

/*
QGraphicsItem * itemAt ( int x, int y ) const
*/
void QGraphicsView_itemAt2 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QGraphicsItem * ptr = obj->itemAt ( PINT(1), PINT(2) );
      _qt5xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

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
void QGraphicsView_mapFromScene1 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->mapFromScene ( *PQPOINTF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPolygon mapFromScene ( const QRectF & rect ) const
*/
void QGraphicsView_mapFromScene2 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->mapFromScene ( *PQRECTF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}

/*
QPolygon mapFromScene ( const QPolygonF & polygon ) const
*/
void QGraphicsView_mapFromScene3 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->mapFromScene ( *PQPOLYGONF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}

/*
QPainterPath mapFromScene ( const QPainterPath & path ) const
*/
void QGraphicsView_mapFromScene4 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->mapFromScene ( *PQPAINTERPATH(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPoint mapFromScene ( qreal x, qreal y ) const
*/
void QGraphicsView_mapFromScene5 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->mapFromScene ( PQREAL(1), PQREAL(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPolygon mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
void QGraphicsView_mapFromScene6 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->mapFromScene ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}

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
void QGraphicsView_mapToScene1 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapToScene ( *PQPOINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapToScene ( const QRect & rect ) const
*/
void QGraphicsView_mapToScene2 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapToScene ( *PQRECT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF mapToScene ( const QPolygon & polygon ) const
*/
void QGraphicsView_mapToScene3 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapToScene ( *PQPOLYGON(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPainterPath mapToScene ( const QPainterPath & path ) const
*/
void QGraphicsView_mapToScene4 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->mapToScene ( *PQPAINTERPATH(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPointF mapToScene ( int x, int y ) const
*/
void QGraphicsView_mapToScene5 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QPointF * ptr = new QPointF( obj->mapToScene ( PINT(1), PINT(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPolygonF mapToScene ( int x, int y, int w, int h ) const
*/
void QGraphicsView_mapToScene6 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      QPolygonF * ptr = new QPolygonF( obj->mapToScene ( PINT(1), PINT(2), PINT(3), PINT(4) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

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
HB_FUNC_STATIC( QGRAPHICSVIEW_MATRIX )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMatrix * ptr = new QMatrix( obj->matrix () );
    _qt5xhb_createReturnClass ( ptr, "QMATRIX" );
  }
}

/*
OptimizationFlags optimizationFlags () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_OPTIMIZATIONFLAGS )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->optimizationFlags () );
  }
}

/*
void render ( QPainter * painter, const QRectF & target = QRectF(), const QRect & source = QRect(), Qt::AspectRatioMode aspectRatioMode = Qt::KeepAspectRatio )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RENDER )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTER(1) && (ISQRECTF(2)||ISNIL(2)) && (ISQRECT(3)||ISNIL(3)) && ISOPTNUM(4) )
    {
      QRectF par2 = ISNIL(2)? QRectF() : *(QRectF *) _qt5xhb_itemGetPtr(2);
      QRect par3 = ISNIL(3)? QRect() : *(QRect *) _qt5xhb_itemGetPtr(3);
      int par4 = ISNIL(4)? (int) Qt::KeepAspectRatio : hb_parni(4);
      obj->render ( PQPAINTER(1), par2, par3, (Qt::AspectRatioMode) par4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPainter::RenderHints renderHints () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RENDERHINTS )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->renderHints () );
  }
}

/*
void resetCachedContent ()
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RESETCACHEDCONTENT )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resetCachedContent ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resetMatrix ()
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RESETMATRIX )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resetMatrix ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resetTransform ()
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RESETTRANSFORM )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resetTransform ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ViewportAnchor resizeAnchor () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RESIZEANCHOR )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->resizeAnchor () );
  }
}

/*
void rotate ( qreal angle )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ROTATE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->rotate ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::ItemSelectionMode rubberBandSelectionMode () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RUBBERBANDSELECTIONMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->rubberBandSelectionMode () );
  }
}

/*
void scale ( qreal sx, qreal sy )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SCALE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->scale ( PQREAL(1), PQREAL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QGraphicsScene * scene () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SCENE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsScene * ptr = obj->scene ();
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSSCENE" );
  }
}

/*
QRectF sceneRect () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SCENERECT )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->sceneRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
void setAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETALIGNMENT )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setAlignment ( (Qt::Alignment) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBackgroundBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETBACKGROUNDBRUSH )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBRUSH(1) )
    {
      obj->setBackgroundBrush ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCacheMode ( CacheMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETCACHEMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCacheMode ( (QGraphicsView::CacheMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDragMode ( DragMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETDRAGMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setDragMode ( (QGraphicsView::DragMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setForegroundBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETFOREGROUNDBRUSH )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBRUSH(1) )
    {
      obj->setForegroundBrush ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInteractive ( bool allowed )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETINTERACTIVE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setInteractive ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMatrix ( const QMatrix & matrix, bool combine = false )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETMATRIX )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMATRIX(1) && ISOPTLOG(2) )
    {
      obj->setMatrix ( *PQMATRIX(1), OPBOOL(2,false) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOptimizationFlag ( OptimizationFlag flag, bool enabled = true )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETOPTIMIZATIONFLAG )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTLOG(2) )
    {
      obj->setOptimizationFlag ( (QGraphicsView::OptimizationFlag) hb_parni(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOptimizationFlags ( OptimizationFlags flags )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETOPTIMIZATIONFLAGS )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setOptimizationFlags ( (QGraphicsView::OptimizationFlags) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRenderHint ( QPainter::RenderHint hint, bool enabled = true )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETRENDERHINT )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTLOG(2) )
    {
      obj->setRenderHint ( (QPainter::RenderHint) hb_parni(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRenderHints ( QPainter::RenderHints hints )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETRENDERHINTS )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setRenderHints ( (QPainter::RenderHints) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setResizeAnchor ( ViewportAnchor anchor )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETRESIZEANCHOR )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setResizeAnchor ( (QGraphicsView::ViewportAnchor) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRubberBandSelectionMode ( Qt::ItemSelectionMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETRUBBERBANDSELECTIONMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setRubberBandSelectionMode ( (Qt::ItemSelectionMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScene ( QGraphicsScene * scene )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETSCENE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSSCENE(1) )
    {
      obj->setScene ( PQGRAPHICSSCENE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSceneRect ( const QRectF & rect )
*/
void QGraphicsView_setSceneRect1 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSceneRect ( *PQRECTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSceneRect ( qreal x, qreal y, qreal w, qreal h )
*/
void QGraphicsView_setSceneRect2 ()
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSceneRect ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QGRAPHICSVIEW_SETTRANSFORM )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTRANSFORM(1) && ISOPTLOG(2) )
    {
      obj->setTransform ( *PQTRANSFORM(1), OPBOOL(2,false) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTransformationAnchor ( ViewportAnchor anchor )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETTRANSFORMATIONANCHOR )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setTransformationAnchor ( (QGraphicsView::ViewportAnchor) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewportUpdateMode ( ViewportUpdateMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETVIEWPORTUPDATEMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setViewportUpdateMode ( (QGraphicsView::ViewportUpdateMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void shear ( qreal sh, qreal sv )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SHEAR )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->shear ( PQREAL(1), PQREAL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTransform transform () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_TRANSFORM )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTransform * ptr = new QTransform( obj->transform () );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

/*
ViewportAnchor transformationAnchor () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_TRANSFORMATIONANCHOR )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->transformationAnchor () );
  }
}

/*
void translate ( qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_TRANSLATE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->translate ( PQREAL(1), PQREAL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTransform viewportTransform () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_VIEWPORTTRANSFORM )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTransform * ptr = new QTransform( obj->viewportTransform () );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

/*
ViewportUpdateMode viewportUpdateMode () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_VIEWPORTUPDATEMODE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->viewportUpdateMode () );
  }
}

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_INPUTMETHODQUERY )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->inputMethodQuery ( (Qt::InputMethodQuery) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SIZEHINT )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void invalidateScene ( const QRectF & rect = QRectF(), QGraphicsScene::SceneLayers layers = QGraphicsScene::AllLayers )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_INVALIDATESCENE )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQRECTF(1)||ISNIL(1)) && ISOPTNUM(2) )
    {
      QRectF par1 = ISNIL(1)? QRectF() : *(QRectF *) _qt5xhb_itemGetPtr(1);
      int par2 = ISNIL(2)? (int) QGraphicsScene::AllLayers : hb_parni(2);
      obj->invalidateScene ( par1, (QGraphicsScene::SceneLayers) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QGRAPHICSVIEW_UPDATESCENERECT )
{
  QGraphicsView * obj = (QGraphicsView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQRECTF(1) )
    {
      obj->updateSceneRect ( *PQRECTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
