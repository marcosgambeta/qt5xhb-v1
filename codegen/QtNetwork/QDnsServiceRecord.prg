$header

#include "hbclass.ch"

CLASS QDnsServiceRecord

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD port
   METHOD priority
   METHOD swap
   METHOD target
   METHOD timeToLive
   METHOD weight

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
QDnsServiceRecord()
*/
$constructor=|new1|

/*
QDnsServiceRecord(const QDnsServiceRecord & other)
*/
$constructor=|new2|const QDnsServiceRecord &

//[1]QDnsServiceRecord()
//[2]QDnsServiceRecord(const QDnsServiceRecord & other)

HB_FUNC_STATIC( QDNSSERVICERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSSERVICERECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSSERVICERECORD(1) )
  {
    HB_FUNC_EXEC( QDNSSERVICERECORD_NEW2 );
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
quint16 port() const
*/
$method=|quint16|port|

/*
quint16 priority() const
*/
$method=|quint16|priority|

/*
void swap(QDnsServiceRecord & other)
*/
$method=|void|swap|QDnsServiceRecord &

/*
QString target() const
*/
$method=|QString|target|

/*
quint32 timeToLive() const
*/
$method=|quint32|timeToLive|

/*
quint16 weight() const
*/
$method=|quint16|weight|

$extraMethods

#pragma ENDDUMP
