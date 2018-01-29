%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QPieSeries INHERIT QAbstractSeries

   METHOD new
   METHOD delete

   METHOD append
   METHOD clear
   METHOD count
   METHOD holeSize
   METHOD horizontalPosition
   METHOD insert
   METHOD isEmpty
   METHOD pieEndAngle
   METHOD pieSize
   METHOD pieStartAngle
   METHOD remove
   METHOD setHoleSize
   METHOD setHorizontalPosition
   METHOD setLabelsPosition
   METHOD setLabelsVisible
   METHOD setPieEndAngle
   METHOD setPieSize
   METHOD setPieStartAngle
   METHOD setVerticalPosition
   METHOD slices
   METHOD sum
   METHOD take
   METHOD type
   METHOD verticalPosition

   METHOD onAdded
   METHOD onClicked
   METHOD onCountChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPressed
   METHOD onReleased
   METHOD onRemoved
   METHOD onSumChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QPieSeries(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=virtual ~QPieSeries()
$deleteMethod

%%
%% Q_PROPERTY(qreal horizontalPosition READ horizontalPosition WRITE setHorizontalPosition)
%%

$prototype=qreal horizontalPosition() const
$method=|qreal|horizontalPosition|

$prototype=void setHorizontalPosition(qreal relativePosition)
$method=|void|setHorizontalPosition|qreal

%%
%% Q_PROPERTY(qreal verticalPosition READ verticalPosition WRITE setVerticalPosition)
%%

$prototype=qreal verticalPosition() const
$method=|qreal|verticalPosition|

$prototype=void setVerticalPosition(qreal relativePosition)
$method=|void|setVerticalPosition|qreal

%%
%% Q_PROPERTY(qreal size READ pieSize WRITE setPieSize)
%%

$prototype=qreal pieSize() const
$method=|qreal|pieSize|

$prototype=void setPieSize(qreal relativeSize)
$method=|void|setPieSize|qreal

%%
%% Q_PROPERTY(qreal startAngle READ pieStartAngle WRITE setPieStartAngle)
%%

$prototype=qreal pieStartAngle() const
$method=|qreal|pieStartAngle|

$prototype=void setPieStartAngle(qreal startAngle)
$method=|void|setPieStartAngle|qreal

%%
%% Q_PROPERTY(qreal endAngle READ pieEndAngle WRITE setPieEndAngle)
%%

$prototype=qreal pieEndAngle() const
$method=|qreal|pieEndAngle|

$prototype=void setPieEndAngle(qreal endAngle)
$method=|void|setPieEndAngle|qreal

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototype=int count() const
$method=|int|count|

%%
%% Q_PROPERTY(qreal sum READ sum NOTIFY sumChanged)
%%

$prototype=qreal sum() const
$method=|qreal|sum|

%%
%% Q_PROPERTY(qreal holeSize READ holeSize WRITE setHoleSize)
%%

$prototype=qreal holeSize() const
$method=|qreal|holeSize|

$prototype=void setHoleSize(qreal holeSize)
$method=|void|setHoleSize|qreal

%%
%%
%%

$prototype=QAbstractSeries::SeriesType type() const
$method=|QAbstractSeries::SeriesType|type|

$prototype=bool append(QPieSlice *slice)
$method=|bool|append,append1|QPieSlice *

$prototype=bool append(QList<QPieSlice *> slices)
$method=|bool|append,append2|QList<QPieSlice *>

$prototype=QPieSlice *append(QString label, qreal value)
$method=|QPieSlice *|append,append3|QString,qreal

//[1]bool append(QPieSlice *slice)
//[2]bool append(QList<QPieSlice *> slices)
//[3]QPieSlice *append(QString label, qreal value)

HB_FUNC_STATIC( QPIESERIES_APPEND )
{
}

$prototype=bool insert(int index, QPieSlice *slice)
$method=|bool|insert|int,QPieSlice *

$prototype=bool remove(QPieSlice *slice)
$method=|bool|remove|QPieSlice *

$prototype=bool take(QPieSlice *slice)
$method=|bool|take|QPieSlice *

$prototype=void clear()
$method=|void|clear|

$prototype=QList<QPieSlice *> slices() const
$method=|QList<QPieSlice *>|slices|

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=void setLabelsVisible(bool visible = true)
$method=|void|setLabelsVisible|bool=true

$prototype=void setLabelsPosition(QPieSlice::LabelPosition position)
$method=|void|setLabelsPosition|QPieSlice::LabelPosition

#pragma ENDDUMP
