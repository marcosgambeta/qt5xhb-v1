%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD delete

   METHOD hasSupport
   METHOD supportedMimeTypes

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QMediaServiceSupportedFormatsInterface()
$deleteMethod

$prototype=virtual QMultimedia::SupportEstimate hasSupport(const QString & mimeType, const QStringList & codecs) const = 0
$virtualMethod=|QMultimedia::SupportEstimate|hasSupport|const QString &,const QStringList &

$prototype=virtual QStringList supportedMimeTypes() const = 0
$virtualMethod=|QStringList|supportedMimeTypes|

$extraMethods

#pragma ENDDUMP
