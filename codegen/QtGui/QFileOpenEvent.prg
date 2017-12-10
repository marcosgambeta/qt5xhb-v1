$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QFileOpenEvent INHERIT QEvent

   METHOD delete
   METHOD file
   METHOD openFile
   METHOD url

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>

$deleteMethod

$prototype=QString file () const
$method=|QString|file|

$prototype=bool openFile ( QFile & file, QIODevice::OpenMode flags ) const
$method=|bool|openFile|QFile &,QIODevice::OpenMode

$prototype=QUrl url () const
$method=|QUrl|url|

#pragma ENDDUMP
