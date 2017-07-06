$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBITMAP
REQUEST QPOINT
REQUEST QPIXMAP
#endif

CLASS QCursor

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bitmap
   METHOD hotSpot
   METHOD mask
   METHOD pixmap
   METHOD setShape
   METHOD shape
   METHOD pos
   METHOD setPos

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

#include <QPixmap>

/*
QCursor ()
*/
void QCursor_new1 ()
{
  QCursor * o = new QCursor ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QCursor ( Qt::CursorShape shape )
*/
void QCursor_new2 ()
{
  QCursor * o = new QCursor ( (Qt::CursorShape) hb_parni(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QCursor ( const QBitmap & bitmap, const QBitmap & mask, int hotX = -1, int hotY = -1 )
*/
void QCursor_new3 ()
{
  QCursor * o = new QCursor ( *PQBITMAP(1), *PQBITMAP(2), OPINT(3,-1), OPINT(4,-1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QCursor ( const QPixmap & pixmap, int hotX = -1, int hotY = -1 )
*/
void QCursor_new4 ()
{
  QCursor * o = new QCursor ( *PQPIXMAP(1), OPINT(2,-1), OPINT(3,-1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QCursor ( const QCursor & c )
*/
void QCursor_new5 ()
{
  QCursor * o = new QCursor ( *PQCURSOR(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QCursor ()
//[2]QCursor ( Qt::CursorShape shape )
//[3]QCursor ( const QBitmap & bitmap, const QBitmap & mask, int hotX = -1, int hotY = -1 )
//[4]QCursor ( const QPixmap & pixmap, int hotX = -1, int hotY = -1 )
//[5]QCursor ( const QCursor & c )
//[6]QCursor ( HCURSOR cursor ) // TODO: implementar
//[7]QCursor ( Qt::HANDLE handle ) // TODO: implementar

HB_FUNC_STATIC( QCURSOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QCursor_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QCursor_new2();
  }
  else if( ISBETWEEN(2,4) && ISQBITMAP(1) && ISQBITMAP(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QCursor_new3();
  }
  else if( ISBETWEEN(1,3) && ISQPIXMAP(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QCursor_new4();
  }
  else if( ISNUMPAR(1) && ISQCURSOR(1) )
  {
    QCursor_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
const QBitmap * bitmap () const
*/
HB_FUNC_STATIC( QCURSOR_BITMAP )
{
  QCursor * obj = (QCursor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBitmap * ptr = obj->bitmap ();
    _qt5xhb_createReturnClass ( ptr, "QBITMAP" );
  }
}

/*
QPoint hotSpot () const
*/
HB_FUNC_STATIC( QCURSOR_HOTSPOT )
{
  QCursor * obj = (QCursor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->hotSpot () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
const QBitmap * mask () const
*/
HB_FUNC_STATIC( QCURSOR_MASK )
{
  QCursor * obj = (QCursor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBitmap * ptr = obj->mask ();
    _qt5xhb_createReturnClass ( ptr, "QBITMAP" );
  }
}

/*
QPixmap pixmap () const
*/
HB_FUNC_STATIC( QCURSOR_PIXMAP )
{
  QCursor * obj = (QCursor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->pixmap () );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
void setShape ( Qt::CursorShape shape )
*/
HB_FUNC_STATIC( QCURSOR_SETSHAPE )
{
  QCursor * obj = (QCursor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setShape ( (Qt::CursorShape) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::CursorShape shape () const
*/
HB_FUNC_STATIC( QCURSOR_SHAPE )
{
  QCursor * obj = (QCursor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->shape () );
  }
}

/*
static QPoint pos ()
*/
HB_FUNC_STATIC( QCURSOR_POS )
{
  QPoint * ptr = new QPoint( QCursor::pos () );
  _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
}

/*
static void setPos ( int x, int y )
*/
void QCursor_setPos1 ()
{
  QCursor::setPos ( PINT(1), PINT(2) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setPos ( const QPoint & p )
*/
void QCursor_setPos2 ()
{
  QCursor::setPos ( *PQPOINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QCURSOR_SETPOS )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QCursor_setPos1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QCursor_setPos2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
