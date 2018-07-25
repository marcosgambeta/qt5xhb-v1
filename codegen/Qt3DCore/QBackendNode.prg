%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QBackendNode(Mode mode = ReadOnly)
$constructor=|new|QBackendNode::Mode=QBackendNode::ReadOnly

$prototype=explicit QBackendNode(QBackendNodePrivate &dd) (protected)

$prototype=virtual ~QBackendNode()
$deleteMethod

$prototype=QNodeId peerId() const Q_DECL_NOEXCEPT
$method=|QNodeId|peerId|

$prototype=void setEnabled(bool enabled) Q_DECL_NOEXCEPT
$method=|void|setEnabled|bool

$prototype=bool isEnabled() const Q_DECL_NOEXCEPT
$method=|bool|isEnabled|

$prototype=Mode mode() const Q_DECL_NOEXCEPT
$method=|QBackendNode::Mode|mode|

$prototype=void notifyObservers(const QSceneChangePtr &e) (protected)

$prototype=QNodeCommand::CommandId sendCommand(const QString &name, const QVariant &data, QNodeCommand::CommandId replyTo = QNodeCommand::CommandId()) (protected)

$prototype=void sendReply(const QNodeCommandPtr &command) (protected)

$prototype=virtual void sceneChangeEvent(const QSceneChangePtr &e) (protected)

$prototype=void setPeerId(QNodeId id) Q_DECL_NOEXCEPT (private)

$prototype=virtual void initializeFromPeer(const QNodeCreatedChangeBasePtr &change) (private)

$extraMethods

#pragma ENDDUMP
