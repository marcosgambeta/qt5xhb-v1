%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

%%   METHOD new
   METHOD delete

   METHOD product
   METHOD orderId
   METHOD failureReason
   METHOD errorString
   METHOD timestamp
   METHOD finalize
   METHOD platformProperty
   METHOD status

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QInAppProduct>

$prototype=explicit QInAppTransaction(TransactionStatus status, QInAppProduct *product, QObject *parent = Q_NULLPTR) (protected)

$prototype=~QInAppTransaction()
$deleteMethod

%%
%% Q_PROPERTY(TransactionStatus status READ status CONSTANT)
%%

$prototype=TransactionStatus status() const
$method=|QInAppTransaction::TransactionStatus|status|

%%
%% Q_PROPERTY(QInAppProduct * product READ product CONSTANT)
%%

$prototype=QInAppProduct *product() const
$method=|QInAppProduct *|product|

%%
%% Q_PROPERTY(QString orderId READ orderId CONSTANT)
%%

$prototype=virtual QString orderId() const
$virtualMethod=|QString|orderId|

%%
%% Q_PROPERTY(FailureReason failureReason READ failureReason CONSTANT)
%%

$prototype=virtual FailureReason failureReason() const
$virtualMethod=|QInAppTransaction::FailureReason|failureReason|

%%
%% Q_PROPERTY(QString errorString READ errorString CONSTANT)
%%

$prototype=virtual QString errorString() const
$virtualMethod=|QString|errorString|

%%
%% Q_PROPERTY(QDateTime timestamp READ timestamp CONSTANT)
%%

$prototype=virtual QDateTime timestamp() const
$virtualMethod=|QDateTime|timestamp|

%%
%%
%%

$prototype=Q_INVOKABLE virtual void finalize() = 0
$virtualMethod=|void|finalize|

$prototype=Q_INVOKABLE virtual QString platformProperty(const QString &propertyName) const
$virtualMethod=|QString|platformProperty|const QString &

#pragma ENDDUMP
