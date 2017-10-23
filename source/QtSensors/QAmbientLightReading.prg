/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QAmbientLightReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD lightLevel
   METHOD setLightLevel

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAmbientLightReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QAmbientLightReading>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QAmbientLightReading>
#endif
#endif


HB_FUNC_STATIC( QAMBIENTLIGHTREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientLightReading * obj = (QAmbientLightReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
LightLevel lightLevel() const
*/
HB_FUNC_STATIC( QAMBIENTLIGHTREADING_LIGHTLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientLightReading * obj = (QAmbientLightReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lightLevel () );
  }
#endif
}


/*
void setLightLevel(LightLevel lightLevel)
*/
HB_FUNC_STATIC( QAMBIENTLIGHTREADING_SETLIGHTLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientLightReading * obj = (QAmbientLightReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLightLevel ( (QAmbientLightReading::LightLevel) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
