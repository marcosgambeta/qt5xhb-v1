%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

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

$prototype=QAspectJob()
$constructor=|new|

$prototype=explicit QAspectJob(QAspectJobPrivate &dd) [protected]

$prototype=virtual ~QAspectJob()
$deleteMethod

$prototype=void addDependency(QWeakPointer<QAspectJob> dependency)

$prototype=void removeDependency(QWeakPointer<QAspectJob> dependency)

$prototype=QVector<QWeakPointer<QAspectJob> > dependencies() const

$prototype=virtual void run() = 0
$virtualMethod=|void|run|

#pragma ENDDUMP
