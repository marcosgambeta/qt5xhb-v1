%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD delete
   METHOD loadPicture
   METHOD savePicture
   METHOD installIOHandler

$endClass

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
