/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QResizeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD size
   METHOD oldSize

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QResizeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QResizeEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QResizeEvent>
#endif

/*
QResizeEvent(const QSize &size, const QSize &oldSize)
*/
HB_FUNC_STATIC( QRESIZEEVENT_NEW )
{
  QResizeEvent * o = new QResizeEvent ( *PQSIZE(1), *PQSIZE(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QRESIZEEVENT_DELETE )
{
  QResizeEvent * obj = (QResizeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QSize &size() const
*/
HB_FUNC_STATIC( QRESIZEEVENT_SIZE )
{
  QResizeEvent * obj = (QResizeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QSize * ptr = &obj->size ();
    _qt5xhb_createReturnClass ( ptr, "QSIZE" );
  }
}


/*
const QSize &oldSize() const
*/
HB_FUNC_STATIC( QRESIZEEVENT_OLDSIZE )
{
  QResizeEvent * obj = (QResizeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QSize * ptr = &obj->oldSize ();
    _qt5xhb_createReturnClass ( ptr, "QSIZE" );
  }
}



#pragma ENDDUMP
