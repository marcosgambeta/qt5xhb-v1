%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

%%   METHOD new
   METHOD delete

   METHOD isAutoAdjustRange
   METHOD isTitleFixed
   METHOD isTitleVisible
   METHOD labelAutoRotation
   METHOD labels
   METHOD max
   METHOD min
   METHOD orientation
   METHOD setAutoAdjustRange
   METHOD setLabelAutoRotation
   METHOD setLabels
   METHOD setMax
   METHOD setMin
   METHOD setRange
   METHOD setTitle
   METHOD setTitleFixed
   METHOD setTitleVisible
   METHOD title
   METHOD type

   METHOD onAutoAdjustRangeChanged
   METHOD onLabelAutoRotationChanged
   METHOD onLabelsChanged
   METHOD onMaxChanged
   METHOD onMinChanged
   METHOD onOrientationChanged
   METHOD onRangeChanged
   METHOD onTitleChanged
   METHOD onTitleFixedChanged
   METHOD onTitleVisibilityChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QAbstract3DAxis(QAbstract3DAxisPrivate *d, QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QAbstract3DAxis()
$deleteMethod

%%
%% Q_PROPERTY(QString title READ title WRITE setTitle NOTIFY titleChanged)
%%

$prototype=QString title() const
$method=|QString|title|

$prototype=void setTitle(const QString &title)
$method=|void|setTitle|const QString &

%%
%% Q_PROPERTY(QStringList labels READ labels WRITE setLabels NOTIFY labelsChanged)
%%

$prototype=QStringList labels() const
$method=|QStringList|labels|

$prototype=void setLabels(const QStringList &labels)
$method=|void|setLabels|const QStringList &

%%
%% Q_PROPERTY(AxisOrientation orientation READ orientation NOTIFY orientationChanged)
%%

$prototype=AxisOrientation orientation() const
$method=|QAbstract3DAxis::AxisOrientation|orientation|

%%
%% Q_PROPERTY(AxisType type READ type CONSTANT)
%%

$prototype=AxisType type() const
$method=|QAbstract3DAxis::AxisType|type|

%%
%% Q_PROPERTY(float min READ min WRITE setMin NOTIFY minChanged)
%%

$prototype=float min() const
$method=|float|min|

$prototype=void setMin(float min)
$method=|void|setMin|float

%%
%% Q_PROPERTY(float max READ max WRITE setMax NOTIFY maxChanged)
%%

$prototype=float max() const
$method=|float|max|

$prototype=void setMax(float max)
$method=|void|setMax|float

%%
%% Q_PROPERTY(bool autoAdjustRange READ isAutoAdjustRange WRITE setAutoAdjustRange NOTIFY autoAdjustRangeChanged)
%%

$prototype=bool isAutoAdjustRange() const
$method=|bool|isAutoAdjustRange|

$prototype=void setAutoAdjustRange(bool autoAdjust)
$method=|void|setAutoAdjustRange|bool

%%
%% Q_PROPERTY(float labelAutoRotation READ labelAutoRotation WRITE setLabelAutoRotation NOTIFY labelAutoRotationChanged REVISION 1)
%%

$prototype=float labelAutoRotation() const
$method=|float|labelAutoRotation|

$prototype=void setLabelAutoRotation(float angle)
$method=|void|setLabelAutoRotation|float

%%
%% Q_PROPERTY(bool titleVisible READ isTitleVisible WRITE setTitleVisible NOTIFY titleVisibilityChanged REVISION 1)
%%

$prototype=bool isTitleVisible() const
$method=|bool|isTitleVisible|

$prototype=void setTitleVisible(bool visible)
$method=|void|setTitleVisible|bool

%%
%% Q_PROPERTY(bool titleFixed READ isTitleFixed WRITE setTitleFixed NOTIFY titleFixedChanged REVISION 1)
%%

$prototype=bool isTitleFixed() const
$method=|bool|isTitleFixed|

$prototype=void setTitleFixed(bool fixed)
$method=|void|setTitleFixed|bool

%%
%%
%%

$prototype=void setRange(float min, float max)
$method=|void|setRange|float,float

$beginSignals
$signal=|autoAdjustRangeChanged(bool)
$signal=|labelAutoRotationChanged(float)
$signal=|labelsChanged()
$signal=|maxChanged(float)
$signal=|minChanged(float)
$signal=|orientationChanged(QAbstract3DAxis::AxisOrientation)
$signal=|rangeChanged(float,float)
$signal=|titleChanged(QString)
$signal=|titleFixedChanged(bool)
$signal=|titleVisibilityChanged(bool)
$endSignals

#pragma ENDDUMP
