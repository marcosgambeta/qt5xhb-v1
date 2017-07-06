$header

#include "hbclass.ch"

CLASS QDBusPendingCallWatcher INHERIT QObject,QDBusPendingCall

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isFinished
   METHOD waitForFinished

   METHOD onFinished

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QDBusPendingCallWatcher(const QDBusPendingCall &call, QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_NEW )
{
  QDBusPendingCallWatcher * o = new QDBusPendingCallWatcher ( OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool isFinished() const
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_ISFINISHED )
{
  QDBusPendingCallWatcher * obj = (QDBusPendingCallWatcher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFinished () );
  }
}


/*
void waitForFinished()
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_WAITFORFINISHED )
{
  QDBusPendingCallWatcher * obj = (QDBusPendingCallWatcher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->waitForFinished ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
