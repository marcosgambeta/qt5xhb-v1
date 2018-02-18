%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|void boxOutlineVisibilityChanged()
$signal=5,7,0|void boxsetsAdded( QList<QBoxSet*> sets )
$signal=5,7,0|void boxsetsRemoved( QList<QBoxSet*> sets )
$signal=5,7,0|void boxWidthChanged()
$signal=5,7,0|void brushChanged()
$signal=5,7,0|void clicked( QBoxSet * boxset )
$signal=5,7,0|void countChanged()
$signal=5,7,0|void doubleClicked( QBoxSet * boxset )
$signal=5,7,0|void hovered( bool status, QBoxSet * boxset )
$signal=5,7,0|void penChanged()
$signal=5,7,0|void pressed( QBoxSet * boxset )
$signal=5,7,0|void released( QBoxSet * boxset )
$endSlotsClass
