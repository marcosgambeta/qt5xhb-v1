$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QITEMEDITORFACTORY
#endif

CLASS QStyledItemDelegate INHERIT QAbstractItemDelegate

   METHOD new
   METHOD delete
   METHOD paint
   METHOD sizeHint
   METHOD createEditor
   METHOD setEditorData
   METHOD setModelData
   METHOD updateEditorGeometry
   METHOD itemEditorFactory
   METHOD setItemEditorFactory
   METHOD displayText

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QStyledItemDelegate(QObject *parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void paint(QPainter *painter,const QStyleOptionViewItem &option, const QModelIndex &index) const
*/
$method=|void|paint|QPainter *,const QStyleOptionViewItem &,const QModelIndex &

/*
QSize sizeHint(const QStyleOptionViewItem &option,const QModelIndex &index) const
*/
$method=|QSize|sizeHint|const QStyleOptionViewItem &,const QModelIndex &

/*
QWidget *createEditor(QWidget *parent,const QStyleOptionViewItem &option,const QModelIndex &index) const
*/
$method=|QWidget *|createEditor|QWidget *,const QStyleOptionViewItem &,const QModelIndex &

/*
void setEditorData(QWidget *editor, const QModelIndex &index) const
*/
$method=|void|setEditorData|QWidget *,const QModelIndex &

/*
void setModelData(QWidget *editor,QAbstractItemModel *model,const QModelIndex &index) const
*/
$method=|void|setModelData|QWidget *,QAbstractItemModel *,const QModelIndex &

/*
void updateEditorGeometry(QWidget *editor,const QStyleOptionViewItem &option,const QModelIndex &index) const
*/
$method=|void|updateEditorGeometry|QWidget *,const QStyleOptionViewItem &,const QModelIndex &

/*
QItemEditorFactory *itemEditorFactory() const
*/
$method=|QItemEditorFactory *|itemEditorFactory|

/*
void setItemEditorFactory(QItemEditorFactory *factory)
*/
$method=|void|setItemEditorFactory|QItemEditorFactory *

/*
virtual QString displayText(const QVariant &value, const QLocale &locale) const
*/
$method=|QString|displayText|const QVariant &,const QLocale &

#pragma ENDDUMP
