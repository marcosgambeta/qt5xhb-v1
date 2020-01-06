%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSql

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QItemDelegate

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSqlRelationalDelegate(QObject *aParent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QWidget *createEditor(QWidget *aParent, const QStyleOptionViewItem &option, const QModelIndex &index) const
$method=|QWidget *|createEditor|QWidget *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=void setModelData(QWidget *editor, QAbstractItemModel *model, const QModelIndex &index) const
$method=|void|setModelData|QWidget *,QAbstractItemModel *,const QModelIndex &

#pragma ENDDUMP
