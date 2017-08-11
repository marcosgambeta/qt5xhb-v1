$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QBYTEARRAY
REQUEST QURL
#endif

CLASS QMimeData INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD colorData
   METHOD data
   METHOD formats
   METHOD hasColor
   METHOD hasFormat
   METHOD hasHtml
   METHOD hasImage
   METHOD hasText
   METHOD hasUrls
   METHOD html
   METHOD imageData
   METHOD removeFormat
   METHOD setColorData
   METHOD setData
   METHOD setHtml
   METHOD setImageData
   METHOD setText
   METHOD setUrls
   METHOD text
   METHOD urls

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>
#include <QUrl>

/*
QMimeData ()
*/
$constructor=|new|

$deleteMethod

/*
void clear ()
*/
$method=|void|clear|

/*
QVariant colorData () const
*/
$method=|QVariant|colorData|

/*
QByteArray data ( const QString & mimeType ) const
*/
$method=|QByteArray|data|const QString &

/*
virtual QStringList formats () const
*/
$method=|QStringList|formats|

/*
bool hasColor () const
*/
$method=|bool|hasColor|

/*
virtual bool hasFormat ( const QString & mimeType ) const
*/
$method=|bool|hasFormat|const QString &

/*
bool hasHtml () const
*/
$method=|bool|hasHtml|

/*
bool hasImage () const
*/
$method=|bool|hasImage|

/*
bool hasText () const
*/
$method=|bool|hasText|

/*
bool hasUrls () const
*/
$method=|bool|hasUrls|

/*
QString html () const
*/
$method=|QString|html|

/*
QVariant imageData () const
*/
$method=|QVariant|imageData|

/*
void removeFormat ( const QString & mimeType )
*/
$method=|void|removeFormat|const QString &

/*
void setColorData ( const QVariant & color )
*/
$method=|void|setColorData|const QVariant &

/*
void setData ( const QString & mimeType, const QByteArray & data )
*/
$method=|void|setData|const QString &,const QByteArray &

/*
void setHtml ( const QString & html )
*/
$method=|void|setHtml|const QString &

/*
void setImageData ( const QVariant & image )
*/
$method=|void|setImageData|const QVariant &

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
void setUrls ( const QList<QUrl> & urls )
*/
$method=|void|setUrls|const QList<QUrl> &

/*
QString text () const
*/
$method=|QString|text|

/*
QList<QUrl> urls () const
*/
$method=|QList<QUrl>|urls|

#pragma ENDDUMP
