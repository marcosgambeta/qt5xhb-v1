/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QItemSelectionModel INHERIT QObject

   DATA class_id INIT Class_Id_QItemSelectionModel
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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
   METHOD select1
   METHOD select2
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

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QItemSelectionModel>
#endif

/*
QItemSelectionModel(QAbstractItemModel *model)
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_NEW1 )
{
  QAbstractItemModel * par1 = (QAbstractItemModel *) _qt5xhb_itemGetPtr(1);
  QItemSelectionModel * o = new QItemSelectionModel ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QItemSelectionModel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QItemSelectionModel(QAbstractItemModel *model, QObject *parent)
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_NEW2 )
{
  QAbstractItemModel * par1 = (QAbstractItemModel *) _qt5xhb_itemGetPtr(1);
  QObject * par2 = (QObject *) _qt5xhb_itemGetPtr(2);
  QItemSelectionModel * o = new QItemSelectionModel ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QItemSelectionModel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QItemSelectionModel(QAbstractItemModel *model)
//[2]QItemSelectionModel(QAbstractItemModel *model, QObject *parent)

HB_FUNC_STATIC( QITEMSELECTIONMODEL_NEW )
{
  if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONMODEL_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQABSTRACTITEMMODEL(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONMODEL_NEW2 );
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
    QModelIndex * ptr = new QModelIndex( obj->currentIndex (  ) );
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
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->isSelected ( *par1 ) );
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
    QModelIndex * par2 = (QModelIndex *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->isRowSelected ( (int) hb_parni(1), *par2 ) );
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
    QModelIndex * par2 = (QModelIndex *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->isColumnSelected ( (int) hb_parni(1), *par2 ) );
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
    QModelIndex * par2 = (QModelIndex *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->rowIntersectsSelection ( (int) hb_parni(1), *par2 ) );
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
    QModelIndex * par2 = (QModelIndex *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->columnIntersectsSelection ( (int) hb_parni(1), *par2 ) );
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
    hb_retl( obj->hasSelection (  ) );
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
    QModelIndexList list = obj->selectedIndexes (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMODELINDEX" );
    #else
    pDynSym = hb_dynsymFindName( "QMODELINDEX" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
    QModelIndexList list = obj->selectedRows ( (int) ISNIL(1)? 0 : hb_parni(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMODELINDEX" );
    #else
    pDynSym = hb_dynsymFindName( "QMODELINDEX" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
QModelIndexList selectedColumns(int row = 0) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTEDCOLUMNS )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndexList list = obj->selectedColumns ( (int) ISNIL(1)? 0 : hb_parni(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMODELINDEX" );
    #else
    pDynSym = hb_dynsymFindName( "QMODELINDEX" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
const QItemSelection selection() const
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
    const QAbstractItemModel * ptr = obj->model (  );
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
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->setCurrentIndex ( *par1,  (QItemSelectionModel::SelectionFlags) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void select(const QModelIndex &index, QItemSelectionModel::SelectionFlags command)
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECT1 )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->select ( *par1,  (QItemSelectionModel::SelectionFlags) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void select(const QItemSelection &selection, QItemSelectionModel::SelectionFlags command)
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECT2 )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QItemSelection * par1 = (QItemSelection *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->select ( *par1,  (QItemSelectionModel::SelectionFlags) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]virtual void select(const QModelIndex &index, QItemSelectionModel::SelectionFlags command)
//[2]virtual void select(const QItemSelection &selection, QItemSelectionModel::SelectionFlags command)

HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECT )
{
  if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONMODEL_SELECT1 );
  }
  else if( ISNUMPAR(2) && ISQITEMSELECTION(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONMODEL_SELECT2 );
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
    obj->clear (  );
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
    obj->reset (  );
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
    obj->clearSelection (  );
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
    obj->clearCurrentIndex (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
