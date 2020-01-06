%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DAnimation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DCore::QNode

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAbstractClipBlendNode(Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=explicit QAbstractClipBlendNode(QAbstractClipBlendNodePrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QAbstractClipBlendNode()
$deleteMethod

#pragma ENDDUMP
