$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QDnsTextRecord

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD swap
   METHOD timeToLive
   METHOD values

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
QDnsTextRecord()
*/
$constructor=|new1|

/*
QDnsTextRecord(const QDnsTextRecord & other)
*/
$constructor=|new2|const QDnsTextRecord &

//[1]QDnsTextRecord()
//[2]QDnsTextRecord(const QDnsTextRecord & other)

HB_FUNC_STATIC( QDNSTEXTRECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSTEXTRECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSTEXTRECORD(1) )
  {
    HB_FUNC_EXEC( QDNSTEXTRECORD_NEW2 );
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
void swap(QDnsTextRecord & other)
*/
$method=|void|swap|QDnsTextRecord &

/*
quint32 timeToLive() const
*/
$method=|quint32|timeToLive|

/*
QList<QByteArray> values() const
*/
$method=|QList<QByteArray>|values|

$extraMethods

#pragma ENDDUMP
