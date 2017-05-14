/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
REQUEST QNETWORKINTERFACE
REQUEST QVARIANT
#endif

CLASS QNetworkSession INHERIT QObject

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD activeTime
   METHOD bytesReceived
   METHOD bytesWritten
   METHOD configuration
   METHOD error
   METHOD errorString
   METHOD interface
   METHOD isOpen
   METHOD sessionProperty
   METHOD setSessionProperty
   METHOD state
   METHOD waitForOpened
   METHOD accept
   METHOD close
   METHOD ignore
   METHOD migrate
   METHOD open
   METHOD reject
   METHOD stop

   METHOD onClosed
   METHOD onError
   METHOD onNewConfigurationActivated
   METHOD onOpened
   METHOD onPreferredConfigurationChanged
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkSession
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QNetworkSession>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QNetworkSession>
#endif

/*
QNetworkSession ( const QNetworkConfiguration & connectionConfig, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QNETWORKSESSION_NEW )
{
  QNetworkConfiguration * par1 = (QNetworkConfiguration *) _qt5xhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QNetworkSession * o = new QNetworkSession ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QNETWORKSESSION_DELETE )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
}

/*
quint64 activeTime () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ACTIVETIME )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->activeTime (  ) );
  }
}


/*
quint64 bytesReceived () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_BYTESRECEIVED )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesReceived (  ) );
  }
}


/*
quint64 bytesWritten () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_BYTESWRITTEN )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesWritten (  ) );
  }
}


/*
QNetworkConfiguration configuration () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_CONFIGURATION )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->configuration (  ) );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
  }
}


/*
SessionError error () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ERROR )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ERRORSTRING )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
QNetworkInterface interface () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_INTERFACE )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkInterface * ptr = new QNetworkInterface( obj->interface (  ) );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKINTERFACE", true );
  }
}


/*
bool isOpen () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ISOPEN )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isOpen (  ) );
  }
}


/*
QVariant sessionProperty ( const QString & key ) const
*/
HB_FUNC_STATIC( QNETWORKSESSION_SESSIONPROPERTY )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->sessionProperty ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
void setSessionProperty ( const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QNETWORKSESSION_SETSESSIONPROPERTY )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->setSessionProperty ( PQSTRING(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
State state () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_STATE )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state (  ) );
  }
}


/*
bool waitForOpened ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QNETWORKSESSION_WAITFOROPENED )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForOpened ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
void accept ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_ACCEPT )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->accept (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void close ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_CLOSE )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void ignore ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_IGNORE )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->ignore (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void migrate ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_MIGRATE )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->migrate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void open ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_OPEN )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->open (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reject ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_REJECT )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reject (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_STOP )
{
  QNetworkSession * obj = (QNetworkSession *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
