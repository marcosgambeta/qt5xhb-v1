%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|void autoColumnCategoriesChanged( bool enable )
$signal=|void autoRowCategoriesChanged( bool enable )
$signal=|void columnCategoriesChanged()
$signal=|void columnRoleChanged( const QString & role )
$signal=|void columnRolePatternChanged( const QRegExp & pattern )
$signal=|void columnRoleReplaceChanged( const QString & replace )
$signal=|void itemModelChanged( const QAbstractItemModel * itemModel )
$signal=|void multiMatchBehaviorChanged( QItemModelBarDataProxy::MultiMatchBehavior behavior )
$signal=|void rotationRoleChanged( const QString & role )
$signal=|void rotationRolePatternChanged( const QRegExp & pattern )
$signal=|void rotationRoleReplaceChanged( const QString & replace )
$signal=|void rowCategoriesChanged()
$signal=|void rowRoleChanged( const QString & role )
$signal=|void rowRolePatternChanged( const QRegExp & pattern )
$signal=|void rowRoleReplaceChanged( const QString & replace )
$signal=|void useModelCategoriesChanged( bool enable )
$signal=|void valueRoleChanged( const QString & role )
$signal=|void valueRolePatternChanged( const QRegExp & pattern )
$signal=|void valueRoleReplaceChanged( const QString & replace )
$endSlotsClass
