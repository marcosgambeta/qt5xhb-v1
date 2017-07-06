$header

#include "hbclass.ch"

CLASS QWebChannel INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD registerObject
   METHOD deregisterObject
   METHOD blockUpdates
   METHOD setBlockUpdates
   METHOD connectTo
   METHOD disconnectFrom
   METHOD obBlockUpdatesChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
explicit QWebChannel(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWEBCHANNEL_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannel * o = new QWebChannel ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,4,0

/*
Q_INVOKABLE void registerObject(const QString &id, QObject *object)
*/
HB_FUNC_STATIC( QWEBCHANNEL_REGISTEROBJECT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannel * obj = (QWebChannel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->registerObject ( PQSTRING(1), PQOBJECT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
Q_INVOKABLE void deregisterObject(QObject *object)
*/
HB_FUNC_STATIC( QWEBCHANNEL_DEREGISTEROBJECT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannel * obj = (QWebChannel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->deregisterObject ( PQOBJECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool blockUpdates() const
*/
HB_FUNC_STATIC( QWEBCHANNEL_BLOCKUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannel * obj = (QWebChannel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->blockUpdates () );
  }
#endif
}

/*
void setBlockUpdates(bool block)
*/
HB_FUNC_STATIC( QWEBCHANNEL_SETBLOCKUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannel * obj = (QWebChannel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBlockUpdates ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void connectTo(QWebChannelAbstractTransport *transport)
*/
HB_FUNC_STATIC( QWEBCHANNEL_CONNECTTO )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannel * obj = (QWebChannel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebChannelAbstractTransport * par1 = (QWebChannelAbstractTransport *) _qt5xhb_itemGetPtr(1);
    obj->connectTo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void disconnectFrom(QWebChannelAbstractTransport *transport)
*/
HB_FUNC_STATIC( QWEBCHANNEL_DISCONNECTFROM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannel * obj = (QWebChannel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebChannelAbstractTransport * par1 = (QWebChannelAbstractTransport *) _qt5xhb_itemGetPtr(1);
    obj->disconnectFrom ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
