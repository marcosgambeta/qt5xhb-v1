/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QSIZEF
REQUEST QRECT
#endif

CLASS QRectF

   DATA pointer
   DATA class_id INIT Class_Id_QRectF
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD adjust
   METHOD adjusted
   METHOD bottom
   METHOD bottomLeft
   METHOD bottomRight
   METHOD center
   METHOD contains1
   METHOD contains2
   METHOD contains3
   METHOD contains
   METHOD getCoords
   METHOD getRect
   METHOD height
   METHOD intersected
   METHOD intersects
   METHOD isEmpty
   METHOD isNull
   METHOD isValid
   METHOD left
   METHOD moveBottom
   METHOD moveBottomLeft
   METHOD moveBottomRight
   METHOD moveCenter
   METHOD moveLeft
   METHOD moveRight
   METHOD moveTo1
   METHOD moveTo2
   METHOD moveTo
   METHOD moveTop
   METHOD moveTopLeft
   METHOD moveTopRight
   METHOD normalized
   METHOD right
   METHOD setBottom
   METHOD setBottomLeft
   METHOD setBottomRight
   METHOD setCoords
   METHOD setHeight
   METHOD setLeft
   METHOD setRect
   METHOD setRight
   METHOD setSize
   METHOD setTop
   METHOD setTopLeft
   METHOD setTopRight
   METHOD setWidth
   METHOD setX
   METHOD setY
   METHOD size
   METHOD toAlignedRect
   METHOD toRect
   METHOD top
   METHOD topLeft
   METHOD topRight
   METHOD translate1
   METHOD translate2
   METHOD translate
   METHOD translated1
   METHOD translated2
   METHOD translated
   METHOD united
   METHOD width
   METHOD x
   METHOD y
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRectF
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QRectF>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRectF>
#endif

