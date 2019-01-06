%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QHostAddress>

$prototype=explicit QDnsLookup(QObject *parent = Q_NULLPTR)
$internalConstructor=|new1|QObject *=Q_NULLPTR

$prototype=QDnsLookup(Type type, const QString &name, QObject *parent = Q_NULLPTR)
$internalConstructor=|new2|QDnsLookup::Type,const QString &,QObject *=Q_NULLPTR

$prototype=QDnsLookup(Type type, const QString &name, const QHostAddress &nameserver, QObject *parent = Q_NULLPTR)
$internalConstructor=5,4,0|new3|QDnsLookup::Type,const QString &,const QHostAddress &,QObject *=Q_NULLPTR

//[1]explicit QDnsLookup(QObject *parent = Q_NULLPTR)
//[2]QDnsLookup(Type type, const QString &name, QObject *parent = Q_NULLPTR)
//[3]QDnsLookup(Type type, const QString &name, const QHostAddress &nameserver, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QDNSLOOKUP_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QDnsLookup_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISCHAR(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QDnsLookup_new2();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISCHAR(2) && ISQHOSTADDRESS(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    QDnsLookup_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QDnsLookup()
$deleteMethod

%%
%% Q_PROPERTY(Error error READ error NOTIFY finished)
%%

$prototype=Error error() const
$method=|QDnsLookup::Error|error|

%%
%% Q_PROPERTY(QString errorString READ errorString NOTIFY finished)
%%

$prototype=QString errorString() const
$method=|QString|errorString|

%%
%% Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
%%

$prototype=QString name() const
$method=|QString|name|

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

%%
%% Q_PROPERTY(Type type READ type WRITE setType NOTIFY typeChanged)
%%

$prototype=Type type() const
$method=|QDnsLookup::Type|type|

$prototype=void setType(QDnsLookup::Type)
$method=|void|setType|QDnsLookup::Type

%%
%% Q_PROPERTY(QHostAddress nameserver READ nameserver WRITE setNameserver NOTIFY nameserverChanged)
%%

%% TODO: check Qt version

$prototype=QHostAddress nameserver() const
$method=5,3,0|QHostAddress|nameserver|

$prototype=void setNameserver(const QHostAddress &nameserver)
$method=5,3,0|void|setNameserver|const QHostAddress &

%%
%%
%%

$prototype=bool isFinished() const
$method=|bool|isFinished|

$prototype=QList<QDnsDomainNameRecord> canonicalNameRecords() const
$method=|QList<QDnsDomainNameRecord>|canonicalNameRecords|

$prototype=QList<QDnsHostAddressRecord> hostAddressRecords() const
$method=|QList<QDnsHostAddressRecord>|hostAddressRecords|

$prototype=QList<QDnsMailExchangeRecord> mailExchangeRecords() const
$method=|QList<QDnsMailExchangeRecord>|mailExchangeRecords|

$prototype=QList<QDnsDomainNameRecord> nameServerRecords() const
$method=|QList<QDnsDomainNameRecord>|nameServerRecords|

$prototype=QList<QDnsDomainNameRecord> pointerRecords() const
$method=|QList<QDnsDomainNameRecord>|pointerRecords|

$prototype=QList<QDnsServiceRecord> serviceRecords() const
$method=|QList<QDnsServiceRecord>|serviceRecords|

$prototype=QList<QDnsTextRecord> textRecords() const
$method=|QList<QDnsTextRecord>|textRecords|

$prototype=void abort() (slot)
$slotMethod=|void|abort|

$prototype=void lookup() (slot)
$slotMethod=|void|lookup|

$beginSignals
$signal=|finished()
$signal=|nameChanged(QString)
$signal=|nameserverChanged(QHostAddress)
$signal=|typeChanged(QDnsLookup::Type)
$endSignals

#pragma ENDDUMP
