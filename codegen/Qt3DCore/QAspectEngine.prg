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

$prototype=explicit QAspectEngine(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QAspectEngine()
$deleteMethod

$prototype=void setRootEntity(QEntityPtr root)
$method=|void|setRootEntity|QEntityPtr

$prototype=QEntityPtr rootEntity() const
$method=|QEntityPtr|rootEntity|

$prototype=void registerAspect(QAbstractAspect *aspect)
$method=|void|registerAspect|QAbstractAspect *

$prototype=void registerAspect(const QString &name)
$method=|void|registerAspect|const QString &

$prototype=void unregisterAspect(QAbstractAspect *aspect)
$method=|void|unregisterAspect|QAbstractAspect *

$prototype=void unregisterAspect(const QString &name)
$method=|void|unregisterAspect|const QString &

$prototype=QVector<QAbstractAspect*> aspects() const
$method=|QVector<QAbstractAspect *>|aspects|

$prototype=QVariant executeCommand(const QString &command)
$method=|QVariant|executeCommand|const QString &

#pragma ENDDUMP
