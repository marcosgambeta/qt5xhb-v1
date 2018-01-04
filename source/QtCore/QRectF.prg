/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QSIZEF
REQUEST QRECT
#endif

CLASS QRectF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD adjust
   METHOD adjusted
   METHOD bottom
   METHOD bottomLeft
   METHOD bottomRight
   METHOD center
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
   METHOD translate
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
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRectF>
#endif

/*
QRectF ()
*/
void QRectF_new1 ()
{
  QRectF * o = new QRectF ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QRectF ( const QPointF & topLeft, const QSizeF & size )
*/
void QRectF_new2 ()
{
  QRectF * o = new QRectF ( *PQPOINTF(1), *PQSIZEF(2) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QRectF ( const QPointF & topLeft, const QPointF & bottomRight )
*/
void QRectF_new3 ()
{
  QRectF * o = new QRectF ( *PQPOINTF(1), *PQPOINTF(2) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QRectF ( qreal x, qreal y, qreal width, qreal height )
*/
void QRectF_new4 ()
{
  QRectF * o = new QRectF ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QRectF ( const QRect & rectangle )
*/
void QRectF_new5 ()
{
  QRectF * o = new QRectF ( *PQRECT(1) );
  _qt5xhb_returnNewObject( o, true );
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
    QRectF_new1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQSIZEF(2) )
  {
    QRectF_new2();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    QRectF_new3();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QRectF_new4();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QRectF_new5();
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
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      obj->adjust ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      QRectF * ptr = new QRectF( obj->adjusted ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    RQREAL( obj->bottom () );
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
    QPointF * ptr = new QPointF( obj->bottomLeft () );
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
    QPointF * ptr = new QPointF( obj->bottomRight () );
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
    QPointF * ptr = new QPointF( obj->center () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
bool contains ( const QPointF & point ) const
*/
void QRectF_contains1 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains ( *PQPOINTF(1) ) );
  }
}

/*
bool contains ( qreal x, qreal y ) const
*/
void QRectF_contains2 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains ( PQREAL(1), PQREAL(2) ) );
  }
}

/*
bool contains ( const QRectF & rectangle ) const
*/
void QRectF_contains3 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains ( *PQRECTF(1) ) );
  }
}

//[1]bool contains ( const QPointF & point ) const
//[2]bool contains ( qreal x, qreal y ) const
//[3]bool contains ( const QRectF & rectangle ) const

HB_FUNC_STATIC( QRECTF_CONTAINS )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QRectF_contains1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRectF_contains2();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QRectF_contains3();
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
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
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
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
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
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    RQREAL( obj->height () );
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
    if( ISQRECTF(1) )
    {
      QRectF * ptr = new QRectF( obj->intersected ( *PQRECTF(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQRECTF(1) )
    {
      RBOOL( obj->intersects ( *PQRECTF(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    RBOOL( obj->isEmpty () );
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
    RBOOL( obj->isNull () );
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
    RBOOL( obj->isValid () );
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
    RQREAL( obj->left () );
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
    if( ISNUM(1) )
    {
      obj->moveBottom ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQPOINTF(1) )
    {
      obj->moveBottomLeft ( *PQPOINTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQPOINTF(1) )
    {
      obj->moveBottomRight ( *PQPOINTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQPOINTF(1) )
    {
      obj->moveCenter ( *PQPOINTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) )
    {
      obj->moveLeft ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) )
    {
      obj->moveRight ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveTo ( qreal x, qreal y )
*/
void QRectF_moveTo1 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->moveTo ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveTo ( const QPointF & position )
*/
void QRectF_moveTo2 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->moveTo ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void moveTo ( qreal x, qreal y )
//[2]void moveTo ( const QPointF & position )

HB_FUNC_STATIC( QRECTF_MOVETO )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRectF_moveTo1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QRectF_moveTo2();
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
    if( ISNUM(1) )
    {
      obj->moveTop ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQPOINTF(1) )
    {
      obj->moveTopLeft ( *PQPOINTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQPOINTF(1) )
    {
      obj->moveTopRight ( *PQPOINTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    QRectF * ptr = new QRectF( obj->normalized () );
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
    RQREAL( obj->right () );
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
    if( ISNUM(1) )
    {
      obj->setBottom ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQPOINTF(1) )
    {
      obj->setBottomLeft ( *PQPOINTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQPOINTF(1) )
    {
      obj->setBottomRight ( *PQPOINTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      obj->setCoords ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) )
    {
      obj->setHeight ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) )
    {
      obj->setLeft ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      obj->setRect ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) )
    {
      obj->setRight ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQSIZEF(1) )
    {
      obj->setSize ( *PQSIZEF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) )
    {
      obj->setTop ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQPOINTF(1) )
    {
      obj->setTopLeft ( *PQPOINTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISQPOINTF(1) )
    {
      obj->setTopRight ( *PQPOINTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) )
    {
      obj->setWidth ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) )
    {
      obj->setX ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) )
    {
      obj->setY ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    QSizeF * ptr = new QSizeF( obj->size () );
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
    QRect * ptr = new QRect( obj->toAlignedRect () );
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
    QRect * ptr = new QRect( obj->toRect () );
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
    RQREAL( obj->top () );
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
    QPointF * ptr = new QPointF( obj->topLeft () );
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
    QPointF * ptr = new QPointF( obj->topRight () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void translate ( qreal dx, qreal dy )
*/
void QRectF_translate1 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate ( const QPointF & offset )
*/
void QRectF_translate2 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void translate ( qreal dx, qreal dy )
//[2]void translate ( const QPointF & offset )

HB_FUNC_STATIC( QRECTF_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRectF_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QRectF_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF translated ( qreal dx, qreal dy ) const
*/
void QRectF_translated1 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->translated ( PQREAL(1), PQREAL(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF translated ( const QPointF & offset ) const
*/
void QRectF_translated2 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->translated ( *PQPOINTF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

//[1]QRectF translated ( qreal dx, qreal dy ) const
//[2]QRectF translated ( const QPointF & offset ) const

HB_FUNC_STATIC( QRECTF_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRectF_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QRectF_translated2();
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
    if( ISQRECTF(1) )
    {
      QRectF * ptr = new QRectF( obj->united ( *PQRECTF(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    RQREAL( obj->width () );
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
    RQREAL( obj->x () );
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
    RQREAL( obj->y () );
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
