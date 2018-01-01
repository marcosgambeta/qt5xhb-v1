/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGION
#endif

CLASS QExposeEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD region

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QExposeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QExposeEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QExposeEvent>
#endif

/*
QExposeEvent(const QRegion & rgn)
*/
HB_FUNC_STATIC( QEXPOSEEVENT_NEW )
{
  QExposeEvent * o = new QExposeEvent ( *PQREGION(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QEXPOSEEVENT_DELETE )
{
  QExposeEvent * obj = (QExposeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QRegion & region() const
*/
HB_FUNC_STATIC( QEXPOSEEVENT_REGION )
{
  QExposeEvent * obj = (QExposeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QRegion * ptr = &obj->region ();
    _qt5xhb_createReturnClass ( ptr, "QREGION" );
  }
}



#pragma ENDDUMP
