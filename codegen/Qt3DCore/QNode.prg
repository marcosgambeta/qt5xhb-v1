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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QNode(QNode *parent = nullptr)
$constructor=|new|QNode *=nullptr

$prototype=explicit QNode(QNodePrivate &dd, QNode *parent = nullptr) [protected]

$prototype=virtual ~QNode()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DCore::QNode *parent READ parentNode WRITE setParent NOTIFY parentChanged)
%%

$prototype=QNode *parentNode() const
$method=|QNode *|parentNode|

$prototype=void setParent(QNode *parent) (slot)
$slotMethod=|void|setParent|QNode *

%%
%% Q_PROPERTY(bool enabled READ isEnabled WRITE setEnabled NOTIFY enabledChanged)
%%

$prototype=bool isEnabled() const
$method=|bool|isEnabled|

$prototype=void setEnabled(bool isEnabled) (slot)
$slotMethod=|void|setEnabled|bool

%%
%% Q_PROPERTY(PropertyTrackingMode defaultPropertyTrackingMode READ defaultPropertyTrackingMode WRITE setDefaultPropertyTrackingMode NOTIFY defaultPropertyTrackingModeChanged REVISION 9)
%%

$prototype=PropertyTrackingMode defaultPropertyTrackingMode() const
$method=|QNode::PropertyTrackingMode|defaultPropertyTrackingMode|

$prototype=void setDefaultPropertyTrackingMode(PropertyTrackingMode mode) (slot)
$slotMethod=|void|setDefaultPropertyTrackingMode|QNode::PropertyTrackingMode

%%
%%
%%

$prototype=QNodeId id() const
$method=|QNodeId|id|

$prototype=bool notificationsBlocked() const
$method=|bool|notificationsBlocked|

$prototype=bool blockNotifications(bool block)
$method=|bool|blockNotifications|bool

$prototype=QNodeVector childNodes() const
$method=|QNodeVector|childNodes|

$prototype=void setPropertyTracking(const QString &propertyName, PropertyTrackingMode trackMode)
$method=|void|setPropertyTracking|const QString &,QNode::PropertyTrackingMode

$prototype=PropertyTrackingMode propertyTracking(const QString &propertyName) const
$method=|QNode::PropertyTrackingMode|propertyTracking|const QString &

$prototype=void clearPropertyTracking(const QString &propertyName)
$method=|void|clearPropertyTracking|const QString &

$prototype=void clearPropertyTrackings()
$method=|void|clearPropertyTrackings|

$prototype=QNodeCommand::CommandId sendCommand(const QString &name, const QVariant &data = QVariant(), QNodeCommand::CommandId replyTo = QNodeCommand::CommandId())
$method=|QNodeCommand::CommandId|sendCommand|const QString &,const QVariant &=QVariant(),QNodeCommand::CommandId=QNodeCommand::CommandId()

$prototype=void sendReply(const QNodeCommandPtr &command)
$method=|void|sendReply|const QNodeCommandPtr &

$prototype=void notifyObservers(const QSceneChangePtr &change) [protected]

$prototype=virtual void sceneChangeEvent(const QSceneChangePtr &change) [protected]

$prototype=virtual QNodeCreatedChangeBasePtr createNodeCreationChange() const [private]

$prototype=void setParent(QObject *) Q_DECL_EQ_DELETE [private]

$prototype=QNodeId qIdForNode(QNode *node) [private]

$beginSignals
$signal=|parentChanged(QObject*)
$signal=|enabledChanged(bool)
$signal=|defaultPropertyTrackingModeChanged(QNode::PropertyTrackingMode)
$signal=|nodeDestroyed()
$endSignals

#pragma ENDDUMP
