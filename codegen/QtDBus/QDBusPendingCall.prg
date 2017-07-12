$header

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

$destructor

#pragma BEGINDUMP

$includes

/*
QDBusPendingCall(const QDBusPendingCall &other)
*/
$constructor=|new|const QDBusPendingCall &

$deleteMethod

/*
void swap(QDBusPendingCall &other)
*/
$method=|void|swap|QDBusPendingCall &

/*
bool isFinished() const
*/
HB_FUNC_STATIC( QDBUSPENDINGCALL_ISFINISHED )
{
#ifndef Q_QDOC
  QDBusPendingCall * obj = (QDBusPendingCall *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFinished () );
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
    RBOOL( obj->isError () );
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
    RBOOL( obj->isValid () );
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
$staticMethod=|QDBusPendingCall|fromError|const QDBusError &

/*
static QDBusPendingCall fromCompletedCall(const QDBusMessage &message)
*/
$staticMethod=|QDBusPendingCall|fromCompletedCall|const QDBusMessage &

$extraMethods

#pragma ENDDUMP
