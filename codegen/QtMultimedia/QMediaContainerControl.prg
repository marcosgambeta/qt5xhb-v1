%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QMediaContainerControl INHERIT QMediaControl

   METHOD delete
   METHOD containerDescription
   METHOD containerFormat
   METHOD setContainerFormat
   METHOD supportedContainers

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

$deleteMethod

$prototype=virtual QString containerDescription(const QString & format) const = 0
$virtualMethod=|QString|containerDescription|const QString &

$prototype=virtual QString containerFormat() const = 0
$virtualMethod=|QString|containerFormat|

$prototype=virtual void setContainerFormat(const QString & format) = 0
$virtualMethod=|void|setContainerFormat|const QString &

$prototype=virtual QStringList supportedContainers() const = 0
$virtualMethod=|QStringList|supportedContainers|

#pragma ENDDUMP
