%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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
$signal=|multiMatchBehaviorChanged( QItemModelBarDataProxy::MultiMatchBehavior behavior )
$signal=|rotationRoleChanged( const QString & role )
$signal=|rotationRolePatternChanged( const QRegExp & pattern )
$signal=|rotationRoleReplaceChanged( const QString & replace )
$signal=|rowCategoriesChanged()
$signal=|rowRoleChanged( const QString & role )
$signal=|rowRolePatternChanged( const QRegExp & pattern )
$signal=|rowRoleReplaceChanged( const QString & replace )
$signal=|useModelCategoriesChanged( bool enable )
$signal=|valueRoleChanged( const QString & role )
$signal=|valueRolePatternChanged( const QRegExp & pattern )
$signal=|valueRoleReplaceChanged( const QString & replace )
$endSlotsClass
