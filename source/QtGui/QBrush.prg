/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QGRADIENT
REQUEST QMATRIX
REQUEST QPIXMAP
REQUEST QIMAGE
REQUEST QTRANSFORM
#endif

CLASS QBrush

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD color
   METHOD gradient
   METHOD isOpaque
   METHOD matrix
   METHOD setColor
   METHOD setMatrix
   METHOD setStyle
   METHOD setTexture
   METHOD setTextureImage
   METHOD setTransform
   METHOD style
   METHOD texture
   METHOD textureImage
   METHOD transform
   METHOD toVariant
   METHOD fromVariant

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBrush
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QBrush>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QBrush>
#endif

#include <QVariant>

/*
QBrush ()
*/
void QBrush_new1 ()
{
  QBrush * o = new QBrush ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QBrush ( Qt::BrushStyle style )
*/
void QBrush_new2 ()
{
  QBrush * o = new QBrush ( (Qt::BrushStyle) hb_parni(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QBrush ( const QColor & color, Qt::BrushStyle style = Qt::SolidPattern )
*/
void QBrush_new3 ()
{
  QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
  int par2 = ISNIL(2)? (int) Qt::SolidPattern : hb_parni(2);
  QBrush * o = new QBrush ( par1, (Qt::BrushStyle) par2 );
  _qt5xhb_returnNewObject( o, true );
}

/*
QBrush ( Qt::GlobalColor color, Qt::BrushStyle style = Qt::SolidPattern )
*/
void QBrush_new4 ()
{
  int par2 = ISNIL(2)? (int) Qt::SolidPattern : hb_parni(2);
  QBrush * o = new QBrush ( (Qt::GlobalColor) hb_parni(1), (Qt::BrushStyle) par2 );
  _qt5xhb_returnNewObject( o, true );
}

/*
QBrush ( const QColor & color, const QPixmap & pixmap )
*/
void QBrush_new5 ()
{
  QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
  QBrush * o = new QBrush ( par1, *PQPIXMAP(2) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QBrush ( Qt::GlobalColor color, const QPixmap & pixmap )
*/
void QBrush_new6 ()
{
  QBrush * o = new QBrush ( (Qt::GlobalColor) hb_parni(1), *PQPIXMAP(2) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QBrush ( const QPixmap & pixmap )
*/
void QBrush_new7 ()
{
  QBrush * o = new QBrush ( *PQPIXMAP(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QBrush ( const QImage & image )
*/
void QBrush_new8 ()
{
  QBrush * o = new QBrush ( *PQIMAGE(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QBrush ( const QBrush & other )
*/
void QBrush_new9 ()
{
  QBrush * o = new QBrush ( *PQBRUSH(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QBrush ( const QGradient & gradient )
*/
void QBrush_new10 ()
{
  QBrush * o = new QBrush ( *PQGRADIENT(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[ 1]QBrush ()
//[ 2]QBrush ( Qt::BrushStyle style )
//[ 3]QBrush ( const QColor & color, Qt::BrushStyle style = Qt::SolidPattern )
//[ 4]QBrush ( Qt::GlobalColor color, Qt::BrushStyle style = Qt::SolidPattern )
//[ 5]QBrush ( const QColor & color, const QPixmap & pixmap )
//[ 6]QBrush ( Qt::GlobalColor color, const QPixmap & pixmap )
//[ 7]QBrush ( const QPixmap & pixmap )
//[ 8]QBrush ( const QImage & image )
//[ 9]QBrush ( const QBrush & other )
//[10]QBrush ( const QGradient & gradient )

HB_FUNC_STATIC( QBRUSH_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBrush_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBrush_new2();
  }
  else if( ISBETWEEN(1,2) && (ISQCOLOR(1)||ISCHAR(1)) && ISOPTNUM(2) )
  {
    QBrush_new3();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QBrush_new4();
  }
  else if( ISNUMPAR(2) && (ISQCOLOR(1)||ISCHAR(1)) && ISQPIXMAP(2) )
  {
    QBrush_new5();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPIXMAP(2) )
  {
    QBrush_new6();
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    QBrush_new7();
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    QBrush_new8();
  }
  else if( ISNUMPAR(1) && ISQBRUSH(1) )
  {
    QBrush_new9();
  }
  // Classe QGradient e derivadas (TODO: revisar e remover(?) comparacoes
  else if( ISNUMPAR(1) && ISQGRADIENT(1) )
  {
    QBrush_new10();
  }
  else if( ISNUMPAR(1) && ISQCONICALGRADIENT(1) )
  {
    QBrush_new10();
  }
  else if( ISNUMPAR(1) && ISQLINEARGRADIENT(1) )
  {
    QBrush_new10();
  }
  else if( ISNUMPAR(1) && ISQRADIALGRADIENT(1) )
  {
    QBrush_new10();
  }
  //
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBRUSH_DELETE )
{
  QBrush * obj = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
const QColor & color () const
*/
HB_FUNC_STATIC( QBRUSH_COLOR ) // TODO: revisar e corrigir(?)
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QColor * ptr = new QColor( obj->color () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}

/*
const QGradient * gradient () const
*/
HB_FUNC_STATIC( QBRUSH_GRADIENT )
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QGradient * ptr = obj->gradient ();
    _qt5xhb_createReturnClass ( ptr, "QGRADIENT" );
  }
}

/*
bool isOpaque () const
*/
HB_FUNC_STATIC( QBRUSH_ISOPAQUE )
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isOpaque () );
  }
}

/*
const QMatrix & matrix () const // TODO: revisar e corrigir(?)
*/
HB_FUNC_STATIC( QBRUSH_MATRIX )
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMatrix * ptr = new QMatrix( obj->matrix () );
    _qt5xhb_createReturnClass ( ptr, "QMATRIX" );
  }
}

/*
void setColor ( const QColor & color )
*/
void QBrush_setColor1 ()
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setColor ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColor ( Qt::GlobalColor color )
*/
void QBrush_setColor2 ()
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setColor ( (Qt::GlobalColor) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setColor ( const QColor & color )
//[2]void setColor ( Qt::GlobalColor color )

HB_FUNC_STATIC( QBRUSH_SETCOLOR )
{
  if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    QBrush_setColor1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBrush_setColor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMatrix ( const QMatrix & matrix )
*/
HB_FUNC_STATIC( QBRUSH_SETMATRIX )
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMATRIX(1) )
    {
      obj->setMatrix ( *PQMATRIX(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStyle ( Qt::BrushStyle style )
*/
HB_FUNC_STATIC( QBRUSH_SETSTYLE )
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setStyle ( (Qt::BrushStyle) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTexture ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QBRUSH_SETTEXTURE )
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPIXMAP(1) )
    {
      obj->setTexture ( *PQPIXMAP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextureImage ( const QImage & image )
*/
HB_FUNC_STATIC( QBRUSH_SETTEXTUREIMAGE )
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQIMAGE(1) )
    {
      obj->setTextureImage ( *PQIMAGE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTransform ( const QTransform & matrix )
*/
HB_FUNC_STATIC( QBRUSH_SETTRANSFORM )
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTRANSFORM(1) )
    {
      obj->setTransform ( *PQTRANSFORM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::BrushStyle style () const
*/
HB_FUNC_STATIC( QBRUSH_STYLE )
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->style () );
  }
}

/*
QPixmap texture () const
*/
HB_FUNC_STATIC( QBRUSH_TEXTURE )
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->texture () );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
QImage textureImage () const
*/
HB_FUNC_STATIC( QBRUSH_TEXTUREIMAGE )
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QImage * ptr = new QImage( obj->textureImage () );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}

/*
QTransform transform () const
*/
HB_FUNC_STATIC( QBRUSH_TRANSFORM )
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTransform * ptr = new QTransform( obj->transform () );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

HB_FUNC_STATIC( QBRUSH_NEWFROM )
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

HB_FUNC_STATIC( QBRUSH_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBRUSH_NEWFROM );
}

HB_FUNC_STATIC( QBRUSH_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBRUSH_NEWFROM );
}

HB_FUNC_STATIC( QBRUSH_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QBRUSH_SETSELFDESTRUCTION )
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

/*
QVariant toVariant ()
*/
void QBrush_toVariant1 ()
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * variant = new QVariant();
    variant->setValue<QBrush>( *obj );
    _qt5xhb_createReturnClass ( variant, "QVARIANT", true );
  }
}

/*
static QVariant toVariant ( const QBrush & )
*/
void QBrush_toVariant2 ()
{
  QBrush * brush = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVariant * variant = new QVariant();
  variant->setValue<QBrush>( *brush );
  _qt5xhb_createReturnClass ( variant, "QVARIANT", true );
}

//[1]QVariant toVariant ()
//[2]static QVariant toVariant ( const QBrush & )

HB_FUNC_STATIC( QBRUSH_TOVARIANT )
{
  if( ISNUMPAR(0) )
  {
    QBrush_toVariant1();
  }
  else if( ISNUMPAR(1) && ISQBRUSH(1) )
  {
    QBrush_toVariant2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QBrush fromVariant ( const QVariant & )
*/
HB_FUNC_STATIC( QBRUSH_FROMVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QVariant * variant = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QBrush * brush = new QBrush( variant->value<QBrush>() );
    _qt5xhb_createReturnClass ( brush, "QBRUSH", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
