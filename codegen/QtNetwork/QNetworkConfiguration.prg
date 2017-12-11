$header

#include "hbclass.ch"

CLASS QNetworkConfiguration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bearerType
   METHOD bearerTypeName
   METHOD children
   METHOD identifier
   METHOD isRoamingAvailable
   METHOD isValid
   METHOD name
   METHOD purpose
   METHOD state
   METHOD type

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

$prototype=QNetworkConfiguration ()
$constructor=|new1|

$prototype=QNetworkConfiguration ( const QNetworkConfiguration & other )
$constructor=|new2|const QNetworkConfiguration &

//[1]QNetworkConfiguration ()
//[2]QNetworkConfiguration ( const QNetworkConfiguration & other )

HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKCONFIGURATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKCONFIGURATION(1) )
  {
    HB_FUNC_EXEC( QNETWORKCONFIGURATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=BearerType bearerType () const
$method=|QNetworkConfiguration::BearerType|bearerType|

$prototype=QString bearerTypeName () const
$method=|QString|bearerTypeName|

$prototype=QList<QNetworkConfiguration> children () const
$method=|QList<QNetworkConfiguration>|children|

$prototype=QString identifier () const
$method=|QString|identifier|

$prototype=bool isRoamingAvailable () const
$method=|bool|isRoamingAvailable|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QString name () const
$method=|QString|name|

$prototype=Purpose purpose () const
$method=|QNetworkConfiguration::Purpose|purpose|

$prototype=StateFlags state () const
$method=|QNetworkConfiguration::StateFlags|state|

$prototype=Type type () const
$method=|QNetworkConfiguration::Type|type|

$extraMethods

#pragma ENDDUMP
