/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMAGNETOMETERREADING
#endif

CLASS QMagnetometer INHERIT QSensor

   METHOD new
   METHOD delete
   METHOD reading
   METHOD returnGeoValues
   METHOD setReturnGeoValues

   METHOD onReturnGeoValuesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMagnetometer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QMagnetometer>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QMagnetometer>
#endif
#endif

/*
QMagnetometer(QObject *parent = 0)
*/
HB_FUNC_STATIC( QMAGNETOMETER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometer * o = new QMagnetometer ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QMAGNETOMETER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometer * obj = (QMagnetometer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QMagnetometerReading *reading() const
*/
HB_FUNC_STATIC( QMAGNETOMETER_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometer * obj = (QMagnetometer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMagnetometerReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QMAGNETOMETERREADING" );
  }
#endif
}


/*
bool returnGeoValues() const
*/
HB_FUNC_STATIC( QMAGNETOMETER_RETURNGEOVALUES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometer * obj = (QMagnetometer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->returnGeoValues () );
  }
#endif
}


/*
void setReturnGeoValues(bool returnGeoValues)
*/
HB_FUNC_STATIC( QMAGNETOMETER_SETRETURNGEOVALUES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometer * obj = (QMagnetometer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReturnGeoValues ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
