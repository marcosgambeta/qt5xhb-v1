%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPropertyUpdatedChangeBase

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QDynamicPropertyUpdatedChange(QNodeId subjectId)
$constructor=|new|QNodeId

$prototype=QDynamicPropertyUpdatedChange(QDynamicPropertyUpdatedChangePrivate &dd, QNodeId subjectId) [protected]

$prototype=~QDynamicPropertyUpdatedChange()
$deleteMethod

$prototype=QByteArray propertyName() const
$method=|QByteArray|propertyName|

$prototype=void setPropertyName(const QByteArray &name)
$method=|void|setPropertyName|const QByteArray &

$prototype=QVariant value() const
$method=|QVariant|value|

$prototype=void setValue(const QVariant &value)
$method=|void|setValue|const QVariant &

#pragma ENDDUMP
