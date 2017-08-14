$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMediaStreamsControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD isActive
   METHOD metaData
   METHOD setActive
   METHOD streamCount
   METHOD streamType

   METHOD onActiveStreamsChanged
   METHOD onStreamsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual bool isActive(int stream) = 0
*/
$method=|bool|isActive|int

/*
virtual QVariant metaData(int stream, const QString & key) = 0
*/
$method=|QVariant|metaData|int,const QString &

/*
virtual void setActive(int stream, bool state) = 0
*/
$method=|void|setActive|int,bool

/*
virtual int streamCount() = 0
*/
$method=|int|streamCount|

/*
virtual StreamType streamType(int stream) = 0
*/
$method=|QMediaStreamsControl::StreamType|streamType|int

#pragma ENDDUMP
