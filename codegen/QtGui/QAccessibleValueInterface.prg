%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QVariant currentValue() const = 0
$virtualMethod=|QVariant|currentValue|

$prototype=virtual void setCurrentValue(const QVariant &value) = 0
$virtualMethod=|void|setCurrentValue|const QVariant &

$prototype=virtual QVariant maximumValue() const = 0
$virtualMethod=|QVariant|maximumValue|

$prototype=virtual QVariant minimumValue() const = 0
$virtualMethod=|QVariant|minimumValue|

$prototype=virtual QVariant minimumStepSize() const = 0
$virtualMethod=|QVariant|minimumStepSize|

$extraMethods

#pragma ENDDUMP
