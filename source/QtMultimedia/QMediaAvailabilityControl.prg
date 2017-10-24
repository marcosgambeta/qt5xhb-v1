/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QMediaAvailabilityControl INHERIT QMediaControl

   METHOD delete
   METHOD availability

   METHOD onAvailabilityChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaAvailabilityControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaAvailabilityControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaAvailabilityControl>
#endif


HB_FUNC_STATIC( QMEDIAAVAILABILITYCONTROL_DELETE )
{
  QMediaAvailabilityControl * obj = (QMediaAvailabilityControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QMultimedia::AvailabilityStatus availability() const = 0
*/
HB_FUNC_STATIC( QMEDIAAVAILABILITYCONTROL_AVAILABILITY )
{
  QMediaAvailabilityControl * obj = (QMediaAvailabilityControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->availability () );
  }
}




#pragma ENDDUMP
