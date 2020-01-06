%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDnsMailExchangeRecord()
$internalConstructor=|new1|

$prototype=QDnsMailExchangeRecord(const QDnsMailExchangeRecord & other)
$internalConstructor=|new2|const QDnsMailExchangeRecord &

//[1]QDnsMailExchangeRecord()
//[2]QDnsMailExchangeRecord(const QDnsMailExchangeRecord & other)

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDnsMailExchangeRecord_new1();
  }
  else if( ISNUMPAR(1) && ISQDNSMAILEXCHANGERECORD(1) )
  {
    QDnsMailExchangeRecord_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QDnsMailExchangeRecord()
$deleteMethod

$prototype=QString exchange() const
$method=|QString|exchange|

$prototype=QString name() const
$method=|QString|name|

$prototype=quint16 preference() const
$method=|quint16|preference|

$prototype=void swap(QDnsMailExchangeRecord &other) Q_DECL_NOTHROW
$method=|void|swap|QDnsMailExchangeRecord &

$prototype=quint32 timeToLive() const
$method=|quint32|timeToLive|

$extraMethods

#pragma ENDDUMP
