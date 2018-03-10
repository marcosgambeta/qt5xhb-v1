%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMetaDataReaderControl INHERIT QMediaControl

%%   METHOD new
   METHOD delete

   METHOD isMetaDataAvailable
   METHOD metaData
   METHOD availableMetaData

   METHOD onMetaDataAvailableChanged
   METHOD onMetaDataChanged1
   METHOD onMetaDataChanged2

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMetaDataReaderControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=~QMetaDataReaderControl()
$deleteMethod

$prototype=virtual bool isMetaDataAvailable() const = 0
$virtualMethod=|bool|isMetaDataAvailable|

$prototype=virtual QVariant metaData(const QString &key) const = 0
$virtualMethod=|QVariant|metaData|const QString &

$prototype=virtual QStringList availableMetaData() const = 0
$virtualMethod=|QStringList|availableMetaData|

$beginSignals
$beginGroup
$signalMethod=|metaDataChanged()
$signalMethod=|metaDataChanged(QString,QVariant)
$endGroup
$signalMethod=|metaDataAvailableChanged(bool)
$endSignals

#pragma ENDDUMP
