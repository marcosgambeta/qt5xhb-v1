%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|itemModelChanged( const QAbstractItemModel * itemModel )
$signal=|rotationRoleChanged( const QString & role )
$signal=|rotationRolePatternChanged( const QRegExp & pattern )
$signal=|rotationRoleReplaceChanged( const QString & replace )
$signal=|xPosRoleChanged( const QString & role )
$signal=|xPosRolePatternChanged( const QRegExp & pattern )
$signal=|xPosRoleReplaceChanged( const QString & replace )
$signal=|yPosRoleChanged( const QString & role )
$signal=|yPosRolePatternChanged( const QRegExp & pattern )
$signal=|yPosRoleReplaceChanged( const QString & replace )
$signal=|zPosRoleChanged( const QString & role )
$signal=|zPosRolePatternChanged( const QRegExp & pattern )
$signal=|zPosRoleReplaceChanged( const QString & replace )
$endSlotsClass
