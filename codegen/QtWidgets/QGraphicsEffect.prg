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
   METHOD boundingRect
   METHOD boundingRectFor
   METHOD isEnabled
   METHOD setEnabled
   METHOD update

   METHOD onEnabledChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QRectF boundingRect () const
$method=|QRectF|boundingRect|

$prototype=virtual QRectF boundingRectFor ( const QRectF & rect ) const
$virtualMethod=|QRectF|boundingRectFor|const QRectF &

$prototype=bool isEnabled () const
$method=|bool|isEnabled|

$prototype=void setEnabled ( bool enable )
$method=|void|setEnabled|bool

$prototype=void update ()
$method=|void|update|

$beginSignals
$signal=|enabledChanged(bool)
$endSignals

#pragma ENDDUMP
