$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGEIOHANDLER
#endif

CLASS QImageIOPlugin INHERIT QObject

   METHOD delete
   METHOD capabilities
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual Capabilities capabilities ( QIODevice * device, const QByteArray & format ) const = 0
*/
$method=|Capabilities|capabilities|QIODevice *,const QByteArray &

/*
virtual QImageIOHandler * create ( QIODevice * device, const QByteArray & format = QByteArray() ) const = 0
*/
$method=|QImageIOHandler *|create|QIODevice *,const QByteArray &=QByteArray()

#pragma ENDDUMP
