%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QDnsDomainNameRecord

   DATA pointer
   DATA self_destruction INIT .F.

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

$prototype=QDnsDomainNameRecord()
$internalConstructor=|new1|

$prototype=QDnsDomainNameRecord(const QDnsDomainNameRecord & other)
$internalConstructor=|new2|const QDnsDomainNameRecord &

//[1]QDnsDomainNameRecord()
//[2]QDnsDomainNameRecord(const QDnsDomainNameRecord & other)

HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDnsDomainNameRecord_new1();
  }
  else if( ISNUMPAR(1) && ISQDNSDOMAINNAMERECORD(1) )
  {
    QDnsDomainNameRecord_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString name() const
$method=|QString|name|

$prototype=void swap(QDnsDomainNameRecord & other)
$method=|void|swap|QDnsDomainNameRecord &

$prototype=quint32 timeToLive() const
$method=|quint32|timeToLive|

$prototype=QString value() const
$method=|QString|value|

$extraMethods

#pragma ENDDUMP
