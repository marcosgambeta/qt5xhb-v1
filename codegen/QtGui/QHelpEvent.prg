$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QHelpEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD globalPos
   METHOD globalX
   METHOD globalY
   METHOD pos
   METHOD x
   METHOD y

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QHelpEvent ( Type type, const QPoint & pos, const QPoint & globalPos )
*/
HB_FUNC_STATIC( QHELPEVENT_NEW )
{
  QHelpEvent * o = new QHelpEvent ( (QEvent::Type) hb_parni(1), *PQPOINT(2), *PQPOINT(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
const QPoint & globalPos () const
*/
HB_FUNC_STATIC( QHELPEVENT_GLOBALPOS )
{
  QHelpEvent * obj = (QHelpEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPoint * ptr = &obj->globalPos ();
    _qt5xhb_createReturnClass ( ptr, "QPOINT" );
  }
}


/*
int globalX () const
*/
HB_FUNC_STATIC( QHELPEVENT_GLOBALX )
{
  QHelpEvent * obj = (QHelpEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->globalX () );
  }
}


/*
int globalY () const
*/
HB_FUNC_STATIC( QHELPEVENT_GLOBALY )
{
  QHelpEvent * obj = (QHelpEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->globalY () );
  }
}


/*
const QPoint & pos () const
*/
HB_FUNC_STATIC( QHELPEVENT_POS )
{
  QHelpEvent * obj = (QHelpEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPoint * ptr = &obj->pos ();
    _qt5xhb_createReturnClass ( ptr, "QPOINT" );
  }
}


/*
int x () const
*/
HB_FUNC_STATIC( QHELPEVENT_X )
{
  QHelpEvent * obj = (QHelpEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->x () );
  }
}


/*
int y () const
*/
HB_FUNC_STATIC( QHELPEVENT_Y )
{
  QHelpEvent * obj = (QHelpEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->y () );
  }
}



#pragma ENDDUMP
