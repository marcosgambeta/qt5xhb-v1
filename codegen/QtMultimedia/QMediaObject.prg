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

/*
virtual QMultimedia::AvailabilityStatus availability() const
*/
$method=|QMultimedia::AvailabilityStatus|availability|

/*
QStringList availableMetaData() const
*/
$method=|QStringList|availableMetaData|

/*
virtual bool bind(QObject * object)
*/
$method=|bool|bind|QObject *

/*
virtual bool isAvailable() const
*/
$method=|bool|isAvailable|

/*
bool isMetaDataAvailable() const
*/
$method=|bool|isMetaDataAvailable|

/*
QVariant metaData(const QString & key) const
*/
$method=|QVariant|metaData|const QString &

/*
int notifyInterval() const
*/
$method=|int|notifyInterval|

/*
virtual QMediaService * service() const
*/
$method=|QMediaService *|service|

/*
void setNotifyInterval(int milliSeconds)
*/
$method=|void|setNotifyInterval|int

/*
virtual void unbind(QObject * object)
*/
$method=|void|unbind|QObject *

#pragma ENDDUMP
