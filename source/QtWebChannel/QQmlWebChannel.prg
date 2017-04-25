/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQMLLISTPROPERTY<QOBJECT>
REQUEST QQMLWEBCHANNELATTACHED
#endif

CLASS QQmlWebChannel INHERIT QWebChannel

   //DATA class_id INIT Class_Id_QQmlWebChannel
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD registerObjects
   METHOD registeredObjects
   METHOD transports
   METHOD qmlAttachedProperties
   METHOD connectTo
   METHOD disconnectFrom

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlWebChannel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QQmlWebChannel>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QQmlWebChannel>
#endif
#endif

/*
explicit QQmlWebChannel(QObject *parent = 0)
*/
HB_FUNC_STATIC( QQMLWEBCHANNEL_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QQmlWebChannel * o = new QQmlWebChannel ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QQMLWEBCHANNEL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QQmlWebChannel * obj = (QQmlWebChannel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Q_INVOKABLE void registerObjects(const QVariantMap &objects)
*/
HB_FUNC_STATIC( QQMLWEBCHANNEL_REGISTEROBJECTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QQmlWebChannel * obj = (QQmlWebChannel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->registerObjects (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QQmlListProperty<QObject> registeredObjects()
*/
HB_FUNC_STATIC( QQMLWEBCHANNEL_REGISTEREDOBJECTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QQmlWebChannel * obj = (QQmlWebChannel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlListProperty<QObject> * ptr = new QQmlListProperty<QObject>( obj->registeredObjects (  ) );
    _qt5xhb_createReturnClass ( ptr, "QQMLLISTPROPERTY<QOBJECT>" );
  }
#endif
}


/*
QQmlListProperty<QObject> transports()
*/
HB_FUNC_STATIC( QQMLWEBCHANNEL_TRANSPORTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QQmlWebChannel * obj = (QQmlWebChannel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlListProperty<QObject> * ptr = new QQmlListProperty<QObject>( obj->transports (  ) );
    _qt5xhb_createReturnClass ( ptr, "QQMLLISTPROPERTY<QOBJECT>" );
  }
#endif
}


/*
static QQmlWebChannelAttached *qmlAttachedProperties(QObject *obj)
*/
HB_FUNC_STATIC( QQMLWEBCHANNEL_QMLATTACHEDPROPERTIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  QQmlWebChannelAttached * ptr = QQmlWebChannel::qmlAttachedProperties ( par1 );
  _qt5xhb_createReturnClass ( ptr, "QQMLWEBCHANNELATTACHED" );
#endif
}


/*
Q_INVOKABLE void connectTo(QObject *transport)
*/
HB_FUNC_STATIC( QQMLWEBCHANNEL_CONNECTTO )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QQmlWebChannel * obj = (QQmlWebChannel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    obj->connectTo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
Q_INVOKABLE void disconnectFrom(QObject *transport)
*/
HB_FUNC_STATIC( QQMLWEBCHANNEL_DISCONNECTFROM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QQmlWebChannel * obj = (QQmlWebChannel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    obj->disconnectFrom ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
