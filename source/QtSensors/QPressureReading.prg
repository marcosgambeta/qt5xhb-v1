/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QPressureReading INHERIT QSensorReading

   METHOD delete
   METHOD pressure
   METHOD setPressure

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPressureReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QPressureReading>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QPressureReading>
#endif
#endif


HB_FUNC_STATIC( QPRESSUREREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QPressureReading * obj = (QPressureReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
qreal pressure() const
*/
HB_FUNC_STATIC( QPRESSUREREADING_PRESSURE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QPressureReading * obj = (QPressureReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->pressure () );
  }
#endif
}


/*
void setPressure(qreal pressure)
*/
HB_FUNC_STATIC( QPRESSUREREADING_SETPRESSURE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QPressureReading * obj = (QPressureReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPressure ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
