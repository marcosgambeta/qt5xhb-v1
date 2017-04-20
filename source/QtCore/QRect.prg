/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QSIZE
#endif

CLASS QRect

   DATA pointer
   DATA class_id INIT Class_Id_QRect
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QRect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QRect>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRect>
#endif

/*
QRect ()
*/
void QRect_new1 ()
{
  QRect * o = new QRect (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRect ( const QPoint & topLeft, const QPoint & bottomRight )
*/
void QRect_new2 ()
{
  QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
  QPoint * par2 = (QPoint *) _qt5xhb_itemGetPtr(2);
  QRect * o = new QRect ( *par1, *par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRect ( const QPoint & topLeft, const QSize & size )
*/
void QRect_new3 ()
{
  QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
  QSize * par2 = (QSize *) _qt5xhb_itemGetPtr(2);
  QRect * o = new QRect ( *par1, *par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRect ( int x, int y, int width, int height )
*/
void QRect_new4 ()
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  QRect * o = new QRect ( par1, par2, par3, par4 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QRect ()
//[2]QRect ( const QPoint & topLeft, const QPoint & bottomRight )
//[3]QRect ( const QPoint & topLeft, const QSize & size )
//[4]QRect ( int x, int y, int width, int height )

HB_FUNC_STATIC( QRECT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRect_new1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPOINT(2) )
  {
    QRect_new2();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQSIZE(2) )
  {
    QRect_new3();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QRect_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QRECT_DELETE )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void adjust ( int dx1, int dy1, int dx2, int dy2 )
*/
HB_FUNC_STATIC( QRECT_ADJUST )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      obj->adjust ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect adjusted ( int dx1, int dy1, int dx2, int dy2 ) const
*/
HB_FUNC_STATIC( QRECT_ADJUSTED )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      QRect * ptr = new QRect( obj->adjusted ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int bottom () const
*/
HB_FUNC_STATIC( QRECT_BOTTOM )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->bottom (  ) );
  }
}

/*
QPoint bottomLeft () const
*/
HB_FUNC_STATIC( QRECT_BOTTOMLEFT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->bottomLeft (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint bottomRight () const
*/
HB_FUNC_STATIC( QRECT_BOTTOMRIGHT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->bottomRight (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint center () const
*/
HB_FUNC_STATIC( QRECT_CENTER )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->center (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
bool contains ( const QPoint & point, bool proper = false ) const
*/
void QRect_contains1 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->contains ( *par1, (bool) ISNIL(2)? false : hb_parl(2) ) );
  }
}

/*
bool contains ( int x, int y, bool proper ) const
*/
void QRect_contains2 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->contains ( (int) hb_parni(1), (int) hb_parni(2), (bool) hb_parl(3) ) );
  }
}

/*
bool contains ( int x, int y ) const
*/
void QRect_contains3 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->contains ( (int) hb_parni(1), (int) hb_parni(2) ) );
  }
}

/*
bool contains ( const QRect & rectangle, bool proper = false ) const
*/
void QRect_contains4 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->contains ( *par1, (bool) ISNIL(2)? false : hb_parl(2) ) );
  }
}

//[1]bool contains ( const QPoint & point, bool proper = false ) const
//[2]bool contains ( int x, int y, bool proper ) const
//[3]bool contains ( int x, int y ) const
//[4]bool contains ( const QRect & rectangle, bool proper = false ) const

HB_FUNC_STATIC( QRECT_CONTAINS )
{
  if( ISBETWEEN(1,2) && ISQPOINT(1) && ISOPTLOG(2) )
  {
    QRect_contains1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISLOG(3) )
  {
    QRect_contains2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRect_contains3();
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && ISOPTLOG(2) )
  {
    QRect_contains4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void getCoords ( int * x1, int * y1, int * x2, int * y2 ) const
*/
HB_FUNC_STATIC( QRECT_GETCOORDS )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      int par1;
      int par2;
      int par3;
      int par4;
      obj->getCoords ( &par1, &par2, &par3, &par4 );
      hb_storni( par1, 1 );
      hb_storni( par2, 2 );
      hb_storni( par3, 3 );
      hb_storni( par4, 4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void getRect ( int * x, int * y, int * width, int * height ) const
*/
HB_FUNC_STATIC( QRECT_GETRECT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      int par1;
      int par2;
      int par3;
      int par4;
      obj->getRect ( &par1, &par2, &par3, &par4 );
      hb_storni( par1, 1 );
      hb_storni( par2, 2 );
      hb_storni( par3, 3 );
      hb_storni( par4, 4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int height () const
*/
HB_FUNC_STATIC( QRECT_HEIGHT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->height (  ) );
  }
}

/*
QRect intersected ( const QRect & rectangle ) const
*/
HB_FUNC_STATIC( QRECT_INTERSECTED )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQRECT(1) )
    {
      QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
      QRect * ptr = new QRect( obj->intersected ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool intersects ( const QRect & rectangle ) const
*/
HB_FUNC_STATIC( QRECT_INTERSECTS )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQRECT(1) )
    {
      QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->intersects ( *par1 ) );
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
HB_FUNC_STATIC( QRECT_ISEMPTY )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QRECT_ISNULL )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QRECT_ISVALID )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}

/*
int left () const
*/
HB_FUNC_STATIC( QRECT_LEFT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->left (  ) );
  }
}

