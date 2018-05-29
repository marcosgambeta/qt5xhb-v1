%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DCore::QNodeCreatedChangeBase

   METHOD new
   METHOD delete

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QClipBlendNodeCreatedChangeBase(const QAbstractClipBlendNode *node)

$prototype=~QClipBlendNodeCreatedChangeBase()
$deleteMethod

#pragma ENDDUMP
