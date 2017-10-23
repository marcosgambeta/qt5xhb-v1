/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZE
REQUEST QMATRIX
REQUEST QRECT
#endif

CLASS QSvgRenderer INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD animated
   METHOD boundsOnElement
   METHOD defaultSize
   METHOD elementExists
   METHOD framesPerSecond
   METHOD isValid
   METHOD matrixForElement
   METHOD setFramesPerSecond
   METHOD setViewBox1
   METHOD setViewBox2
   METHOD setViewBox
   METHOD viewBox
   METHOD viewBoxF
   METHOD load1
   METHOD load2
   METHOD load3
   METHOD load
   METHOD render1
   METHOD render2
   METHOD render3
   METHOD render

   METHOD onRepaintNeeded

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSvgRenderer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSvgRenderer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSvgRenderer>
#endif

/*
QSvgRenderer ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSVGRENDERER_NEW1 )
{
  QSvgRenderer * o = new QSvgRenderer ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSvgRenderer ( const QString & filename, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSVGRENDERER_NEW2 )
{
  QSvgRenderer * o = new QSvgRenderer ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSvgRenderer ( const QByteArray & contents, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSVGRENDERER_NEW3 )
{
  QSvgRenderer * o = new QSvgRenderer ( *PQBYTEARRAY(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSvgRenderer ( QXmlStreamReader * contents, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSVGRENDERER_NEW4 )
{
  QSvgRenderer * o = new QSvgRenderer ( PQXMLSTREAMREADER(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QSvgRenderer ( QObject * parent = 0 )
//[2]QSvgRenderer ( const QString & filename, QObject * parent = 0 )
//[3]QSvgRenderer ( const QByteArray & contents, QObject * parent = 0 )
//[4]QSvgRenderer ( QXmlStreamReader * contents, QObject * parent = 0 )

HB_FUNC_STATIC( QSVGRENDERER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_NEW3 );
  }
  else if( ISBETWEEN(1,2) && ISQXMLSTREAMREADER(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSVGRENDERER_DELETE )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool animated () const
*/
HB_FUNC_STATIC( QSVGRENDERER_ANIMATED )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->animated () );
  }
}


/*
QRectF boundsOnElement ( const QString & id ) const
*/
HB_FUNC_STATIC( QSVGRENDERER_BOUNDSONELEMENT )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundsOnElement ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QSize defaultSize () const
*/
HB_FUNC_STATIC( QSVGRENDERER_DEFAULTSIZE )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->defaultSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
bool elementExists ( const QString & id ) const
*/
HB_FUNC_STATIC( QSVGRENDERER_ELEMENTEXISTS )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->elementExists ( PQSTRING(1) ) );
  }
}


/*
int framesPerSecond () const
*/
HB_FUNC_STATIC( QSVGRENDERER_FRAMESPERSECOND )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->framesPerSecond () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QSVGRENDERER_ISVALID )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QMatrix matrixForElement ( const QString & id ) const
*/
HB_FUNC_STATIC( QSVGRENDERER_MATRIXFORELEMENT )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMatrix * ptr = new QMatrix( obj->matrixForElement ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMATRIX" );
  }
}


/*
void setFramesPerSecond ( int num )
*/
HB_FUNC_STATIC( QSVGRENDERER_SETFRAMESPERSECOND )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFramesPerSecond ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewBox ( const QRect & viewbox )
*/
HB_FUNC_STATIC( QSVGRENDERER_SETVIEWBOX1 )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setViewBox ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewBox ( const QRectF & viewbox )
*/
HB_FUNC_STATIC( QSVGRENDERER_SETVIEWBOX2 )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setViewBox ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setViewBox ( const QRect & viewbox )
//[2]void setViewBox ( const QRectF & viewbox )

HB_FUNC_STATIC( QSVGRENDERER_SETVIEWBOX )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_SETVIEWBOX1 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_SETVIEWBOX2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect viewBox () const
*/
HB_FUNC_STATIC( QSVGRENDERER_VIEWBOX )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->viewBox () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRectF viewBoxF () const
*/
HB_FUNC_STATIC( QSVGRENDERER_VIEWBOXF )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->viewBoxF () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
bool load ( const QString & filename )
*/
HB_FUNC_STATIC( QSVGRENDERER_LOAD1 )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->load ( PQSTRING(1) ) );
  }
}

/*
bool load ( const QByteArray & contents )
*/
HB_FUNC_STATIC( QSVGRENDERER_LOAD2 )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->load ( *PQBYTEARRAY(1) ) );
  }
}

/*
bool load ( QXmlStreamReader * contents )
*/
HB_FUNC_STATIC( QSVGRENDERER_LOAD3 )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->load ( PQXMLSTREAMREADER(1) ) );
  }
}


//[1]bool load ( const QString & filename )
//[2]bool load ( const QByteArray & contents )
//[3]bool load ( QXmlStreamReader * contents )

HB_FUNC_STATIC( QSVGRENDERER_LOAD )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_LOAD1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_LOAD2 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMREADER(1) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_LOAD3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void render ( QPainter * painter )
*/
HB_FUNC_STATIC( QSVGRENDERER_RENDER1 )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->render ( PQPAINTER(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render ( QPainter * painter, const QRectF & bounds )
*/
HB_FUNC_STATIC( QSVGRENDERER_RENDER2 )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->render ( PQPAINTER(1), *PQRECTF(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render ( QPainter * painter, const QString & elementId, const QRectF & bounds = QRectF() )
*/
HB_FUNC_STATIC( QSVGRENDERER_RENDER3 )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF par3 = ISNIL(3)? QRectF() : *(QRectF *) _qt5xhb_itemGetPtr(3);
    obj->render ( PQPAINTER(1), PQSTRING(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void render ( QPainter * painter )
//[2]void render ( QPainter * painter, const QRectF & bounds )
//[3]void render ( QPainter * painter, const QString & elementId, const QRectF & bounds = QRectF() )

HB_FUNC_STATIC( QSVGRENDERER_RENDER )
{
  if( ISNUMPAR(1) && ISQPAINTER(1) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_RENDER1 );
  }
  else if( ISNUMPAR(2) && ISQPAINTER(1) && ISQRECTF(2) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_RENDER2 );
  }
  else if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISCHAR(2) && (ISQRECTF(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_RENDER3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



#pragma ENDDUMP
