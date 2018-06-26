%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD delete

   METHOD deviceDescription
   METHOD devices

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QMediaServiceSupportedDevicesInterface()
$deleteMethod

$prototype=virtual QString deviceDescription(const QByteArray & service, const QByteArray & device) = 0
$virtualMethod=|QString|deviceDescription|const QByteArray &,const QByteArray &

$prototype=virtual QList<QByteArray> devices(const QByteArray & service) const = 0
$virtualMethod=|QList<QByteArray>|devices|const QByteArray &

$extraMethods

#pragma ENDDUMP
