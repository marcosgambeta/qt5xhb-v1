$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDBusPendingReplyData INHERIT QDBusPendingCall

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD assign
   METHOD argumentAt
   METHOD setMetaTypes

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDBusPendingReplyData()
*/
$constructor=|new|

$deleteMethod

/*
void assign(const QDBusPendingCall &call)
*/
$internalMethod=|void|assign,assign1|const QDBusPendingCall &

/*
void assign(const QDBusMessage &message)
*/
$internalMethod=|void|assign,assign2|const QDBusMessage &

//[1]void assign(const QDBusPendingCall &call)
//[2]void assign(const QDBusMessage &message)

HB_FUNC( QDBUSPENDINGREPLYDATA_ASSIGN )
{
  if( ISNUMPAR(1) && ISQDBUSPENDINGCALL(1) )
  {
    QDBusPendingReplyData_assign1();
  }
  else if( ISNUMPAR(1) && ISQDBUSMESSAGE(1) )
  {
    QDBusPendingReplyData_assign2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant argumentAt(int index) const
*/
$method=|QVariant|argumentAt|int

/*
void setMetaTypes(int count, const int *metaTypes)
*/
HB_FUNC_STATIC( QDBUSPENDINGREPLYDATA_SETMETATYPES )
{
  QDBusPendingReplyData * obj = (QDBusPendingReplyData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const int * par2 = (const int *) _qt5xhb_itemGetPtr(2); // TODO: corrigir
    obj->setMetaTypes ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
