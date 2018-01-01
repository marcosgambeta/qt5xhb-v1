%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDBusPendingReplyData INHERIT QDBusPendingCall

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

$prototype=QDBusPendingReplyData()
$constructor=|new|

$deleteMethod

$prototype=void assign(const QDBusPendingCall &call)
$internalMethod=|void|assign,assign1|const QDBusPendingCall &

$prototype=void assign(const QDBusMessage &message)
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

$prototype=QVariant argumentAt(int index) const
$method=|QVariant|argumentAt|int

$prototype=void setMetaTypes(int count, const int *metaTypes)
%% TODO: const inst * = array
$method=|void|setMetaTypes|int,const int *

#pragma ENDDUMP
