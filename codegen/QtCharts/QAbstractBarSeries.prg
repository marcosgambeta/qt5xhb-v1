%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAbstractBarSeries INHERIT QAbstractSeries

%%   METHOD new
   METHOD delete

   METHOD append1
   METHOD append2
   METHOD append
   METHOD barSets
   METHOD barWidth
   METHOD clear
   METHOD count
   METHOD insert
   METHOD isLabelsVisible
   METHOD labelsAngle
   METHOD labelsFormat
   METHOD labelsPosition
   METHOD remove
   METHOD setBarWidth
   METHOD setLabelsAngle
   METHOD setLabelsFormat
   METHOD setLabelsPosition
   METHOD setLabelsVisible
   METHOD take

   METHOD onBarsetsAdded
   METHOD onBarsetsRemoved
   METHOD onClicked
   METHOD onCountChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onLabelsAngleChanged
   METHOD onLabelsFormatChanged
   METHOD onLabelsPositionChanged
   METHOD onLabelsVisibleChanged
   METHOD onPressed
   METHOD onReleased

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAbstractBarSeries(QAbstractBarSeriesPrivate &d, QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QAbstractBarSeries()
$deleteMethod

%%
%% Q_PROPERTY(qreal barWidth READ barWidth WRITE setBarWidth)
%%

$prototype=qreal barWidth() const
$method=|qreal|barWidth|

$prototype=void setBarWidth(qreal width)
$method=|void|setBarWidth|qreal

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototype=int count() const
$method=|int|count|

%%
%% Q_PROPERTY(bool labelsVisible READ isLabelsVisible WRITE setLabelsVisible NOTIFY labelsVisibleChanged)
%%

$prototype=bool isLabelsVisible() const
$method=|bool|isLabelsVisible|

$prototype=void setLabelsVisible(bool visible = true)
$method=|void|setLabelsVisible|bool=true

%%
%% Q_PROPERTY(QString labelsFormat READ labelsFormat WRITE setLabelsFormat NOTIFY labelsFormatChanged)
%%

$prototype=QString labelsFormat() const
$method=|QString|labelsFormat|

$prototype=void setLabelsFormat(const QString &format)
$method=|void|setLabelsFormat|const QString &

%%
%% Q_PROPERTY(qreal labelsAngle READ labelsAngle WRITE setLabelsAngle NOTIFY labelsAngleChanged)
%%

$prototype=qreal labelsAngle() const
$method=|qreal|labelsAngle|

$prototype=void setLabelsAngle(qreal angle)
$method=|void|setLabelsAngle|qreal

%%
%% Q_PROPERTY(LabelsPosition labelsPosition READ labelsPosition WRITE setLabelsPosition NOTIFY labelsPositionChanged)
%%

$prototype=QAbstractBarSeries::LabelsPosition labelsPosition() const
$method=|QAbstractBarSeries::LabelsPosition|labelsPosition|

$prototype=void setLabelsPosition(QAbstractBarSeries::LabelsPosition position)
$method=|void|setLabelsPosition|QAbstractBarSeries::LabelsPosition

%%
%%
%%

$prototype=bool append(QBarSet *set)
$method=|bool|append,append1|QBarSet *

$prototype=bool append(QList<QBarSet *> sets)
$method=|bool|append,append2|QList<QBarSet *>

//[1]bool append(QBarSet *set)
//[2]bool append(QList<QBarSet *> sets)

HB_FUNC_STATIC( QABSTRACTBARSERIES_APPEND )
{
}

$prototype=bool remove(QBarSet *set)
$method=|bool|remove|QBarSet *

$prototype=bool take(QBarSet *set)
$method=|bool|take|QBarSet *

$prototype=bool insert(int index, QBarSet *set)
$method=|bool|insert|int,QBarSet *

$prototype=QList<QBarSet *> barSets() const
$method=|QList<QBarSet *>|barSets|

$prototype=void clear()
$method=|void|clear|

#pragma ENDDUMP
