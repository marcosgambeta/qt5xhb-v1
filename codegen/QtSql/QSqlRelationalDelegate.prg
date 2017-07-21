$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QSqlRelationalDelegate INHERIT QItemDelegate

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createEditor
   METHOD setModelData

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QSqlRelationalDelegate(QObject *aParent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QWidget *createEditor(QWidget *aParent, const QStyleOptionViewItem &option, const QModelIndex &index) const
*/
$method=|QWidget *|createEditor|QWidget *,const QStyleOptionViewItem &,const QModelIndex &

/*
void setModelData(QWidget *editor, QAbstractItemModel *model, const QModelIndex &index) const
*/
$method=|void|setModelData|QWidget *,QAbstractItemModel *,const QModelIndex &

#pragma ENDDUMP
