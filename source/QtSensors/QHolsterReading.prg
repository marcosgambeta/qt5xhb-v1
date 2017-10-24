/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QHolsterReading INHERIT QSensorReading

   METHOD delete
   METHOD holstered
   METHOD setHolstered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHolsterReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QHolsterReading>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QHolsterReading>
#endif
#endif


HB_FUNC_STATIC( QHOLSTERREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QHolsterReading * obj = (QHolsterReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool holstered() const
*/
HB_FUNC_STATIC( QHOLSTERREADING_HOLSTERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QHolsterReading * obj = (QHolsterReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->holstered () );
  }
#endif
}


/*
void setHolstered(bool holstered)
*/
HB_FUNC_STATIC( QHOLSTERREADING_SETHOLSTERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QHolsterReading * obj = (QHolsterReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHolstered ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
