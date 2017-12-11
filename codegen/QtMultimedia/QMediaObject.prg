$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QMEDIASERVICE
#endif

CLASS QMediaObject INHERIT QObject

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>

$deleteMethod

$prototype=virtual QMultimedia::AvailabilityStatus availability() const
$method=|QMultimedia::AvailabilityStatus|availability|

$prototype=QStringList availableMetaData() const
$method=|QStringList|availableMetaData|

$prototype=virtual bool bind(QObject * object)
$method=|bool|bind|QObject *

$prototype=virtual bool isAvailable() const
$method=|bool|isAvailable|

$prototype=bool isMetaDataAvailable() const
$method=|bool|isMetaDataAvailable|

$prototype=QVariant metaData(const QString & key) const
$method=|QVariant|metaData|const QString &

$prototype=int notifyInterval() const
$method=|int|notifyInterval|

$prototype=virtual QMediaService * service() const
$method=|QMediaService *|service|

$prototype=void setNotifyInterval(int milliSeconds)
$method=|void|setNotifyInterval|int

$prototype=virtual void unbind(QObject * object)
$method=|void|unbind|QObject *

#pragma ENDDUMP
