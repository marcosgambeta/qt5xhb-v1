%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSceneChange

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

%% TODO:
%% #if defined(Q_ATOMIC_INT64_IS_SUPPORTED)
%%     typedef quint64 CommandId;
%% #else
%%     typedef quint32 CommandId;
%% #endif

$includes

$prototype=explicit QNodeCommand(QNodeId id)
$constructor=|new|QNodeId

$prototype=explicit QNodeCommand(QNodeCommandPrivate &dd, QNodeId id) [protected]

$prototype=~QNodeCommand()
$deleteMethod

$prototype=CommandId commandId() const

$prototype=QString name() const
$method=|QString|name|

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

$prototype=QVariant data() const
$method=|QVariant|data|

$prototype=void setData(const QVariant &data)
$method=|void|setData|const QVariant &

$prototype=CommandId inReplyTo() const

$prototype=void setReplyToCommandId(CommandId id)

#pragma ENDDUMP
