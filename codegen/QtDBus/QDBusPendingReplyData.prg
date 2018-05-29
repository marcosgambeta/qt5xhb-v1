%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDBusPendingCall

%%   METHOD new
%%   METHOD delete
%%   METHOD assign
%%   METHOD argumentAt
%%   METHOD setMetaTypes

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDBusPendingReplyData() (protected)
%% $constructor=|new|

%% $deleteMethod (protected)

$prototype=void assign(const QDBusPendingCall &call) (protected)
%% $internalMethod=|void|assign,assign1|const QDBusPendingCall &

$prototype=void assign(const QDBusMessage &message) (protected)
%% $internalMethod=|void|assign,assign2|const QDBusMessage &

%% //[1]void assign(const QDBusPendingCall &call)
%% //[2]void assign(const QDBusMessage &message)

%% HB_FUNC( QDBUSPENDINGREPLYDATA_ASSIGN )
%% {
%%   if( ISNUMPAR(1) && ISQDBUSPENDINGCALL(1) )
%%   {
%%     QDBusPendingReplyData_assign1();
%%   }
%%   else if( ISNUMPAR(1) && ISQDBUSMESSAGE(1) )
%%   {
%%     QDBusPendingReplyData_assign2();
%%   }
%%   else
%%   {
%%     hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%   }
%% }

$prototype=QVariant argumentAt(int index) const (protected)
%% $method=|QVariant|argumentAt|int

$prototype=void setMetaTypes(int count, const int *metaTypes)
%% TODO: const inst * = array
%% $method=|void|setMetaTypes|int,const int *

#pragma ENDDUMP
