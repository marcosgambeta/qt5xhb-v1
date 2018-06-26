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
   METHOD compare
   METHOD createShader
   METHOD flags
   METHOD setFlag
   METHOD type

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual int compare(const QSGMaterial * other) const
$virtualMethod=|int|compare|const QSGMaterial *

$prototype=virtual QSGMaterialShader * createShader() const = 0
$virtualMethod=|QSGMaterialShader *|createShader|

$prototype=QSGMaterial::Flags flags() const
$method=|QSGMaterial::Flags|flags|

$prototype=void setFlag(Flags flags, bool on = true)
$method=|void|setFlag|QSGMaterial::Flags,bool=true

$prototype=virtual QSGMaterialType * type() const = 0
$virtualMethod=|QSGMaterialType *|type|

$extraMethods

#pragma ENDDUMP
