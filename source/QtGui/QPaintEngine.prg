/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTDEVICE
REQUEST QPAINTER
#endif

CLASS QPaintEngine

   DATA pointer
   DATA class_id INIT Class_Id_QPaintEngine
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QPaintEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPaintEngine>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPaintEngine>
#endif


HB_FUNC_STATIC( QPAINTENGINE_DELETE )
{
  QPaintEngine * obj = (QPaintEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool begin ( QPaintDevice * pdev ) = 0
*/
HB_FUNC_STATIC( QPAINTENGINE_BEGIN )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintDevice * par1 = (QPaintDevice *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->begin ( par1 ) );
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
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    obj->drawEllipse ( *par1 );
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
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    obj->drawEllipse ( *par1 );
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
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QImage * par2 = (QImage *) _qt5xhb_itemGetPtr(2);
    QRectF * par3 = (QRectF *) _qt5xhb_itemGetPtr(3);
    int par4 = ISNIL(4)? (int) Qt::AutoColor : hb_parni(4);
    obj->drawImage ( *par1, *par2, *par3,  (Qt::ImageConversionFlags) par4 );
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
    QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
    obj->drawPath ( *par1 );
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
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QPixmap * par2 = (QPixmap *) _qt5xhb_itemGetPtr(2);
    QRectF * par3 = (QRectF *) _qt5xhb_itemGetPtr(3);
    obj->drawPixmap ( *par1, *par2, *par3 );
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
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QTextItem * par2 = (QTextItem *) _qt5xhb_itemGetPtr(2);
    obj->drawTextItem ( *par1, *par2 );
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
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QPixmap * par2 = (QPixmap *) _qt5xhb_itemGetPtr(2);
    QPointF * par3 = (QPointF *) _qt5xhb_itemGetPtr(3);
    obj->drawTiledPixmap ( *par1, *par2, *par3 );
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
    hb_retl( obj->end (  ) );
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
    hb_retl( obj->hasFeature (  (QPaintEngine::PaintEngineFeatures) par1 ) );
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
    hb_retl( obj->isActive (  ) );
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
    QPaintDevice * ptr = obj->paintDevice (  );
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
    QPainter * ptr = obj->painter (  );
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
    obj->setActive ( (bool) hb_parl(1) );
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
    hb_retni( obj->type (  ) );
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
    QPaintEngineState * par1 = (QPaintEngineState *) _qt5xhb_itemGetPtr(1);
    obj->updateState ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QPAINTENGINE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QPAINTENGINE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPAINTENGINE_NEWFROM );
}

HB_FUNC_STATIC( QPAINTENGINE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPAINTENGINE_NEWFROM );
}

HB_FUNC_STATIC( QPAINTENGINE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPAINTENGINE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
