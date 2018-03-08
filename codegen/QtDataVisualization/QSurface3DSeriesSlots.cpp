%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|dataProxyChanged( QSurfaceDataProxy * proxy )
$slot=|drawModeChanged( QSurface3DSeries::DrawFlags mode )
$slot=|flatShadingEnabledChanged( bool enable )
$slot=|flatShadingSupportedChanged( bool enable )
$slot=|selectedPointChanged( const QPoint & position )
$slot=|textureChanged( const QImage & image )
$slot=|textureFileChanged( const QString & filename )
$endSlotsClass
