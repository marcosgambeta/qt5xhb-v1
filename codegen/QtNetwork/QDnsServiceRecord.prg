%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete

   METHOD name
   METHOD port
   METHOD priority
   METHOD swap
   METHOD target
   METHOD timeToLive
   METHOD weight

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDnsServiceRecord()
$internalConstructor=|new1|

$prototype=QDnsServiceRecord(const QDnsServiceRecord & other)
$internalConstructor=|new2|const QDnsServiceRecord &

//[1]QDnsServiceRecord()
//[2]QDnsServiceRecord(const QDnsServiceRecord & other)

HB_FUNC_STATIC( QDNSSERVICERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDnsServiceRecord_new1();
  }
  else if( ISNUMPAR(1) && ISQDNSSERVICERECORD(1) )
  {
    QDnsServiceRecord_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QDnsServiceRecord()
$deleteMethod

$prototype=QString name() const
$method=|QString|name|

$prototype=quint16 port() const
$method=|quint16|port|

$prototype=quint16 priority() const
$method=|quint16|priority|

$prototype=void swap(QDnsServiceRecord &other) Q_DECL_NOTHROW
$method=|void|swap|QDnsServiceRecord &

$prototype=QString target() const
$method=|QString|target|

$prototype=quint32 timeToLive() const
$method=|quint32|timeToLive|

$prototype=quint16 weight() const
$method=|quint16|weight|

$extraMethods

#pragma ENDDUMP
