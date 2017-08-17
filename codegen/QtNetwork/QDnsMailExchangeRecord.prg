$header

#include "hbclass.ch"

CLASS QDnsMailExchangeRecord

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD exchange
   METHOD name
   METHOD preference
   METHOD swap
   METHOD timeToLive

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

/*
QDnsMailExchangeRecord()
*/
$constructor=|new1|

/*
QDnsMailExchangeRecord(const QDnsMailExchangeRecord & other)
*/
$constructor=|new2|const QDnsMailExchangeRecord &

//[1]QDnsMailExchangeRecord()
//[2]QDnsMailExchangeRecord(const QDnsMailExchangeRecord & other)

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSMAILEXCHANGERECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSMAILEXCHANGERECORD(1) )
  {
    HB_FUNC_EXEC( QDNSMAILEXCHANGERECORD_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString exchange() const
*/
$method=|QString|exchange|

/*
QString name() const
*/
$method=|QString|name|

/*
quint16 preference() const
*/
$method=|quint16|preference|

/*
void swap(QDnsMailExchangeRecord & other)
*/
$method=|void|swap|QDnsMailExchangeRecord &

/*
quint32 timeToLive() const
*/
$method=|quint32|timeToLive|

$extraMethods

#pragma ENDDUMP
