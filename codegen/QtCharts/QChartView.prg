%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QChartView INHERIT QGraphicsView

   METHOD new
   METHOD delete

   METHOD chart
   METHOD rubberBand
   METHOD setChart
   METHOD setRubberBand

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QChartView(QWidget *parent = Q_NULLPTR)
$constructor=|new1|QWidget *=Q_NULLPTR

$prototype=explicit QChartView(QChart *chart, QWidget *parent = Q_NULLPTR)
$constructor=|new2|QChart *,QWidget *=Q_NULLPTR

//[1]explicit QChartView(QWidget *parent = Q_NULLPTR)
//[2]explicit QChartView(QChart *chart, QWidget *parent = Q_NULLPTR)

HB_FUNC_STATIC( QCHARTVIEW_NEW )
{
}

$prototype=~QChartView()
$deleteMethod

$prototype=void setRubberBand(const RubberBands &rubberBands)
$method=|void|setRubberBand|const QChartView::RubberBands &

$prototype=RubberBands rubberBand() const
$method=|QChartView::RubberBands|rubberBand|

$prototype=QChart *chart() const
$method=|QChart *|chart|

$prototype=void setChart(QChart *chart)
$method=|void|setChart|QChart *

$prototype=void resizeEvent(QResizeEvent *event) (protected)

$prototype=void mousePressEvent(QMouseEvent *event) (protected)

$prototype=void mouseMoveEvent(QMouseEvent *event) (protected)

$prototype=void mouseReleaseEvent(QMouseEvent *event) (protected)

#pragma ENDDUMP
