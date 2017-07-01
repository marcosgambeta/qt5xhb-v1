/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QAltimeterReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD altitude
   METHOD setAltitude

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAltimeterReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QAltimeterReading>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QAltimeterReading>
#endif
#endif


HB_FUNC_STATIC( QALTIMETERREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAltimeterReading * obj = (QAltimeterReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal altitude() const
*/
HB_FUNC_STATIC( QALTIMETERREADING_ALTITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAltimeterReading * obj = (QAltimeterReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->altitude () );
  }
#endif
}


/*
void setAltitude(qreal altitude)
*/
HB_FUNC_STATIC( QALTIMETERREADING_SETALTITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAltimeterReading * obj = (QAltimeterReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAltitude ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
