/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QDBUSERROR
REQUEST QDBUSMESSAGE
#endif

CLASS QDBusPendingCall

   DATA pointer
   DATA class_id INIT Class_Id_QDBusPendingCall
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDBusPendingCall>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDBusPendingCall>
#endif
#endif

/*
QDBusPendingCall(const QDBusPendingCall &other)
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDBusPendingCall * o = new QDBusPendingCall (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusPendingCall *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QDBUSPENDINGCALL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
void swap(QDBusPendingCall &other)
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_SWAP )
{
  QDBusPendingCall * obj = (QDBusPendingCall *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->swap (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isFinished() const
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_ISFINISHED )
{
#ifndef Q_QDOC
  QDBusPendingCall * obj = (QDBusPendingCall *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFinished (  ) );
  }
#endif
}


/*
void waitForFinished()
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_WAITFORFINISHED )
{
#ifndef Q_QDOC
  QDBusPendingCall * obj = (QDBusPendingCall *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->waitForFinished (  );
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
  QDBusPendingCall * obj = (QDBusPendingCall *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isError (  ) );
  }
#endif
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_ISVALID )
{
#ifndef Q_QDOC
  QDBusPendingCall * obj = (QDBusPendingCall *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
#endif
}


/*
QDBusError error() const
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_ERROR )
{
#ifndef Q_QDOC
  QDBusPendingCall * obj = (QDBusPendingCall *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusError * ptr = new QDBusError( obj->error (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDBUSERROR" );
  }
#endif
}


/*
QDBusMessage reply() const
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_REPLY )
{
#ifndef Q_QDOC
  QDBusPendingCall * obj = (QDBusPendingCall *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusMessage * ptr = new QDBusMessage( obj->reply (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
#endif
}


/*
static QDBusPendingCall fromError(const QDBusError &error)
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_FROMERROR )
{
  QDBusPendingCall * ptr = new QDBusPendingCall( QDBusPendingCall::fromError (  ) );
  _qt4xhb_createReturnClass ( ptr, "QDBUSPENDINGCALL" );
}


/*
static QDBusPendingCall fromCompletedCall(const QDBusMessage &message)
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_FROMCOMPLETEDCALL )
{
  QDBusPendingCall * ptr = new QDBusPendingCall( QDBusPendingCall::fromCompletedCall (  ) );
  _qt4xhb_createReturnClass ( ptr, "QDBUSPENDINGCALL" );
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