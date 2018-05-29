%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD delete
   METHOD availability
   METHOD availableMetaData
   METHOD bind
   METHOD isAvailable
   METHOD isMetaDataAvailable
   METHOD metaData
   METHOD notifyInterval
   METHOD service
   METHOD setNotifyInterval
   METHOD unbind

   METHOD onAvailabilityChanged1
   METHOD onAvailabilityChanged2
   METHOD onMetaDataAvailableChanged
   METHOD onMetaDataChanged1
   METHOD onMetaDataChanged2
   METHOD onNotifyIntervalChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>
#include <QMediaService>

$prototype=QMediaObject(QObject *parent, QMediaService *service) (protected)

$prototype=QMediaObject(QMediaObjectPrivate &dd, QObject *parent, QMediaService *service) (protected)

$prototype=~QMediaObject()
$deleteMethod

%%
%% Q_PROPERTY(int notifyInterval READ notifyInterval WRITE setNotifyInterval NOTIFY notifyIntervalChanged)
%%

$prototype=int notifyInterval() const
$method=|int|notifyInterval|

$prototype=void setNotifyInterval(int milliSeconds)
$method=|void|setNotifyInterval|int

%%
%%
%%

$prototype=virtual QMultimedia::AvailabilityStatus availability() const
$virtualMethod=|QMultimedia::AvailabilityStatus|availability|

$prototype=QStringList availableMetaData() const
$method=|QStringList|availableMetaData|

$prototype=virtual bool bind(QObject * object)
$virtualMethod=|bool|bind|QObject *

$prototype=virtual bool isAvailable() const
$virtualMethod=|bool|isAvailable|

$prototype=bool isMetaDataAvailable() const
$method=|bool|isMetaDataAvailable|

$prototype=QVariant metaData(const QString & key) const
$method=|QVariant|metaData|const QString &

$prototype=virtual QMediaService * service() const
$virtualMethod=|QMediaService *|service|

$prototype=virtual void unbind(QObject * object)
$virtualMethod=|void|unbind|QObject *

$prototype=void addPropertyWatch(QByteArray const &name) (protected)

$prototype=void removePropertyWatch(QByteArray const &name) (protected)

$prototype=void setupControls() (private)

$beginSignals
$beginGroup
$signal=|availabilityChanged(bool)
$signal=|availabilityChanged(QMultimedia::AvailabilityStatus)
$endGroup
$signal=|metaDataAvailableChanged(bool)
$beginGroup
$signal=|metaDataChanged()
$signal=|metaDataChanged(QString,QVariant)
$endGroup
$signal=|notifyIntervalChanged(int)
$endSignals

#pragma ENDDUMP
