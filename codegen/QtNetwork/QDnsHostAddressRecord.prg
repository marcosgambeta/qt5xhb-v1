%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
#endif

CLASS QDnsHostAddressRecord

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD swap
   METHOD timeToLive
   METHOD value

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

#include <QHostAddress>

$prototype=QDnsHostAddressRecord()
$constructor=|new1|

$prototype=QDnsHostAddressRecord(const QDnsHostAddressRecord & other)
$constructor=|new2|const QDnsHostAddressRecord &

//[1]QDnsHostAddressRecord()
//[2]QDnsHostAddressRecord(const QDnsHostAddressRecord & other)

HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSHOSTADDRESSRECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSHOSTADDRESSRECORD(1) )
  {
    HB_FUNC_EXEC( QDNSHOSTADDRESSRECORD_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString name() const
$method=|QString|name|

$prototype=void swap(QDnsHostAddressRecord & other)
$method=|void|swap|QDnsHostAddressRecord &

$prototype=quint32 timeToLive() const
$method=|quint32|timeToLive|

$prototype=QHostAddress value() const
$method=|QHostAddress|value|

$extraMethods

#pragma ENDDUMP
