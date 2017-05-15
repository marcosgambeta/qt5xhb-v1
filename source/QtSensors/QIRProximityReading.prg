/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QIRProximityReading INHERIT QSensorReading

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD reflectance
   METHOD setReflectance

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIRProximityReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QIRProximityReading>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QIRProximityReading>
#endif
#endif


HB_FUNC_STATIC( QIRPROXIMITYREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximityReading * obj = (QIRProximityReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal reflectance() const
*/
HB_FUNC_STATIC( QIRPROXIMITYREADING_REFLECTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximityReading * obj = (QIRProximityReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->reflectance () );
  }
#endif
}


/*
void setReflectance(qreal reflectance)
*/
HB_FUNC_STATIC( QIRPROXIMITYREADING_SETREFLECTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximityReading * obj = (QIRProximityReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReflectance ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
