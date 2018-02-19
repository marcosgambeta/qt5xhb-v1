%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|void itemModelChanged( const QAbstractItemModel * itemModel )
$signal=|void rotationRoleChanged( const QString & role )
$signal=|void rotationRolePatternChanged( const QRegExp & pattern )
$signal=|void rotationRoleReplaceChanged( const QString & replace )
$signal=|void xPosRoleChanged( const QString & role )
$signal=|void xPosRolePatternChanged( const QRegExp & pattern )
$signal=|void xPosRoleReplaceChanged( const QString & replace )
$signal=|void yPosRoleChanged( const QString & role )
$signal=|void yPosRolePatternChanged( const QRegExp & pattern )
$signal=|void yPosRoleReplaceChanged( const QString & replace )
$signal=|void zPosRoleChanged( const QString & role )
$signal=|void zPosRolePatternChanged( const QRegExp & pattern )
$signal=|void zPosRoleReplaceChanged( const QString & replace )
$endSlotsClass
