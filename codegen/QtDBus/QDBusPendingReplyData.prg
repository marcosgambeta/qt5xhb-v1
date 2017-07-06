$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDBusPendingReplyData INHERIT QDBusPendingCall

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD assign1
   METHOD assign2
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
HB_FUNC_STATIC( QDBUSPENDINGREPLYDATA_NEW )
{
  QDBusPendingReplyData * o = new QDBusPendingReplyData ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void assign(const QDBusPendingCall &call)
*/
HB_FUNC_STATIC( QDBUSPENDINGREPLYDATA_ASSIGN1 )
{
  QDBusPendingReplyData * obj = (QDBusPendingReplyData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->assign ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void assign(const QDBusMessage &message)
*/
HB_FUNC_STATIC( QDBUSPENDINGREPLYDATA_ASSIGN2 )
{
  QDBusPendingReplyData * obj = (QDBusPendingReplyData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->assign ( *PQDBUSMESSAGE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void assign(const QDBusPendingCall &call)
//[2]void assign(const QDBusMessage &message)

HB_FUNC( QDBUSPENDINGREPLYDATA_ASSIGN )
{
  if( ISNUMPAR(1) && ISQDBUSPENDINGCALL(1) )
  {
    HB_FUNC_EXEC( QDBUSPENDINGREPLYDATA_ASSIGN1 );
  }
  else if( ISNUMPAR(1) && ISQDBUSMESSAGE(1) )
  {
    HB_FUNC_EXEC( QDBUSPENDINGREPLYDATA_ASSIGN2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant argumentAt(int index) const
*/
HB_FUNC_STATIC( QDBUSPENDINGREPLYDATA_ARGUMENTAT )
{
  QDBusPendingReplyData * obj = (QDBusPendingReplyData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->argumentAt ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
void setMetaTypes(int count, const int *metaTypes)
*/
HB_FUNC_STATIC( QDBUSPENDINGREPLYDATA_SETMETATYPES )
{
  QDBusPendingReplyData * obj = (QDBusPendingReplyData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const int * par2 = (const int *) _qt5xhb_itemGetPtr(2);
    obj->setMetaTypes ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
