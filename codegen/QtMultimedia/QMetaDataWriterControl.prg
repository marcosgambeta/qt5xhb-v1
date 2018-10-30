%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMetaDataWriterControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=~QMetaDataWriterControl()
$deleteMethod

$prototype=virtual bool isWritable() const = 0
$virtualMethod=|bool|isWritable|

$prototype=virtual bool isMetaDataAvailable() const = 0
$virtualMethod=|bool|isMetaDataAvailable|

$prototype=virtual QVariant metaData(const QString &key) const = 0
$virtualMethod=|QVariant|metaData|const QString &

$prototype=virtual void setMetaData(const QString &key, const QVariant &value) = 0
$virtualMethod=|void|setMetaData|const QString &,const QVariant &

$prototype=virtual QStringList availableMetaData() const = 0
$virtualMethod=|QStringList|availableMetaData|

$beginSignals
$beginGroup
$signal=|metaDataChanged()
$signal=|metaDataChanged(QString,QVariant)
$endGroup
$signal=|writableChanged(bool)
$signal=|metaDataAvailableChanged(bool)
$endSignals

#pragma ENDDUMP
