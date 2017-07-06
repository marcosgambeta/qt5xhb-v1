$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTDEVICE
REQUEST QPAINTER
#endif

CLASS QPaintEngine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD begin
   METHOD drawEllipse1
   METHOD drawEllipse2
   METHOD drawEllipse
   METHOD drawImage
   METHOD drawLines
   METHOD drawPath
   METHOD drawPixmap
   METHOD drawPoints
   METHOD drawPolygon
   METHOD drawRects
   METHOD drawTextItem
   METHOD drawTiledPixmap
   METHOD end
   METHOD hasFeature
   METHOD isActive
   METHOD paintDevice
   METHOD painter
   METHOD setActive
   METHOD type
   METHOD updateState

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
virtual bool begin ( QPaintDevice * pdev ) = 0
*/
HB_FUNC_STATIC( QPAINTENGINE_BEGIN )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->begin ( PQPAINTDEVICE(1) ) );
  }
}


/*
virtual void drawEllipse ( const QRectF & rect )
*/
HB_FUNC_STATIC( QPAINTENGINE_DRAWELLIPSE1 )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawEllipse ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawEllipse ( const QRect & rect )
*/
HB_FUNC_STATIC( QPAINTENGINE_DRAWELLIPSE2 )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawEllipse ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]virtual void drawEllipse ( const QRectF & rect )
//[2]virtual void drawEllipse ( const QRect & rect )

HB_FUNC_STATIC( QPAINTENGINE_DRAWELLIPSE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTENGINE_DRAWELLIPSE1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QPAINTENGINE_DRAWELLIPSE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual void drawImage ( const QRectF & rectangle, const QImage & image, const QRectF & sr, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPAINTENGINE_DRAWIMAGE )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par4 = ISNIL(4)? (int) Qt::AutoColor : hb_parni(4);
    obj->drawImage ( *PQRECTF(1), *PQIMAGE(2), *PQRECTF(3), (Qt::ImageConversionFlags) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


// TODO: implementar reconhecimento de 'const QLineF *' e 'const QLine *'



//[1]virtual void drawLines ( const QLineF * lines, int lineCount )
//[2]virtual void drawLines ( const QLine * lines, int lineCount )

HB_FUNC_STATIC( QPAINTENGINE_DRAWLINES )
{
}

/*
virtual void drawPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QPAINTENGINE_DRAWPATH )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawPath ( *PQPAINTERPATH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawPixmap ( const QRectF & r, const QPixmap & pm, const QRectF & sr ) = 0
*/
HB_FUNC_STATIC( QPAINTENGINE_DRAWPIXMAP )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawPixmap ( *PQRECTF(1), *PQPIXMAP(2), *PQRECTF(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


// TODO: implementar reconhecimento de 'const QPointF *' e 'const QPoint *'



//[1]virtual void drawPoints ( const QPointF * points, int pointCount )
//[2]virtual void drawPoints ( const QPoint * points, int pointCount )

HB_FUNC_STATIC( QPAINTENGINE_DRAWPOINTS )
{
}

// TODO: implementar reconhecimento de 'const QPointF *' e 'const QPoint *'



//[1]virtual void drawPolygon ( const QPointF * points, int pointCount, PolygonDrawMode mode )
//[2]virtual void drawPolygon ( const QPoint * points, int pointCount, PolygonDrawMode mode )

HB_FUNC_STATIC( QPAINTENGINE_DRAWPOLYGON )
{
}

// TODO: implementar reconhecimento de 'const QRectF *' e 'const QRect *'



//[1]virtual void drawRects ( const QRectF * rects, int rectCount )
//[2]virtual void drawRects ( const QRect * rects, int rectCount )

HB_FUNC_STATIC( QPAINTENGINE_DRAWRECTS )
{
}

/*
virtual void drawTextItem ( const QPointF & p, const QTextItem & textItem )
*/
HB_FUNC_STATIC( QPAINTENGINE_DRAWTEXTITEM )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextItem * par2 = (QTextItem *) _qt5xhb_itemGetPtr(2);
    obj->drawTextItem ( *PQPOINTF(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawTiledPixmap ( const QRectF & rect, const QPixmap & pixmap, const QPointF & p )
*/
HB_FUNC_STATIC( QPAINTENGINE_DRAWTILEDPIXMAP )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawTiledPixmap ( *PQRECTF(1), *PQPIXMAP(2), *PQPOINTF(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool end () = 0
*/
HB_FUNC_STATIC( QPAINTENGINE_END )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->end () );
  }
}


/*
bool hasFeature ( PaintEngineFeatures feature ) const
*/
HB_FUNC_STATIC( QPAINTENGINE_HASFEATURE )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->hasFeature ( (QPaintEngine::PaintEngineFeatures) par1 ) );
  }
}


/*
bool isActive () const
*/
HB_FUNC_STATIC( QPAINTENGINE_ISACTIVE )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isActive () );
  }
}


/*
QPaintDevice * paintDevice () const
*/
HB_FUNC_STATIC( QPAINTENGINE_PAINTDEVICE )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintDevice * ptr = obj->paintDevice ();
    _qt5xhb_createReturnClass ( ptr, "QPAINTDEVICE" );
  }
}


/*
QPainter * painter () const
*/
HB_FUNC_STATIC( QPAINTENGINE_PAINTER )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * ptr = obj->painter ();
    _qt5xhb_createReturnClass ( ptr, "QPAINTER" );
  }
}


/*
void setActive ( bool state )
*/
HB_FUNC_STATIC( QPAINTENGINE_SETACTIVE )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setActive ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual Type type () const = 0
*/
HB_FUNC_STATIC( QPAINTENGINE_TYPE )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}


/*
virtual void updateState ( const QPaintEngineState & state ) = 0
*/
HB_FUNC_STATIC( QPAINTENGINE_UPDATESTATE )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->updateState ( *PQPAINTENGINESTATE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
