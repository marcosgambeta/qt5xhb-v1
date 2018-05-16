%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD new
   METHOD delete

   METHOD bearerType
   METHOD bearerTypeFamily
   METHOD bearerTypeName
   METHOD children
   METHOD connectTimeout
   METHOD identifier
   METHOD isRoamingAvailable
   METHOD isValid
   METHOD name
   METHOD purpose
   METHOD setConnectTimeout
   METHOD state
   METHOD swap
   METHOD type

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkConfiguration ()
$internalConstructor=|new1|

$prototype=QNetworkConfiguration ( const QNetworkConfiguration & other )
$internalConstructor=|new2|const QNetworkConfiguration &

//[1]QNetworkConfiguration ()
//[2]QNetworkConfiguration ( const QNetworkConfiguration & other )

HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkConfiguration_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKCONFIGURATION(1) )
  {
    QNetworkConfiguration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QNetworkConfiguration()
$deleteMethod

$prototype=BearerType bearerType () const
$method=|QNetworkConfiguration::BearerType|bearerType|

$prototype=BearerType bearerTypeFamily() const
$method=5,2,0|QNetworkConfiguration::BearerType|bearerTypeFamily|

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

$prototype=void swap(QNetworkConfiguration &other) Q_DECL_NOTHROW
$method=|void|swap|QNetworkConfiguration &

$prototype=int connectTimeout() const
$method=5,9,0|int|connectTimeout|

$prototype=bool setConnectTimeout(int timeout)
$method=5,9,0|bool|setConnectTimeout|int

$extraMethods

#pragma ENDDUMP
