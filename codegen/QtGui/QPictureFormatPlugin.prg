$header

#include "hbclass.ch"

CLASS QPictureFormatPlugin INHERIT QObject

   METHOD delete
   METHOD loadPicture
   METHOD savePicture
   METHOD installIOHandler

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual bool loadPicture(const QString &format, const QString &filename, QPicture *pic)
$virtualMethod=|bool|loadPicture|const QString &,const QString &,QPicture *

$prototype=virtual bool savePicture(const QString &format, const QString &filename, const QPicture &pic)
$virtualMethod=|bool|savePicture|const QString &,const QString &,const QPicture &

$prototype=virtual bool installIOHandler(const QString &format) = 0
$virtualMethod=|bool|installIOHandler|const QString &

#pragma ENDDUMP
