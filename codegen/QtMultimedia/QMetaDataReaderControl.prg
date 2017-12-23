$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMetaDataReaderControl INHERIT QMediaControl

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

$prototype=virtual bool isMetaDataAvailable() const = 0
$virtualMethod=|bool|isMetaDataAvailable|

$prototype=virtual QVariant metaData(const QString &key) const = 0
$virtualMethod=|QVariant|metaData|const QString &

$prototype=virtual QStringList availableMetaData() const = 0
$virtualMethod=|QStringList|availableMetaData|

#pragma ENDDUMP
