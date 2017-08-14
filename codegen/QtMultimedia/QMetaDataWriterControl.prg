$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMetaDataWriterControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

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

/*
virtual bool isWritable() const = 0
*/
$method=|bool|isWritable|

/*
virtual bool isMetaDataAvailable() const = 0
*/
$method=|bool|isMetaDataAvailable|

/*
virtual QVariant metaData(const QString &key) const = 0
*/
$method=|QVariant|metaData|const QString &

/*
virtual void setMetaData(const QString &key, const QVariant &value) = 0
*/
$method=|void|setMetaData|const QString &,const QVariant &

/*
virtual QStringList availableMetaData() const = 0
*/
$method=|QStringList|availableMetaData|

#pragma ENDDUMP
