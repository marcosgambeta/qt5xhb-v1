%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO:
%% #ifndef QT_NO_NETWORKINTERFACE
%% #endif // QT_NO_NETWORKINTERFACE

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkInterface ()
$internalConstructor=|new1|

$prototype=QNetworkInterface ( const QNetworkInterface & other )
$internalConstructor=|new2|const QNetworkInterface &

//[1]QNetworkInterface ()
//[2]QNetworkInterface ( const QNetworkInterface & other )

HB_FUNC_STATIC( QNETWORKINTERFACE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkInterface_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKINTERFACE(1) )
  {
    QNetworkInterface_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QNetworkInterface()
$deleteMethod

$prototype=QList<QNetworkAddressEntry> addressEntries () const
$method=|QList<QNetworkAddressEntry>|addressEntries|

$prototype=InterfaceFlags flags () const
$method=|QNetworkInterface::InterfaceFlags|flags|

$prototype=QString hardwareAddress () const
$method=|QString|hardwareAddress|

$prototype=QString humanReadableName () const
$method=|QString|humanReadableName|

$prototype=int index () const
$method=|int|index|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QString name () const
$method=|QString|name|

$prototype=static QList<QHostAddress> allAddresses ()
$staticMethod=|QList<QHostAddress>|allAddresses|

$prototype=static QList<QNetworkInterface> allInterfaces ()
$staticMethod=|QList<QNetworkInterface>|allInterfaces|

$prototype=static QNetworkInterface interfaceFromIndex ( int index )
$staticMethod=|QNetworkInterface|interfaceFromIndex|int

$prototype=static QNetworkInterface interfaceFromName ( const QString & name )
$staticMethod=|QNetworkInterface|interfaceFromName|const QString &

$prototype=static int interfaceIndexFromName(const QString &name)
$staticMethod=5,7,0|int|interfaceIndexFromName|const QString &

$prototype=static QString interfaceNameFromIndex(int index)
$staticMethod=5,7,0|QString|interfaceNameFromIndex|int

$prototype=void swap(QNetworkInterface &other) Q_DECL_NOTHROW
$method=|void|swap|QNetworkInterface &

$extraMethods

#pragma ENDDUMP
