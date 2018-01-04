/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QItemSelectionModel INHERIT QObject

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

PROCEDURE destroyObject () CLASS QItemSelectionModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QItemSelectionModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QItemSelectionModel>
#endif

/*
QItemSelectionModel(QAbstractItemModel *model)
*/
void QItemSelectionModel_new1 ()
{
  QItemSelectionModel * o = new QItemSelectionModel ( PQABSTRACTITEMMODEL(1) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QItemSelectionModel(QAbstractItemModel *model, QObject *parent)
*/
void QItemSelectionModel_new2 ()
{
  QItemSelectionModel * o = new QItemSelectionModel ( PQABSTRACTITEMMODEL(1), PQOBJECT(2) );
  _qt5xhb_returnNewObject( o, false );
}

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

HB_FUNC_STATIC( QITEMSELECTIONMODEL_DELETE )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QModelIndex currentIndex() const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_CURRENTINDEX )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->currentIndex () );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
bool isSelected(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ISSELECTED )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      RBOOL( obj->isSelected ( *PQMODELINDEX(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isRowSelected(int row, const QModelIndex &parent) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ISROWSELECTED )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQMODELINDEX(2) )
    {
      RBOOL( obj->isRowSelected ( PINT(1), *PQMODELINDEX(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isColumnSelected(int column, const QModelIndex &parent) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ISCOLUMNSELECTED )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQMODELINDEX(2) )
    {
      RBOOL( obj->isColumnSelected ( PINT(1), *PQMODELINDEX(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool rowIntersectsSelection(int row, const QModelIndex &parent) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ROWINTERSECTSSELECTION )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQMODELINDEX(2) )
    {
      RBOOL( obj->rowIntersectsSelection ( PINT(1), *PQMODELINDEX(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool columnIntersectsSelection(int column, const QModelIndex &parent) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_COLUMNINTERSECTSSELECTION )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQMODELINDEX(2) )
    {
      RBOOL( obj->columnIntersectsSelection ( PINT(1), *PQMODELINDEX(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasSelection() const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_HASSELECTION )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasSelection () );
  }
}

/*
QModelIndexList selectedIndexes() const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTEDINDEXES )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QModelIndexList list = obj->selectedIndexes ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QModelIndexList selectedRows(int column = 0) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTEDROWS )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      QModelIndexList list = obj->selectedRows ( OPINT(1,0) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
          hb_itemRelease( pItem );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QModelIndexList selectedColumns(int row = 0) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTEDCOLUMNS )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      QModelIndexList list = obj->selectedColumns ( OPINT(1,0) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
          hb_itemRelease( pItem );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
const QItemSelection selection() const // TODO: implementar
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTION )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
  }
}

/*
const QAbstractItemModel *model() const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_MODEL )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QAbstractItemModel * ptr = obj->model ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}

/*
virtual void setCurrentIndex(const QModelIndex &index, QItemSelectionModel::SelectionFlags command)
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SETCURRENTINDEX )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) && ISNUM(2) )
    {
      int par2 = hb_parni(2);
      obj->setCurrentIndex ( *PQMODELINDEX(1), (QItemSelectionModel::SelectionFlags) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void select(const QModelIndex &index, QItemSelectionModel::SelectionFlags command)
*/
void QItemSelectionModel_select1 ()
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = hb_parni(2);
    obj->select ( *PQMODELINDEX(1), (QItemSelectionModel::SelectionFlags) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void select(const QItemSelection &selection, QItemSelectionModel::SelectionFlags command)
*/
void QItemSelectionModel_select2 ()
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = hb_parni(2);
    obj->select ( *PQITEMSELECTION(1), (QItemSelectionModel::SelectionFlags) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QITEMSELECTIONMODEL_CLEAR )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void reset()
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_RESET )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->reset ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clearSelection()
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_CLEARSELECTION )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clearSelection ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void clearCurrentIndex()
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_CLEARCURRENTINDEX )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clearCurrentIndex ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
