%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void dataProxyChanged( QSurfaceDataProxy * proxy )
$signal=|void drawModeChanged( QSurface3DSeries::DrawFlags mode )
$signal=|void flatShadingEnabledChanged( bool enable )
$signal=|void flatShadingSupportedChanged( bool enable )
$signal=|void selectedPointChanged( const QPoint & position )
$signal=|void textureChanged( const QImage & image )
$signal=|void textureFileChanged( const QString & filename )
$endSlotsClass
