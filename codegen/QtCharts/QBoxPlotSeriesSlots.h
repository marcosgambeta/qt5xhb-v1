%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

$includes=5,7,0

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|boxOutlineVisibilityChanged()
$signal=5,7,0|boxsetsAdded( QList<QBoxSet*> sets )
$signal=5,7,0|boxsetsRemoved( QList<QBoxSet*> sets )
$signal=5,7,0|boxWidthChanged()
$signal=5,7,0|brushChanged()
$signal=5,7,0|clicked( QBoxSet * boxset )
$signal=5,7,0|countChanged()
$signal=5,7,0|doubleClicked( QBoxSet * boxset )
$signal=5,7,0|hovered( bool status, QBoxSet * boxset )
$signal=5,7,0|penChanged()
$signal=5,7,0|pressed( QBoxSet * boxset )
$signal=5,7,0|released( QBoxSet * boxset )
$endSlotsClass