/*
void moveBottom ( int y )
*/
HB_FUNC_STATIC( QRECT_MOVEBOTTOM )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->moveBottom ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveBottomLeft ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_MOVEBOTTOMLEFT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      obj->moveBottomLeft ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveBottomRight ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_MOVEBOTTOMRIGHT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      obj->moveBottomRight ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveCenter ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_MOVECENTER )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      obj->moveCenter ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveLeft ( int x )
*/
HB_FUNC_STATIC( QRECT_MOVELEFT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->moveLeft ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveRight ( int x )
*/
HB_FUNC_STATIC( QRECT_MOVERIGHT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->moveRight ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveTo ( int x, int y )
*/
void QRect_moveTo1 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->moveTo ( (int) hb_parni(1), (int) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveTo ( const QPoint & position )
*/
void QRect_moveTo2 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    obj->moveTo ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void moveTo ( int x, int y )
//[2]void moveTo ( const QPoint & position )

HB_FUNC_STATIC( QRECT_MOVETO )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRect_moveTo1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRect_moveTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void moveTop ( int y )
*/
HB_FUNC_STATIC( QRECT_MOVETOP )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->moveTop ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveTopLeft ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_MOVETOPLEFT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      obj->moveTopLeft ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveTopRight ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_MOVETOPRIGHT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      obj->moveTopRight ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect normalized () const
*/
HB_FUNC_STATIC( QRECT_NORMALIZED )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->normalized (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
int right () const
*/
HB_FUNC_STATIC( QRECT_RIGHT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->right (  ) );
  }
}

/*
void setBottom ( int y )
*/
HB_FUNC_STATIC( QRECT_SETBOTTOM )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setBottom ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBottomLeft ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_SETBOTTOMLEFT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      obj->setBottomLeft ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBottomRight ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_SETBOTTOMRIGHT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      obj->setBottomRight ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCoords ( int x1, int y1, int x2, int y2 )
*/
HB_FUNC_STATIC( QRECT_SETCOORDS )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      obj->setCoords ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHeight ( int height )
*/
HB_FUNC_STATIC( QRECT_SETHEIGHT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setHeight ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLeft ( int x )
*/
HB_FUNC_STATIC( QRECT_SETLEFT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setLeft ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRect ( int x, int y, int width, int height )
*/
HB_FUNC_STATIC( QRECT_SETRECT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      obj->setRect ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRight ( int x )
*/
HB_FUNC_STATIC( QRECT_SETRIGHT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setRight ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSize ( const QSize & size )
*/
HB_FUNC_STATIC( QRECT_SETSIZE )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSIZE(1) )
    {
      QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
      obj->setSize ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTop ( int y )
*/
HB_FUNC_STATIC( QRECT_SETTOP )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setTop ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTopLeft ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_SETTOPLEFT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      obj->setTopLeft ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTopRight ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_SETTOPRIGHT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      obj->setTopRight ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidth ( int width )
*/
HB_FUNC_STATIC( QRECT_SETWIDTH )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setWidth ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setX ( int x )
*/
HB_FUNC_STATIC( QRECT_SETX )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setX ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setY ( int y )
*/
HB_FUNC_STATIC( QRECT_SETY )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setY ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize size () const
*/
HB_FUNC_STATIC( QRECT_SIZE )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->size (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
int top () const
*/
HB_FUNC_STATIC( QRECT_TOP )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->top (  ) );
  }
}

/*
QPoint topLeft () const
*/
HB_FUNC_STATIC( QRECT_TOPLEFT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->topLeft (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint topRight () const
*/
HB_FUNC_STATIC( QRECT_TOPRIGHT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->topRight (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
void translate ( int dx, int dy )
*/
void QRect_translate1 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( (int) hb_parni(1), (int) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate ( const QPoint & offset )
*/
void QRect_translate2 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    obj->translate ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void translate ( int dx, int dy )
//[2]void translate ( const QPoint & offset )

HB_FUNC_STATIC( QRECT_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRect_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRect_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect translated ( int dx, int dy ) const
*/
void QRect_translated1 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->translated ( (int) hb_parni(1), (int) hb_parni(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRect translated ( const QPoint & offset ) const
*/
void QRect_translated2 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->translated ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

//[1]QRect translated ( int dx, int dy ) const
//[2]QRect translated ( const QPoint & offset ) const

HB_FUNC_STATIC( QRECT_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRect_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRect_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect united ( const QRect & rectangle ) const
*/
HB_FUNC_STATIC( QRECT_UNITED )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQRECT(1) )
    {
      QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
      QRect * ptr = new QRect( obj->united ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int width () const
*/
HB_FUNC_STATIC( QRECT_WIDTH )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->width (  ) );
  }
}

/*
int x () const
*/
HB_FUNC_STATIC( QRECT_X )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->x (  ) );
  }
}

/*
int y () const
*/
HB_FUNC_STATIC( QRECT_Y )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->y (  ) );
  }
}

HB_FUNC_STATIC( QRECT_NEWFROM )
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

HB_FUNC_STATIC( QRECT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QRECT_NEWFROM );
}

HB_FUNC_STATIC( QRECT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QRECT_NEWFROM );
}

HB_FUNC_STATIC( QRECT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QRECT_SETSELFDESTRUCTION )
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
