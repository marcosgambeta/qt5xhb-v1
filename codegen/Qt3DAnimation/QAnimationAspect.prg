%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAnimationAspect INHERIT Qt3DCore::QAbstractAspect

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAnimationAspect(QObject *parent = nullptr)

$prototype=explicit QAnimationAspect(QAnimationAspectPrivate &dd, QObject *parent) (private)

$prototype=~QAnimationAspect()
$deleteMethod

$prototype=QVector<Qt3DCore::QAspectJobPtr> jobsToExecute(qint64 time) Q_DECL_OVERRIDE (private)

#pragma ENDDUMP
