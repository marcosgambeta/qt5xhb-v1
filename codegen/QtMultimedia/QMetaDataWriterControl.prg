$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMetaDataWriterControl INHERIT QMediaControl

   METHOD isWritable
   METHOD isMetaDataAvailable
   METHOD metaData
   METHOD setMetaData
   METHOD availableMetaData

   METHOD onMetaDataChanged1
   METHOD onMetaDataChanged2
   METHOD onWritableChanged
   METHOD onMetaDataAvailableChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual bool isWritable() const = 0
$method=|bool|isWritable|

$prototype=virtual bool isMetaDataAvailable() const = 0
$method=|bool|isMetaDataAvailable|

$prototype=virtual QVariant metaData(const QString &key) const = 0
$method=|QVariant|metaData|const QString &

$prototype=virtual void setMetaData(const QString &key, const QVariant &value) = 0
$method=|void|setMetaData|const QString &,const QVariant &

$prototype=virtual QStringList availableMetaData() const = 0
$method=|QStringList|availableMetaData|

#pragma ENDDUMP
