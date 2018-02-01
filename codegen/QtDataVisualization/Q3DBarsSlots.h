%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void multiSeriesUniformChanged( bool uniform );
$signal=|void barThicknessChanged( float thicknessRatio );
$signal=|void barSpacingChanged( const QSizeF & spacing );
$signal=|void barSpacingRelativeChanged( bool relative );
$signal=|void rowAxisChanged( QCategory3DAxis * axis );
$signal=|void columnAxisChanged( QCategory3DAxis * axis );
$signal=|void valueAxisChanged( QValue3DAxis * axis );
$signal=|void primarySeriesChanged( QBar3DSeries * series );
$signal=|void selectedSeriesChanged( QBar3DSeries * series );
$signal=|void floorLevelChanged( float level );
$endSlotsClass
