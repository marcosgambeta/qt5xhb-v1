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
void QItemSelectionModel_new1 ()
{
  QItemSelectionModel * o = new QItemSelectionModel ( PQABSTRACTITEMMODEL(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QItemSelectionModel(QAbstractItemModel *model, QObject *parent)
*/
void QItemSelectionModel_new2 ()
{
  QItemSelectionModel * o = new QItemSelectionModel ( PQABSTRACTITEMMODEL(1), PQOBJECT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
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

$deleteMethod

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
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTEDINDEXES )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QModelIndexList list = obj->selectedIndexes ();
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
    if( ISOPTNUM(1) )
    {
      QModelIndexList list = obj->selectedRows ( OPINT(1,0) );
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
$method=|void|setCurrentIndex|const QModelIndex &,QItemSelectionModel::SelectionFlags

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
