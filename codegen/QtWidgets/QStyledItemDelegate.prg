%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractItemDelegate

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyledItemDelegate(QObject *parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void paint(QPainter *painter,const QStyleOptionViewItem &option, const QModelIndex &index) const
$method=|void|paint|QPainter *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=QSize sizeHint(const QStyleOptionViewItem &option,const QModelIndex &index) const
$method=|QSize|sizeHint|const QStyleOptionViewItem &,const QModelIndex &

$prototype=QWidget *createEditor(QWidget *parent,const QStyleOptionViewItem &option,const QModelIndex &index) const
$method=|QWidget *|createEditor|QWidget *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=void setEditorData(QWidget *editor, const QModelIndex &index) const
$method=|void|setEditorData|QWidget *,const QModelIndex &

$prototype=void setModelData(QWidget *editor,QAbstractItemModel *model,const QModelIndex &index) const
$method=|void|setModelData|QWidget *,QAbstractItemModel *,const QModelIndex &

$prototype=void updateEditorGeometry(QWidget *editor,const QStyleOptionViewItem &option,const QModelIndex &index) const
$method=|void|updateEditorGeometry|QWidget *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=QItemEditorFactory *itemEditorFactory() const
$method=|QItemEditorFactory *|itemEditorFactory|

$prototype=void setItemEditorFactory(QItemEditorFactory *factory)
$method=|void|setItemEditorFactory|QItemEditorFactory *

$prototype=virtual QString displayText(const QVariant &value, const QLocale &locale) const
$virtualMethod=|QString|displayText|const QVariant &,const QLocale &

#pragma ENDDUMP
