/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QMAGNETOMETERREADING
#endif

CLASS QMagnetometer INHERIT QSensor

   DATA class_id INIT Class_Id_QMagnetometer
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
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
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QMagnetometer * o = new QMagnetometer ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMagnetometer *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
  QMagnetometer * obj = (QMagnetometer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMagnetometerReading * ptr = obj->reading (  );
    _qt4xhb_createReturnClass ( ptr, "QMAGNETOMETERREADING" );
  }
#endif
}


/*
bool returnGeoValues() const
*/
HB_FUNC_STATIC( QMAGNETOMETER_RETURNGEOVALUES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometer * obj = (QMagnetometer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->returnGeoValues (  ) );
  }
#endif
}


/*
void setReturnGeoValues(bool returnGeoValues)
*/
HB_FUNC_STATIC( QMAGNETOMETER_SETRETURNGEOVALUES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometer * obj = (QMagnetometer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReturnGeoValues ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
