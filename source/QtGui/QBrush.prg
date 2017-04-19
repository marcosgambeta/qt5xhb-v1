/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

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
   DATA class_id INIT Class_Id_QBrush
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new9
   METHOD new10
   METHOD new
   METHOD delete
   METHOD color
   METHOD gradient
   METHOD isOpaque
   METHOD matrix
   METHOD setColor1
   METHOD setColor2
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
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QBrush>
#endif

/*
QBrush ()
*/
HB_FUNC_STATIC( QBRUSH_NEW1 )
{
  QBrush * o = new QBrush (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBrush ( Qt::BrushStyle style )
*/
HB_FUNC_STATIC( QBRUSH_NEW2 )
{
  int par1 = hb_parni(1);
  QBrush * o = new QBrush (  (Qt::BrushStyle) par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBrush ( const QColor & color, Qt::BrushStyle style = Qt::SolidPattern )
*/
HB_FUNC_STATIC( QBRUSH_NEW3 )
{
  QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
  int par2 = ISNIL(2)? (int) Qt::SolidPattern : hb_parni(2);
  QBrush * o = new QBrush ( par1,  (Qt::BrushStyle) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBrush ( Qt::GlobalColor color, Qt::BrushStyle style = Qt::SolidPattern )
*/
HB_FUNC_STATIC( QBRUSH_NEW4 )
{
  int par1 = hb_parni(1);
  int par2 = ISNIL(2)? (int) Qt::SolidPattern : hb_parni(2);
  QBrush * o = new QBrush (  (Qt::GlobalColor) par1,  (Qt::BrushStyle) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBrush ( const QColor & color, const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QBRUSH_NEW5 )
{
  QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
  QPixmap * par2 = (QPixmap *) _qt5xhb_itemGetPtr(2);
  QBrush * o = new QBrush ( par1, *par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBrush ( Qt::GlobalColor color, const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QBRUSH_NEW6 )
{
  int par1 = hb_parni(1);
  QPixmap * par2 = (QPixmap *) _qt5xhb_itemGetPtr(2);
  QBrush * o = new QBrush (  (Qt::GlobalColor) par1, *par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBrush ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QBRUSH_NEW7 )
{
  QPixmap * par1 = (QPixmap *) _qt5xhb_itemGetPtr(1);
  QBrush * o = new QBrush ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBrush ( const QImage & image )
*/
HB_FUNC_STATIC( QBRUSH_NEW8 )
{
  QImage * par1 = (QImage *) _qt5xhb_itemGetPtr(1);
  QBrush * o = new QBrush ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBrush ( const QBrush & other )
*/
HB_FUNC_STATIC( QBRUSH_NEW9 )
{
  QBrush * par1 = (QBrush *) _qt5xhb_itemGetPtr(1);
  QBrush * o = new QBrush ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBrush ( const QGradient & gradient )
*/
HB_FUNC_STATIC( QBRUSH_NEW10 )
{
  QGradient * par1 = (QGradient *) _qt5xhb_itemGetPtr(1);
  QBrush * o = new QBrush ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
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
    HB_FUNC_EXEC( QBRUSH_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW2 );
  }
  else if( ISBETWEEN(1,2) && (ISQCOLOR(1)||ISCHAR(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW3 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW4 );
  }
  else if( ISNUMPAR(2) && (ISQCOLOR(1)||ISCHAR(1)) && ISQPIXMAP(2) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW5 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPIXMAP(2) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW6 );
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW7 );
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW8 );
  }
  else if( ISNUMPAR(1) && ISQBRUSH(1) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW9 );
  }
  // Classe QGradient e derivadas
  else if( ISNUMPAR(1) && ISQGRADIENT(1) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW10 );
  }
  else if( ISNUMPAR(1) && ISQCONICALGRADIENT(1) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW10 );
  }
  else if( ISNUMPAR(1) && ISQLINEARGRADIENT(1) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW10 );
  }
  else if( ISNUMPAR(1) && ISQRADIALGRADIENT(1) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW10 );
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
HB_FUNC_STATIC( QBRUSH_COLOR )
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->color (  ) );
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
    const QGradient * ptr = obj->gradient (  );
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
    hb_retl( obj->isOpaque (  ) );
  }
}


/*
const QMatrix & matrix () const
*/
HB_FUNC_STATIC( QBRUSH_MATRIX )
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMatrix * ptr = new QMatrix( obj->matrix (  ) );
    _qt5xhb_createReturnClass ( ptr, "QMATRIX" );
  }
}


/*
void setColor ( const QColor & color )
*/
HB_FUNC_STATIC( QBRUSH_SETCOLOR1 )
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
HB_FUNC_STATIC( QBRUSH_SETCOLOR2 )
{
  QBrush * obj = (QBrush *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setColor (  (Qt::GlobalColor) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setColor ( const QColor & color )
//[2]void setColor ( Qt::GlobalColor color )

HB_FUNC_STATIC( QBRUSH_SETCOLOR )
{
  if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    HB_FUNC_EXEC( QBRUSH_SETCOLOR1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBRUSH_SETCOLOR2 );
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
    QMatrix * par1 = (QMatrix *) _qt5xhb_itemGetPtr(1);
    obj->setMatrix ( *par1 );
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
    int par1 = hb_parni(1);
    obj->setStyle (  (Qt::BrushStyle) par1 );
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
    QPixmap * par1 = (QPixmap *) _qt5xhb_itemGetPtr(1);
    obj->setTexture ( *par1 );
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
    QImage * par1 = (QImage *) _qt5xhb_itemGetPtr(1);
    obj->setTextureImage ( *par1 );
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
    QTransform * par1 = (QTransform *) _qt5xhb_itemGetPtr(1);
    obj->setTransform ( *par1 );
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
    hb_retni( obj->style (  ) );
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
    QPixmap * ptr = new QPixmap( obj->texture (  ) );
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
    QImage * ptr = new QImage( obj->textureImage (  ) );
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
    QTransform * ptr = new QTransform( obj->transform (  ) );
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

#pragma ENDDUMP
