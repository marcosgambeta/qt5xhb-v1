$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQMLLISTPROPERTY<QOBJECT>
REQUEST QQMLWEBCHANNELATTACHED
#endif

CLASS QQmlWebChannel INHERIT QWebChannel

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

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
explicit QQmlWebChannel(QObject *parent = 0)
*/
HB_FUNC_STATIC( QQMLWEBCHANNEL_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QQmlWebChannel * o = new QQmlWebChannel ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,4,0

/*
Q_INVOKABLE void registerObjects(const QVariantMap &objects)
*/
HB_FUNC_STATIC( QQMLWEBCHANNEL_REGISTEROBJECTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QQmlWebChannel * obj = (QQmlWebChannel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->registerObjects ();
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
    QQmlListProperty<QObject> * ptr = new QQmlListProperty<QObject>( obj->registeredObjects () );
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
    QQmlListProperty<QObject> * ptr = new QQmlListProperty<QObject>( obj->transports () );
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
  QQmlWebChannelAttached * ptr = QQmlWebChannel::qmlAttachedProperties ( PQOBJECT(1) );
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
    obj->connectTo ( PQOBJECT(1) );
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
    obj->disconnectFrom ( PQOBJECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
