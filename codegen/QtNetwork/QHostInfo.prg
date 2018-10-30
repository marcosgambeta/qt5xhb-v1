%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QHostInfo(int lookupId = -1)
$internalConstructor=|new1|int=-1

$prototype=QHostInfo ( const QHostInfo & other )
$internalConstructor=|new2|const QHostInfo &

//[1]explicit QHostInfo(int lookupId = -1)
//[2]QHostInfo ( const QHostInfo & other )

HB_FUNC_STATIC( QHOSTINFO_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QHostInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQHOSTINFO(1) )
  {
    QHostInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QHostInfo()
$deleteMethod

$prototype=void swap(QHostInfo &other) Q_DECL_NOTHROW
$method=5,10,0|void|swap|QHostInfo &

$prototype=QString hostName() const
$method=|QString|hostName|

$prototype=void setHostName(const QString &name)
$method=|void|setHostName|const QString &

$prototype=QList<QHostAddress> addresses() const
$method=|QList<QHostAddress>|addresses|

$prototype=void setAddresses(const QList<QHostAddress> &addresses)
$method=|void|setAddresses|const QList<QHostAddress> &

$prototype=HostInfoError error() const
$method=|QHostInfo::HostInfoError|error|

$prototype=void setError(HostInfoError error)
$method=|void|setError|QHostInfo::HostInfoError

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=void setErrorString(const QString &errorString)
$method=|void|setErrorString|const QString &

$prototype=void setLookupId(int id)
$method=|void|setLookupId|int

$prototype=int lookupId() const
$method=|int|lookupId|

$prototype=static int lookupHost(const QString &name, QObject *receiver, const char *member)
$staticMethod=|int|lookupHost|const QString &,QObject *,const char *

$prototype=static void abortHostLookup(int lookupId)
$staticMethod=|void|abortHostLookup|int

$prototype=static QHostInfo fromName(const QString &name)
$staticMethod=|QHostInfo|fromName|const QString &

$prototype=static QString localHostName()
$staticMethod=|QString|localHostName|

$prototype=static QString localDomainName()
$staticMethod=|QString|localDomainName|

$prototype=static int lookupHostImpl(const QString &name, const QObject *receiver, QtPrivate::QSlotObjectBase *slotObj) [private]

$extraMethods

#pragma ENDDUMP
