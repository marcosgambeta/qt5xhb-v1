%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QBYTEARRAY
REQUEST QURL
#endif

$beginClassFrom=QObject

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>
#include <QUrl>

$prototype=QMimeData ()
$constructor=|new|

$deleteMethod

$prototype=void clear ()
$method=|void|clear|

$prototype=QVariant colorData () const
$method=|QVariant|colorData|

$prototype=QByteArray data ( const QString & mimeType ) const
$method=|QByteArray|data|const QString &

$prototype=virtual QStringList formats () const
$virtualMethod=|QStringList|formats|

$prototype=bool hasColor () const
$method=|bool|hasColor|

$prototype=virtual bool hasFormat ( const QString & mimeType ) const
$virtualMethod=|bool|hasFormat|const QString &

$prototype=bool hasHtml () const
$method=|bool|hasHtml|

$prototype=bool hasImage () const
$method=|bool|hasImage|

$prototype=bool hasText () const
$method=|bool|hasText|

$prototype=bool hasUrls () const
$method=|bool|hasUrls|

$prototype=QString html () const
$method=|QString|html|

$prototype=QVariant imageData () const
$method=|QVariant|imageData|

$prototype=void removeFormat ( const QString & mimeType )
$method=|void|removeFormat|const QString &

$prototype=void setColorData ( const QVariant & color )
$method=|void|setColorData|const QVariant &

$prototype=void setData ( const QString & mimeType, const QByteArray & data )
$method=|void|setData|const QString &,const QByteArray &

$prototype=void setHtml ( const QString & html )
$method=|void|setHtml|const QString &

$prototype=void setImageData ( const QVariant & image )
$method=|void|setImageData|const QVariant &

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=void setUrls ( const QList<QUrl> & urls )
$method=|void|setUrls|const QList<QUrl> &

$prototype=QString text () const
$method=|QString|text|

$prototype=QList<QUrl> urls () const
$method=|QList<QUrl>|urls|

#pragma ENDDUMP
