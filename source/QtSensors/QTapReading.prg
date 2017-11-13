/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QTapReading INHERIT QSensorReading

   METHOD delete
   METHOD tapDirection
   METHOD setTapDirection
   METHOD isDoubleTap
   METHOD setDoubleTap

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTapReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QTapReading>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QTapReading>
#endif
#endif


HB_FUNC_STATIC( QTAPREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapReading * obj = (QTapReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
TapDirection tapDirection() const
*/
HB_FUNC_STATIC( QTAPREADING_TAPDIRECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapReading * obj = (QTapReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->tapDirection () );
  }
#endif
}


/*
void setTapDirection(TapDirection tapDirection)
*/
HB_FUNC_STATIC( QTAPREADING_SETTAPDIRECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapReading * obj = (QTapReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTapDirection ( (QTapReading::TapDirection) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isDoubleTap() const
*/
HB_FUNC_STATIC( QTAPREADING_ISDOUBLETAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapReading * obj = (QTapReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isDoubleTap () );
  }
#endif
}


/*
void setDoubleTap(bool doubleTap)
*/
HB_FUNC_STATIC( QTAPREADING_SETDOUBLETAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapReading * obj = (QTapReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDoubleTap ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
