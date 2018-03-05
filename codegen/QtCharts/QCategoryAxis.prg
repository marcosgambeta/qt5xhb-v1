%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCategoryAxis INHERIT QValueAxis

   METHOD new
   METHOD delete

   METHOD append
   METHOD categoriesLabels
   METHOD count
   METHOD endValue
   METHOD labelsPosition
   METHOD remove
   METHOD replaceLabel
   METHOD setLabelsPosition
   METHOD setStartValue
   METHOD startValue
   METHOD type

   METHOD onCategoriesChanged
   METHOD onLabelsPositionChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=explicit QCategoryAxis(QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QObject *=Q_NULLPTR

$prototype=QCategoryAxis(QCategoryAxisPrivate &d, QObject *parent = Q_NULLPTR) (protected)

$prototype=~QCategoryAxis()
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(qreal startValue READ startValue WRITE setStartValue)
%%

$prototype=qreal startValue(const QString &categoryLabel = QString()) const
$method=5,7,0|qreal|startValue|const QString &=QString()

$prototype=void setStartValue(qreal min)
$method=5,7,0|void|setStartValue|qreal

%%
%% Q_PROPERTY(QStringList categoriesLabels READ categoriesLabels)
%%

$prototype=QStringList categoriesLabels()
$method=5,7,0|QStringList|categoriesLabels|

%%
%% Q_PROPERTY(int count READ count)
%%

$prototype=int count() const
$method=5,7,0|int|count|

%%
%% Q_PROPERTY(AxisLabelsPosition labelsPosition READ labelsPosition WRITE setLabelsPosition NOTIFY labelsPositionChanged)
%%

$prototype=QCategoryAxis::AxisLabelsPosition labelsPosition() const
$method=5,7,0|QCategoryAxis::AxisLabelsPosition|labelsPosition|

$prototype=void setLabelsPosition(QCategoryAxis::AxisLabelsPosition position)
$method=5,7,0|void|setLabelsPosition|QCategoryAxis::AxisLabelsPosition

%%
%%
%%

$prototype=AxisType type() const
$method=5,7,0|QAbstractAxis::AxisType|type|

$prototype=void append(const QString &label, qreal categoryEndValue)
$method=5,7,0|void|append|const QString &,qreal

$prototype=void remove(const QString &label)
$method=5,7,0|void|remove|const QString &

$prototype=void replaceLabel(const QString &oldLabel, const QString &newLabel)
$method=5,7,0|void|replaceLabel|const QString &,const QString &

$prototype=qreal endValue(const QString &categoryLabel) const
$method=5,7,0|qreal|endValue|const QString &

$connectSignalFunction

$signalMethod=5,7,0|categoriesChanged()
$signalMethod=5,7,0|labelsPositionChanged(QCategoryAxis::AxisLabelsPosition)

#pragma ENDDUMP
