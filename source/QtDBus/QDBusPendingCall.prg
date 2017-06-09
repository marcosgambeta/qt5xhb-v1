/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSERROR
REQUEST QDBUSMESSAGE
#endif

CLASS QDBusPendingCall

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isFinished
   METHOD waitForFinished
   METHOD isError
   METHOD isValid
   METHOD error
   METHOD reply
   METHOD fromError
   METHOD fromCompletedCall

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusPendingCall
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusPendingCall>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusPendingCall>
#endif

/*
QDBusPendingCall(const QDBusPendingCall &other)
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_NEW )
{
  QDBusPendingCall * o = new QDBusPendingCall ();
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QDBUSPENDINGCALL_DELETE )
{
  QDBusPendingCall * obj = (QDBusPendingCall *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QDBusPendingCall &other)
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_SWAP )
{
  QDBusPendingCall * obj = (QDBusPendingCall *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->swap ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isFinished() const
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_ISFINISHED )
{
#ifndef Q_QDOC
  QDBusPendingCall * obj = (QDBusPendingCall *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFinished () );
  }
#endif
}


/*
void waitForFinished()
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_WAITFORFINISHED )
{
#ifndef Q_QDOC
  QDBusPendingCall * obj = (QDBusPendingCall *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->waitForFinished ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isError() const
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_ISERROR )
{
#ifndef Q_QDOC
  QDBusPendingCall * obj = (QDBusPendingCall *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isError () );
  }
#endif
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_ISVALID )
{
#ifndef Q_QDOC
  QDBusPendingCall * obj = (QDBusPendingCall *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid () );
  }
#endif
}


/*
QDBusError error() const
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_ERROR )
{
#ifndef Q_QDOC
  QDBusPendingCall * obj = (QDBusPendingCall *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusError * ptr = new QDBusError( obj->error () );
    _qt5xhb_createReturnClass ( ptr, "QDBUSERROR", true );
  }
#endif
}


/*
QDBusMessage reply() const
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_REPLY )
{
#ifndef Q_QDOC
  QDBusPendingCall * obj = (QDBusPendingCall *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusMessage * ptr = new QDBusMessage( obj->reply () );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
#endif
}


/*
static QDBusPendingCall fromError(const QDBusError &error)
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_FROMERROR )
{
  QDBusPendingCall * ptr = new QDBusPendingCall( QDBusPendingCall::fromError () );
  _qt5xhb_createReturnClass ( ptr, "QDBUSPENDINGCALL" );
}


/*
static QDBusPendingCall fromCompletedCall(const QDBusMessage &message)
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_FROMCOMPLETEDCALL )
{
  QDBusPendingCall * ptr = new QDBusPendingCall( QDBusPendingCall::fromCompletedCall ( *PQDBUSMESSAGE(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSPENDINGCALL" );
}



HB_FUNC_STATIC( QDBUSPENDINGCALL_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDBUSPENDINGCALL_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDBUSPENDINGCALL_NEWFROM );
}

HB_FUNC_STATIC( QDBUSPENDINGCALL_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDBUSPENDINGCALL_NEWFROM );
}

HB_FUNC_STATIC( QDBUSPENDINGCALL_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDBUSPENDINGCALL_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
