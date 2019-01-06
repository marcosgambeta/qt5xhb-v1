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

$beginClassFrom=QAbstractSeries

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=explicit QPieSeries(QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QObject *=Q_NULLPTR

$prototype=virtual ~QPieSeries()
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(qreal horizontalPosition READ horizontalPosition WRITE setHorizontalPosition)
%%

$prototype=qreal horizontalPosition() const
$method=5,7,0|qreal|horizontalPosition|

$prototype=void setHorizontalPosition(qreal relativePosition)
$method=5,7,0|void|setHorizontalPosition|qreal

%%
%% Q_PROPERTY(qreal verticalPosition READ verticalPosition WRITE setVerticalPosition)
%%

$prototype=qreal verticalPosition() const
$method=5,7,0|qreal|verticalPosition|

$prototype=void setVerticalPosition(qreal relativePosition)
$method=5,7,0|void|setVerticalPosition|qreal

%%
%% Q_PROPERTY(qreal size READ pieSize WRITE setPieSize)
%%

$prototype=qreal pieSize() const
$method=5,7,0|qreal|pieSize|

$prototype=void setPieSize(qreal relativeSize)
$method=5,7,0|void|setPieSize|qreal

%%
%% Q_PROPERTY(qreal startAngle READ pieStartAngle WRITE setPieStartAngle)
%%

$prototype=qreal pieStartAngle() const
$method=5,7,0|qreal|pieStartAngle|

$prototype=void setPieStartAngle(qreal startAngle)
$method=5,7,0|void|setPieStartAngle|qreal

%%
%% Q_PROPERTY(qreal endAngle READ pieEndAngle WRITE setPieEndAngle)
%%

$prototype=qreal pieEndAngle() const
$method=5,7,0|qreal|pieEndAngle|

$prototype=void setPieEndAngle(qreal endAngle)
$method=5,7,0|void|setPieEndAngle|qreal

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototype=int count() const
$method=5,7,0|int|count|

%%
%% Q_PROPERTY(qreal sum READ sum NOTIFY sumChanged)
%%

$prototype=qreal sum() const
$method=5,7,0|qreal|sum|

%%
%% Q_PROPERTY(qreal holeSize READ holeSize WRITE setHoleSize)
%%

$prototype=qreal holeSize() const
$method=5,7,0|qreal|holeSize|

$prototype=void setHoleSize(qreal holeSize)
$method=5,7,0|void|setHoleSize|qreal

%%
%%
%%

$prototype=QAbstractSeries::SeriesType type() const
$method=5,7,0|QAbstractSeries::SeriesType|type|

$prototype=bool append(QPieSlice *slice)
$internalMethod=5,7,0|bool|append,append1|QPieSlice *

$prototype=bool append(QList<QPieSlice *> slices)
$internalMethod=5,7,0|bool|append,append2|QList<QPieSlice *>

$prototype=QPieSlice *append(QString label, qreal value)
$internalMethod=5,7,0|QPieSlice *|append,append3|QString,qreal

//[1]bool append(QPieSlice *slice)
//[2]bool append(QList<QPieSlice *> slices)
//[3]QPieSlice *append(QString label, qreal value)

HB_FUNC_STATIC( QPIESERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQPIESLICE(1) )
  {
    QPieSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QPieSeries_append2();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) )
  {
    QPieSeries_append3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototype=bool insert(int index, QPieSlice *slice)
$method=5,7,0|bool|insert|int,QPieSlice *

$prototype=bool remove(QPieSlice *slice)
$method=5,7,0|bool|remove|QPieSlice *

$prototype=bool take(QPieSlice *slice)
$method=5,7,0|bool|take|QPieSlice *

$prototype=void clear()
$method=5,7,0|void|clear|

$prototype=QList<QPieSlice *> slices() const
$method=5,7,0|QList<QPieSlice *>|slices|

$prototype=bool isEmpty() const
$method=5,7,0|bool|isEmpty|

$prototype=void setLabelsVisible(bool visible = true)
$method=5,7,0|void|setLabelsVisible|bool=true

$prototype=void setLabelsPosition(QPieSlice::LabelPosition position)
$method=5,7,0|void|setLabelsPosition|QPieSlice::LabelPosition

$beginSignals
$signal=5,7,0|added(QList<QPieSlice*>)
$signal=5,7,0|clicked(QPieSlice*)
$signal=5,7,0|countChanged()
$signal=5,7,0|doubleClicked(QPieSlice*)
$signal=5,7,0|hovered(QPieSlice*,bool)
$signal=5,7,0|pressed(QPieSlice*)
$signal=5,7,0|released(QPieSlice*)
$signal=5,7,0|removed(QList<QPieSlice*>)
$signal=5,7,0|sumChanged()
$endSignals

#pragma ENDDUMP