/*
QRectF ()
*/
HB_FUNC_STATIC( QRECTF_NEW1 )
{
  QRectF * o = new QRectF (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRectF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QRectF ( const QPointF & topLeft, const QSizeF & size )
*/
HB_FUNC_STATIC( QRECTF_NEW2 )
{
  QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
  QSizeF * par2 = (QSizeF *) _qt5xhb_itemGetPtr(2);
  QRectF * o = new QRectF ( *par1, *par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRectF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QRectF ( const QPointF & topLeft, const QPointF & bottomRight )
*/
HB_FUNC_STATIC( QRECTF_NEW3 )
{
  QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
  QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
  QRectF * o = new QRectF ( *par1, *par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRectF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QRectF ( qreal x, qreal y, qreal width, qreal height )
*/
HB_FUNC_STATIC( QRECTF_NEW4 )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = hb_parnd(4);
  QRectF * o = new QRectF ( par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRectF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QRectF ( const QRect & rectangle )
*/
HB_FUNC_STATIC( QRECTF_NEW5 )
{
  QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
  QRectF * o = new QRectF ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRectF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QRectF ()
//[2]QRectF ( const QPointF & topLeft, const QSizeF & size )
//[3]QRectF ( const QPointF & topLeft, const QPointF & bottomRight )
//[4]QRectF ( qreal x, qreal y, qreal width, qreal height )
//[5]QRectF ( const QRect & rectangle )

HB_FUNC_STATIC( QRECTF_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QRECTF_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQSIZEF(2) )
  {
    HB_FUNC_EXEC( QRECTF_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    HB_FUNC_EXEC( QRECTF_NEW3 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QRECTF_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QRECTF_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QRECTF_DELETE )
{
  QRectF * obj = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void adjust ( qreal dx1, qreal dy1, qreal dx2, qreal dy2 )
*/
HB_FUNC_STATIC( QRECTF_ADJUST )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    obj->adjust ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRectF adjusted ( qreal dx1, qreal dy1, qreal dx2, qreal dy2 ) const
*/
HB_FUNC_STATIC( QRECTF_ADJUSTED )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    QRectF * ptr = new QRectF( obj->adjusted ( par1, par2, par3, par4 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
qreal bottom () const
*/
HB_FUNC_STATIC( QRECTF_BOTTOM )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->bottom (  ) );
  }
}


/*
QPointF bottomLeft () const
*/
HB_FUNC_STATIC( QRECTF_BOTTOMLEFT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->bottomLeft (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF bottomRight () const
*/
HB_FUNC_STATIC( QRECTF_BOTTOMRIGHT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->bottomRight (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF center () const
*/
HB_FUNC_STATIC( QRECTF_CENTER )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->center (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QRECTF_CONTAINS1 )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->contains ( *par1 ) );
  }
}


/*
bool contains ( qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QRECTF_CONTAINS2 )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    hb_retl( obj->contains ( par1, par2 ) );
  }
}


/*
bool contains ( const QRectF & rectangle ) const
*/
HB_FUNC_STATIC( QRECTF_CONTAINS3 )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->contains ( *par1 ) );
  }
}


//[1]bool contains ( const QPointF & point ) const
//[2]bool contains ( qreal x, qreal y ) const
//[3]bool contains ( const QRectF & rectangle ) const

HB_FUNC_STATIC( QRECTF_CONTAINS )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QRECTF_CONTAINS1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECTF_CONTAINS2 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QRECTF_CONTAINS3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void getCoords ( qreal * x1, qreal * y1, qreal * x2, qreal * y2 ) const
*/
HB_FUNC_STATIC( QRECTF_GETCOORDS )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getCoords ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getRect ( qreal * x, qreal * y, qreal * width, qreal * height ) const
*/
HB_FUNC_STATIC( QRECTF_GETRECT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getRect ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal height () const
*/
HB_FUNC_STATIC( QRECTF_HEIGHT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->height (  ) );
  }
}


/*
QRectF intersected ( const QRectF & rectangle ) const
*/
HB_FUNC_STATIC( QRECTF_INTERSECTED )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->intersected ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
bool intersects ( const QRectF & rectangle ) const
*/
HB_FUNC_STATIC( QRECTF_INTERSECTS )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->intersects ( *par1 ) );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QRECTF_ISEMPTY )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QRECTF_ISNULL )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QRECTF_ISVALID )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
qreal left () const
*/
HB_FUNC_STATIC( QRECTF_LEFT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->left (  ) );
  }
}


/*
void moveBottom ( qreal y )
*/
HB_FUNC_STATIC( QRECTF_MOVEBOTTOM )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->moveBottom ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveBottomLeft ( const QPointF & position )
*/
HB_FUNC_STATIC( QRECTF_MOVEBOTTOMLEFT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->moveBottomLeft ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveBottomRight ( const QPointF & position )
*/
HB_FUNC_STATIC( QRECTF_MOVEBOTTOMRIGHT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->moveBottomRight ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveCenter ( const QPointF & position )
*/
HB_FUNC_STATIC( QRECTF_MOVECENTER )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->moveCenter ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveLeft ( qreal x )
*/
HB_FUNC_STATIC( QRECTF_MOVELEFT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->moveLeft ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveRight ( qreal x )
*/
HB_FUNC_STATIC( QRECTF_MOVERIGHT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->moveRight ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveTo ( qreal x, qreal y )
*/
HB_FUNC_STATIC( QRECTF_MOVETO1 )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->moveTo ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveTo ( const QPointF & position )
*/
HB_FUNC_STATIC( QRECTF_MOVETO2 )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->moveTo ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void moveTo ( qreal x, qreal y )
//[2]void moveTo ( const QPointF & position )

HB_FUNC_STATIC( QRECTF_MOVETO )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECTF_MOVETO1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QRECTF_MOVETO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void moveTop ( qreal y )
*/
HB_FUNC_STATIC( QRECTF_MOVETOP )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->moveTop ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveTopLeft ( const QPointF & position )
*/
HB_FUNC_STATIC( QRECTF_MOVETOPLEFT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->moveTopLeft ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveTopRight ( const QPointF & position )
*/
HB_FUNC_STATIC( QRECTF_MOVETOPRIGHT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->moveTopRight ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRectF normalized () const
*/
HB_FUNC_STATIC( QRECTF_NORMALIZED )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->normalized (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
qreal right () const
*/
HB_FUNC_STATIC( QRECTF_RIGHT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->right (  ) );
  }
}


/*
void setBottom ( qreal y )
*/
HB_FUNC_STATIC( QRECTF_SETBOTTOM )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setBottom ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBottomLeft ( const QPointF & position )
*/
HB_FUNC_STATIC( QRECTF_SETBOTTOMLEFT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setBottomLeft ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBottomRight ( const QPointF & position )
*/
HB_FUNC_STATIC( QRECTF_SETBOTTOMRIGHT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setBottomRight ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCoords ( qreal x1, qreal y1, qreal x2, qreal y2 )
*/
HB_FUNC_STATIC( QRECTF_SETCOORDS )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    obj->setCoords ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeight ( qreal height )
*/
HB_FUNC_STATIC( QRECTF_SETHEIGHT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setHeight ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLeft ( qreal x )
*/
HB_FUNC_STATIC( QRECTF_SETLEFT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setLeft ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRect ( qreal x, qreal y, qreal width, qreal height )
*/
HB_FUNC_STATIC( QRECTF_SETRECT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    obj->setRect ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRight ( qreal x )
*/
HB_FUNC_STATIC( QRECTF_SETRIGHT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setRight ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSize ( const QSizeF & size )
*/
HB_FUNC_STATIC( QRECTF_SETSIZE )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) _qt5xhb_itemGetPtr(1);
    obj->setSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTop ( qreal y )
*/
HB_FUNC_STATIC( QRECTF_SETTOP )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setTop ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTopLeft ( const QPointF & position )
*/
HB_FUNC_STATIC( QRECTF_SETTOPLEFT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setTopLeft ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTopRight ( const QPointF & position )
*/
HB_FUNC_STATIC( QRECTF_SETTOPRIGHT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setTopRight ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth ( qreal width )
*/
HB_FUNC_STATIC( QRECTF_SETWIDTH )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setX ( qreal x )
*/
HB_FUNC_STATIC( QRECTF_SETX )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setX ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setY ( qreal y )
*/
HB_FUNC_STATIC( QRECTF_SETY )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setY ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizeF size () const
*/
HB_FUNC_STATIC( QRECTF_SIZE )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->size (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
QRect toAlignedRect () const
*/
HB_FUNC_STATIC( QRECTF_TOALIGNEDRECT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->toAlignedRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRect toRect () const
*/
HB_FUNC_STATIC( QRECTF_TORECT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->toRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
qreal top () const
*/
HB_FUNC_STATIC( QRECTF_TOP )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->top (  ) );
  }
}


/*
QPointF topLeft () const
*/
HB_FUNC_STATIC( QRECTF_TOPLEFT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->topLeft (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF topRight () const
*/
HB_FUNC_STATIC( QRECTF_TOPRIGHT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->topRight (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void translate ( qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QRECTF_TRANSLATE1 )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->translate ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate ( const QPointF & offset )
*/
HB_FUNC_STATIC( QRECTF_TRANSLATE2 )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->translate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void translate ( qreal dx, qreal dy )
//[2]void translate ( const QPointF & offset )

HB_FUNC_STATIC( QRECTF_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECTF_TRANSLATE1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QRECTF_TRANSLATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF translated ( qreal dx, qreal dy ) const
*/
HB_FUNC_STATIC( QRECTF_TRANSLATED1 )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    QRectF * ptr = new QRectF( obj->translated ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QRectF translated ( const QPointF & offset ) const
*/
HB_FUNC_STATIC( QRECTF_TRANSLATED2 )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->translated ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


//[1]QRectF translated ( qreal dx, qreal dy ) const
//[2]QRectF translated ( const QPointF & offset ) const

HB_FUNC_STATIC( QRECTF_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECTF_TRANSLATED1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QRECTF_TRANSLATED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF united ( const QRectF & rectangle ) const
*/
HB_FUNC_STATIC( QRECTF_UNITED )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->united ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
qreal width () const
*/
HB_FUNC_STATIC( QRECTF_WIDTH )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->width (  ) );
  }
}


/*
qreal x () const
*/
HB_FUNC_STATIC( QRECTF_X )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->x (  ) );
  }
}


/*
qreal y () const
*/
HB_FUNC_STATIC( QRECTF_Y )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->y (  ) );
  }
}



HB_FUNC_STATIC( QRECTF_NEWFROM )
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

HB_FUNC_STATIC( QRECTF_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QRECTF_NEWFROM );
}

HB_FUNC_STATIC( QRECTF_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QRECTF_NEWFROM );
}

HB_FUNC_STATIC( QRECTF_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QRECTF_SETSELFDESTRUCTION )
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