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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAbstractAspect(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=explicit QAbstractAspect(QAbstractAspectPrivate &dd, QObject *parent = nullptr) [protected]

$prototype=~QAbstractAspect()
$deleteMethod

$prototype=void scheduleSingleShotJob(const Qt3DCore::QAspectJobPtr &job)
$method=|void|scheduleSingleShotJob|const Qt3DCore::QAspectJobPtr &

$prototype=QNodeId rootEntityId() const Q_DECL_NOEXCEPT [protected]

$prototype=void registerBackendType(const QBackendNodeMapperPtr &functor) [protected]

$prototype=void registerBackendType(const QMetaObject &, const QBackendNodeMapperPtr &functor) [protected]

$prototype=void unregisterBackendType() [protected]

$prototype=void unregisterBackendType(const QMetaObject &) [protected]

$prototype=virtual QVariant executeCommand(const QStringList &args) [private]

$prototype=virtual QVector<QAspectJobPtr> jobsToExecute(qint64 time) [private]

$prototype=virtual void onRegistered() [private]

$prototype=virtual void onUnregistered() [private]

$prototype=virtual void onEngineStartup() [private]

$prototype=virtual void onEngineShutdown() [private]

#pragma ENDDUMP
