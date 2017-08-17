$header

#include "hbclass.ch"

CLASS QDnsDomainNameRecord

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

/*
QDnsDomainNameRecord()
*/
$constructor=|new1|

/*
QDnsDomainNameRecord(const QDnsDomainNameRecord & other)
*/
$constructor=|new2|const QDnsDomainNameRecord &

//[1]QDnsDomainNameRecord()
//[2]QDnsDomainNameRecord(const QDnsDomainNameRecord & other)

HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSDOMAINNAMERECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSDOMAINNAMERECORD(1) )
  {
    HB_FUNC_EXEC( QDNSDOMAINNAMERECORD_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString name() const
*/
$method=|QString|name|

/*
void swap(QDnsDomainNameRecord & other)
*/
$method=|void|swap|QDnsDomainNameRecord &

/*
quint32 timeToLive() const
*/
$method=|quint32|timeToLive|

/*
QString value() const
*/
$method=|QString|value|

$extraMethods

#pragma ENDDUMP
