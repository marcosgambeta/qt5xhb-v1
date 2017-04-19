/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOMPASSREADING
#endif

CLASS QCompass INHERIT QSensor

   DATA class_id INIT Class_Id_QCompass
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCompass
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QCompass>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QCompass>
#endif
#endif

/*
QCompass(QObject *parent = 0)
*/
HB_FUNC_STATIC( QCOMPASS_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QCompass * o = new QCompass ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QCOMPASS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompass * obj = (QCompass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QCompassReading *reading() const
*/
HB_FUNC_STATIC( QCOMPASS_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompass * obj = (QCompass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCompassReading * ptr = obj->reading (  );
    _qt5xhb_createReturnClass ( ptr, "QCOMPASSREADING" );
  }
#endif
}



#pragma ENDDUMP
