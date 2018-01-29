%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QPieModelMapper INHERIT QObject

%%   METHOD new
%%   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$protoype=explicit QPieModelMapper(QObject *parent = Q_NULLPTR) (protected)

%% $deleteMethod

$protoype=QAbstractItemModel *model() const (protected)
$protoype=void setModel(QAbstractItemModel *model) (protected)

$protoype=QPieSeries *series() const (protected)
$protoype=void setSeries(QPieSeries *series) (protected)

$protoype=int first() const (protected)
$protoype=void setFirst(int first) (protected)

$protoype=int count() const (protected)
$protoype=void setCount(int count) (protected)

$protoype=int valuesSection() const (protected)
$protoype=void setValuesSection(int valuesSection) (protected)

$protoype=int labelsSection() const (protected)
$protoype=void setLabelsSection(int labelsSection) (protected)

$protoype=Qt::Orientation orientation() const (protected)
$protoype=void setOrientation(Qt::Orientation orientation) (protected)

#pragma ENDDUMP
