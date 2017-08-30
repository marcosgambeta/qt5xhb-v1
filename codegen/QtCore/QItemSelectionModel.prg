$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QItemSelectionModel INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD currentIndex
   METHOD isSelected
   METHOD isRowSelected
   METHOD isColumnSelected
   METHOD rowIntersectsSelection
   METHOD columnIntersectsSelection
   METHOD hasSelection
   METHOD selectedIndexes
   METHOD selectedRows
   METHOD selectedColumns
   METHOD selection
   METHOD model
   METHOD setCurrentIndex
   METHOD select
   METHOD clear
   METHOD reset
   METHOD clearSelection
   METHOD clearCurrentIndex

   METHOD onSelectionChanged
   METHOD onCurrentChanged
   METHOD onCurrentRowChanged
   METHOD onCurrentColumnChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QItemSelectionModel(QAbstractItemModel *model)
*/
$internalConstructor=|new1|QAbstractItemModel *

/*
QItemSelectionModel(QAbstractItemModel *model, QObject *parent)
*/
$internalConstructor=|new2|QAbstractItemModel *,QObject *

//[1]QItemSelectionModel(QAbstractItemModel *model)
//[2]QItemSelectionModel(QAbstractItemModel *model, QObject *parent)

HB_FUNC_STATIC( QITEMSELECTIONMODEL_NEW )
{
  if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
  {
    QItemSelectionModel_new1();
  }
  else if( ISNUMPAR(2) && ISQABSTRACTITEMMODEL(1) && ISQOBJECT(2) )
  {
    QItemSelectionModel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QModelIndex currentIndex() const
*/
$method=|QModelIndex|currentIndex|

/*
bool isSelected(const QModelIndex &index) const
*/
$method=|bool|isSelected|const QModelIndex &

/*
bool isRowSelected(int row, const QModelIndex &parent) const
*/
$method=|bool|isRowSelected|int,const QModelIndex &

/*
bool isColumnSelected(int column, const QModelIndex &parent) const
*/
$method=|bool|isColumnSelected|int,const QModelIndex &

/*
bool rowIntersectsSelection(int row, const QModelIndex &parent) const
*/
$method=|bool|rowIntersectsSelection|int,const QModelIndex &

/*
bool columnIntersectsSelection(int column, const QModelIndex &parent) const
*/
$method=|bool|columnIntersectsSelection|int,const QModelIndex &

/*
bool hasSelection() const
*/
$method=|bool|hasSelection|

/*
QModelIndexList selectedIndexes() const
*/
$method=|QModelIndexList|selectedIndexes|

/*
QModelIndexList selectedRows(int column = 0) const
*/
$method=|QModelIndexList|selectedRows|int=0

/*
QModelIndexList selectedColumns(int row = 0) const
*/
$method=|QModelIndexList|selectedColumns|int=0

/*
const QItemSelection selection() const // TODO: implementar
*/
$method=|const QItemSelection|selection|

/*
const QAbstractItemModel *model() const
*/
$method=|const QAbstractItemModel *|model|

/*
virtual void setCurrentIndex(const QModelIndex &index, QItemSelectionModel::SelectionFlags command)
*/
$method=|void|setCurrentIndex|const QModelIndex &,QItemSelectionModel::SelectionFlags

/*
virtual void select(const QModelIndex &index, QItemSelectionModel::SelectionFlags command)
*/
$internalMethod=|void|select,select1|const QModelIndex &,QItemSelectionModel::SelectionFlags

/*
virtual void select(const QItemSelection &selection, QItemSelectionModel::SelectionFlags command)
*/
$internalMethod=|void|select,select2|const QItemSelection &,QItemSelectionModel::SelectionFlags

//[1]virtual void select(const QModelIndex &index, QItemSelectionModel::SelectionFlags command)
//[2]virtual void select(const QItemSelection &selection, QItemSelectionModel::SelectionFlags command)

HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECT )
{
  if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISNUM(2) )
  {
    QItemSelectionModel_select1();
  }
  else if( ISNUMPAR(2) && ISQITEMSELECTION(1) && ISNUM(2) )
  {
    QItemSelectionModel_select2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual void clear()
*/
$method=|void|clear|

/*
virtual void reset()
*/
$method=|void|reset|

/*
void clearSelection()
*/
$method=|void|clearSelection|

/*
virtual void clearCurrentIndex()
*/
$method=|void|clearCurrentIndex|

#pragma ENDDUMP
