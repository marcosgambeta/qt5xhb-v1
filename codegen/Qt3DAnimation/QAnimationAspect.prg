%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DCore::QAbstractAspect

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAnimationAspect(QObject *parent = nullptr)

$prototype=explicit QAnimationAspect(QAnimationAspectPrivate &dd, QObject *parent) [private]

$prototype=~QAnimationAspect()
$deleteMethod

$prototype=QVector<Qt3DCore::QAspectJobPtr> jobsToExecute(qint64 time) Q_DECL_OVERRIDE [private]

#pragma ENDDUMP
