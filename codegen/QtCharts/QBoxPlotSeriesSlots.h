%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=|void boxOutlineVisibilityChanged();
$signal=|void boxsetsAdded( QList<QBoxSet*> sets );
$signal=|void boxsetsRemoved( QList<QBoxSet*> sets );
$signal=|void boxWidthChanged();
$signal=|void brushChanged();
$signal=|void clicked( QBoxSet * boxset );
$signal=|void countChanged();
$signal=|void doubleClicked( QBoxSet * boxset );
$signal=|void hovered( bool status, QBoxSet * boxset );
$signal=|void penChanged();
$signal=|void pressed( QBoxSet * boxset );
$signal=|void released( QBoxSet * boxset );
$endSlotsClass
