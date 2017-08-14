$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMetaDataReaderControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD isMetaDataAvailable
   METHOD metaData
   METHOD availableMetaData

   METHOD onMetaDataChanged1
   METHOD onMetaDataChanged2
   METHOD onMetaDataAvailableChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual bool isMetaDataAvailable() const = 0
*/
$method=|bool|isMetaDataAvailable|

/*
virtual QVariant metaData(const QString &key) const = 0
*/
$method=|QVariant|metaData|const QString &

/*
virtual QStringList availableMetaData() const = 0
*/
$method=|QStringList|availableMetaData|

#pragma ENDDUMP
