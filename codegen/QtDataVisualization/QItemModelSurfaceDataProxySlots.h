%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|autoColumnCategoriesChanged( bool enable )
$signal=|autoRowCategoriesChanged( bool enable )
$signal=|columnCategoriesChanged()
$signal=|columnRoleChanged( const QString & role )
$signal=|columnRolePatternChanged( const QRegExp & pattern )
$signal=|columnRoleReplaceChanged( const QString & replace )
$signal=|itemModelChanged( const QAbstractItemModel * itemModel )
$signal=|multiMatchBehaviorChanged( QItemModelSurfaceDataProxy::MultiMatchBehavior behavior )
$signal=|rowCategoriesChanged()
$signal=|rowRoleChanged( const QString & role )
$signal=|rowRolePatternChanged( const QRegExp & pattern )
$signal=|rowRoleReplaceChanged( const QString & replace )
$signal=|useModelCategoriesChanged( bool enable )
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
