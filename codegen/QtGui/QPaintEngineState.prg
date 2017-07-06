$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QPOINTF
REQUEST QPAINTERPATH
REQUEST QREGION
REQUEST QFONT
REQUEST QPAINTER
REQUEST QPEN
REQUEST QTRANSFORM
#endif

CLASS QPaintEngineState

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD backgroundBrush
   METHOD backgroundMode
   METHOD brush
   METHOD brushNeedsResolving
   METHOD brushOrigin
   METHOD clipOperation
   METHOD clipPath
   METHOD clipRegion
   METHOD compositionMode
   METHOD font
   METHOD isClipEnabled
   METHOD opacity
   METHOD painter
   METHOD pen
   METHOD penNeedsResolving
   METHOD renderHints
   METHOD state
   METHOD transform

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

$deleteMethod

/*
QBrush backgroundBrush () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_BACKGROUNDBRUSH )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->backgroundBrush () );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
Qt::BGMode backgroundMode () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_BACKGROUNDMODE )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->backgroundMode () );
  }
}


/*
QBrush brush () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_BRUSH )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->brush () );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
bool brushNeedsResolving () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_BRUSHNEEDSRESOLVING )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->brushNeedsResolving () );
  }
}


/*
QPointF brushOrigin () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_BRUSHORIGIN )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->brushOrigin () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
Qt::ClipOperation clipOperation () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_CLIPOPERATION )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->clipOperation () );
  }
}


/*
QPainterPath clipPath () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_CLIPPATH )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->clipPath () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
QRegion clipRegion () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_CLIPREGION )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->clipRegion () );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QPainter::CompositionMode compositionMode () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_COMPOSITIONMODE )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->compositionMode () );
  }
}


/*
QFont font () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_FONT )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
bool isClipEnabled () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_ISCLIPENABLED )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isClipEnabled () );
  }
}


/*
qreal opacity () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_OPACITY )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->opacity () );
  }
}


/*
QPainter * painter () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_PAINTER )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * ptr = obj->painter ();
    _qt5xhb_createReturnClass ( ptr, "QPAINTER" );
  }
}


/*
QPen pen () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_PEN )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPen * ptr = new QPen( obj->pen () );
    _qt5xhb_createReturnClass ( ptr, "QPEN", true );
  }
}


/*
bool penNeedsResolving () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_PENNEEDSRESOLVING )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->penNeedsResolving () );
  }
}


/*
QPainter::RenderHints renderHints () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_RENDERHINTS )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->renderHints () );
  }
}


/*
QPaintEngine::DirtyFlags state () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_STATE )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
QTransform transform () const
*/
HB_FUNC_STATIC( QPAINTENGINESTATE_TRANSFORM )
{
  QPaintEngineState * obj = (QPaintEngineState *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->transform () );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

$extraMethods

#pragma ENDDUMP
