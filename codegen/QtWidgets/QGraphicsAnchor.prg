%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QObject

   METHOD delete
   METHOD setSizePolicy
   METHOD setSpacing
   METHOD sizePolicy
   METHOD spacing
   METHOD unsetSpacing

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=void setSizePolicy(QSizePolicy::Policy policy)
$method=|void|setSizePolicy|QSizePolicy::Policy

$prototype=void setSpacing(qreal spacing)
$method=|void|setSpacing|qreal

$prototype=QSizePolicy::Policy sizePolicy() const
$method=|QSizePolicy::Policy|sizePolicy|

$prototype=qreal spacing() const
$method=|qreal|spacing|

$prototype=void unsetSpacing()
$method=|void|unsetSpacing|

#pragma ENDDUMP
