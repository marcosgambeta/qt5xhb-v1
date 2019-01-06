%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDeclarative

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

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
