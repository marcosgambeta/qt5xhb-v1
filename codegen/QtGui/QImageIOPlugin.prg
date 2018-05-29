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
   METHOD capabilities
   METHOD create

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual Capabilities capabilities ( QIODevice * device, const QByteArray & format ) const = 0
$virtualMethod=|QImageIOPlugin::Capabilities|capabilities|QIODevice *,const QByteArray &

$prototype=virtual QImageIOHandler * create ( QIODevice * device, const QByteArray & format = QByteArray() ) const = 0
$virtualMethod=|QImageIOHandler *|create|QIODevice *,const QByteArray &=QByteArray()

#pragma ENDDUMP
