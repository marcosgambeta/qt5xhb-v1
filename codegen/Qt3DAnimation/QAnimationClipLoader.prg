%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractAnimationClip

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAnimationClipLoader(Qt3DCore::QNode *parent = nullptr)

$prototype=explicit QAnimationClipLoader(const QUrl &source, Qt3DCore::QNode *parent = nullptr)

$prototype=explicit QAnimationClipLoader(QAnimationClipLoaderPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QAnimationClipLoader()
$deleteMethod

%%
%% Q_PROPERTY(QUrl source READ source WRITE setSource NOTIFY sourceChanged)
%%

$prototype=QUrl source() const

$prototype=void setSource(const QUrl &source) (slot)

%%
%% Q_PROPERTY(Status status READ status NOTIFY statusChanged)
%%

$prototype=Status status() const

%%
%%
%%

$prototype=void sceneChangeEvent(const Qt3DCore::QSceneChangePtr &change) Q_DECL_OVERRIDE [protected]

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

$beginSignals
$signal=|sourceChanged(QUrl)
$signal=|statusChanged(QAnimationClipLoader::Status)
$endSignals

#pragma ENDDUMP
