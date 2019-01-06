%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

#include <QChart>

using namespace QtCharts;

$prototype=QAbstractSeries(QAbstractSeriesPrivate &d, QObject *parent = nullptr) [protected]

$prototype=~QAbstractSeries()
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(SeriesType type READ type)
%%

$prototype=virtual SeriesType type() const = 0
$virtualMethod=5,7,0|QAbstractSeries::SeriesType|type|

%%
%% Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
%%

$prototype=QString name() const
$method=5,7,0|QString|name|

$prototype=void setName(const QString &name)
$method=5,7,0|void|setName|const QString &

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibleChanged)
%%

$prototype=bool isVisible() const
$method=5,7,0|bool|isVisible|

$prototype=void setVisible(bool visible = true)
$method=5,7,0|void|setVisible|bool=true

%%
%% Q_PROPERTY(qreal opacity READ opacity WRITE setOpacity NOTIFY opacityChanged)
%%

$prototype=qreal opacity() const
$method=5,7,0|qreal|opacity|

$prototype=void setOpacity(qreal opacity)
$method=5,7,0|void|setOpacity|qreal

%%
%% Q_PROPERTY(bool useOpenGL READ useOpenGL WRITE setUseOpenGL NOTIFY useOpenGLChanged)
%%

$prototype=bool useOpenGL() const
$method=5,7,0|bool|useOpenGL|

$prototype=void setUseOpenGL(bool enable = true)
$method=5,7,0|void|setUseOpenGL|bool=true

%%
%%
%%

$prototype=QChart *chart() const
$method=5,7,0|QChart *|chart|

$prototype=bool attachAxis(QAbstractAxis *axis)
$method=5,7,0|bool|attachAxis|QAbstractAxis *

$prototype=bool detachAxis(QAbstractAxis *axis)
$method=5,7,0|bool|detachAxis|QAbstractAxis *

$prototype=QList<QAbstractAxis*> attachedAxes()
$method=5,7,0|QList<QAbstractAxis *>|attachedAxes|

$prototype=void show()
$method=5,7,0|void|show|

$prototype=void hide()
$method=5,7,0|void|hide|

$beginSignals
$signal=5,7,0|nameChanged()
$signal=5,7,0|opacityChanged()
$signal=5,7,0|useOpenGLChanged()
$signal=5,7,0|visibleChanged()
$endSignals

#pragma ENDDUMP
