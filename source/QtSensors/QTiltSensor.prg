/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTILTREADING
#endif

CLASS QTiltSensor INHERIT QSensor

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading
   METHOD calibrate

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTiltSensor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QTiltSensor>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QTiltSensor>
#endif
#endif

/*
QTiltSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QTILTSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QTiltSensor * o = new QTiltSensor ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QTILTSENSOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltSensor * obj = (QTiltSensor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QTiltReading *reading() const
*/
HB_FUNC_STATIC( QTILTSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltSensor * obj = (QTiltSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTiltReading * ptr = obj->reading (  );
    _qt5xhb_createReturnClass ( ptr, "QTILTREADING" );
  }
#endif
}


/*
void calibrate()
*/
HB_FUNC_STATIC( QTILTSENSOR_CALIBRATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltSensor * obj = (QTiltSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->calibrate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
