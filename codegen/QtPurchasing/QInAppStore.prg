%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPurchasing

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

$prototype=explicit QInAppStore(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=~QInAppStore()
$deleteMethod

$prototype=Q_INVOKABLE void restorePurchases()
$method=|void|restorePurchases|

$prototype=Q_INVOKABLE void registerProduct(QInAppProduct::ProductType productType, const QString &identifier)
$method=|void|registerProduct|QInAppProduct::ProductType,const QString &

$prototype=Q_INVOKABLE QInAppProduct *registeredProduct(const QString &identifier) const
$method=|QInAppProduct *|registeredProduct|const QString &

$prototype=Q_INVOKABLE void setPlatformProperty(const QString &propertyName, const QString &value)
$method=|void|setPlatformProperty|const QString &,const QString &

$prototype=void registerPendingProducts() [private] (slot)

$prototype=void registerProduct(QInAppProduct *) [private] (slot)

$prototype=void setupBackend() [private]

$beginSignals
$signal=|productRegistered(QInAppProduct*)
$signal=|productUnknown(QInAppProduct::ProductType,QString)
$signal=|transactionReady(QInAppTransaction*)
$endSignals

#pragma ENDDUMP
