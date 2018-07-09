%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDnsTextRecord()
$internalConstructor=|new1|

$prototype=QDnsTextRecord(const QDnsTextRecord & other)
$internalConstructor=|new2|const QDnsTextRecord &

//[1]QDnsTextRecord()
//[2]QDnsTextRecord(const QDnsTextRecord & other)

HB_FUNC_STATIC( QDNSTEXTRECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDnsTextRecord_new1();
  }
  else if( ISNUMPAR(1) && ISQDNSTEXTRECORD(1) )
  {
    QDnsTextRecord_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QDnsTextRecord()
$deleteMethod

$prototype=QString name() const
$method=|QString|name|

$prototype=void swap(QDnsTextRecord &other) Q_DECL_NOTHROW
$method=|void|swap|QDnsTextRecord &

$prototype=quint32 timeToLive() const
$method=|quint32|timeToLive|

$prototype=QList<QByteArray> values() const
$method=|QList<QByteArray>|values|

$extraMethods

#pragma ENDDUMP
