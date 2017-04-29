/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTAPREADING
#endif

CLASS QTapSensor INHERIT QSensor

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading
   METHOD returnDoubleTapEvents
   METHOD setReturnDoubleTapEvents

   METHOD onReturnDoubleTapEventsChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTapSensor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QTapSensor>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QTapSensor>
#endif
#endif

/*
QTapSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QTAPSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QTapSensor * o = new QTapSensor ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QTAPSENSOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QTapReading *reading() const
*/
HB_FUNC_STATIC( QTAPSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTapReading * ptr = obj->reading (  );
    _qt5xhb_createReturnClass ( ptr, "QTAPREADING" );
  }
#endif
}


/*
bool returnDoubleTapEvents() const
*/
HB_FUNC_STATIC( QTAPSENSOR_RETURNDOUBLETAPEVENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->returnDoubleTapEvents (  ) );
  }
#endif
}


/*
void setReturnDoubleTapEvents(bool returnDoubleTapEvents)
*/
HB_FUNC_STATIC( QTAPSENSOR_SETRETURNDOUBLETAPEVENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReturnDoubleTapEvents ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
