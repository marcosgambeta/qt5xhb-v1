%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAbstractSeries INHERIT QObject

%%   METHOD new
   METHOD delete

   METHOD attachAxis
   METHOD attachedAxes
   METHOD chart
   METHOD detachAxis
   METHOD hide
   METHOD isVisible
   METHOD name
   METHOD opacity
   METHOD setName
   METHOD setOpacity
   METHOD setUseOpenGL
   METHOD setVisible
   METHOD show
   METHOD type
   METHOD useOpenGL

   METHOD onNameChanged
   METHOD onOpacityChanged
   METHOD onUseOpenGLChanged
   METHOD onVisibleChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAbstractSeries(QAbstractSeriesPrivate &d, QObject *parent = nullptr) (protected)

$prototype=~QAbstractSeries()
$deleteMethod

%%
%% Q_PROPERTY(SeriesType type READ type)
%%

$prototype=virtual SeriesType type() const = 0
$virtualMethod=|QAbstractSeries::SeriesType|type|

%%
%% Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
%%

$prototype=QString name() const
$method=|QString|name|

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibleChanged)
%%

$prototype=bool isVisible() const
$method=|bool|isVisible|

$prototype=void setVisible(bool visible = true)
$method=|void|setVisible|bool=true

%%
%% Q_PROPERTY(qreal opacity READ opacity WRITE setOpacity NOTIFY opacityChanged)
%%

$prototype=qreal opacity() const
$method=|qreal|opacity|

$prototype=void setOpacity(qreal opacity)
$method=|void|setOpacity|qreal

%%
%% Q_PROPERTY(bool useOpenGL READ useOpenGL WRITE setUseOpenGL NOTIFY useOpenGLChanged)
%%

$prototype=bool useOpenGL() const
$method=|bool|useOpenGL|

$prototype=void setUseOpenGL(bool enable = true)
$method=|void|setUseOpenGL|bool=true

%%
%%
%%

$prototype=QChart *chart() const
$method=|QChart *|chart|

$prototype=bool attachAxis(QAbstractAxis *axis)
$method=|bool|attachAxis|QAbstractAxis *

$prototype=bool detachAxis(QAbstractAxis *axis)
$method=|bool|detachAxis|QAbstractAxis *

$prototype=QList<QAbstractAxis*> attachedAxes()
$method=|QList<QAbstractAxis *>|attachedAxes|

$prototype=void show()
$method=|void|show|

$prototype=void hide()
$method=|void|hide|

#pragma ENDDUMP
