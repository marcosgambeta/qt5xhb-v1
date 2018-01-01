%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QPIXMAP
#endif

CLASS QDeclarativeImageProvider

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD imageType
   METHOD requestImage
   METHOD requestPixmap

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDeclarativeImageProvider ( ImageType type )
$constructor=|new|QDeclarativeImageProvider::ImageType

$deleteMethod

$prototype=ImageType imageType () const
$method=|QDeclarativeImageProvider::ImageType|imageType|

$prototype=virtual QImage requestImage ( const QString & id, QSize * size, const QSize & requestedSize )
$virtualMethod=|QImage|requestImage|const QString &,QSize *,const QSize &

$prototype=virtual QPixmap requestPixmap ( const QString & id, QSize * size, const QSize & requestedSize )
$virtualMethod=|QPixmap|requestPixmap|const QString &,QSize *,const QSize &

$extraMethods

#pragma ENDDUMP
