$header

#include "hbclass.ch"

CLASS QPictureFormatPlugin INHERIT QObject

   DATA self_destruction INIT .F.

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

/*
virtual bool loadPicture(const QString &format, const QString &filename, QPicture *pic)
*/
$virtualMethod=|bool|loadPicture|const QString &,const QString &,QPicture *

/*
virtual bool savePicture(const QString &format, const QString &filename, const QPicture &pic)
*/
$virtualMethod=|bool|savePicture|const QString &,const QString &,const QPicture &

/*
virtual bool installIOHandler(const QString &format) = 0
*/
$virtualMethod=|bool|installIOHandler|const QString &

#pragma ENDDUMP
