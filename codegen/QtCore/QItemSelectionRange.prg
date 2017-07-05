$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPERSISTENTMODELINDEX
REQUEST QMODELINDEX
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QItemSelectionRange

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD top
   METHOD left
   METHOD bottom
   METHOD right
   METHOD width
   METHOD height
   METHOD topLeft
   METHOD bottomRight
   METHOD parent
   METHOD model
   METHOD contains
   METHOD intersects
   METHOD intersected
   METHOD isValid
   METHOD isEmpty
   METHOD indexes

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QItemSelectionRange()
*/
void QItemSelectionRange_new1 ()
{
  QItemSelectionRange * o = new QItemSelectionRange ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QItemSelectionRange(const QItemSelectionRange &other)
*/
void QItemSelectionRange_new2 ()
{
  QItemSelectionRange * o = new QItemSelectionRange ( *PQITEMSELECTIONRANGE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QItemSelectionRange(const QModelIndex &topLeft, const QModelIndex &bottomRight)
*/
void QItemSelectionRange_new3 ()
{
  QItemSelectionRange * o = new QItemSelectionRange ( *PQMODELINDEX(1), *PQMODELINDEX(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QItemSelectionRange(const QModelIndex &index)
*/
void QItemSelectionRange_new4 ()
{
  QItemSelectionRange * o = new QItemSelectionRange ( *PQMODELINDEX(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QItemSelectionRange()
//[2]QItemSelectionRange(const QItemSelectionRange &other)
//[3]QItemSelectionRange(const QModelIndex &topLeft, const QModelIndex &bottomRight)
//[4]QItemSelectionRange(const QModelIndex &index)

HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QItemSelectionRange_new1();
  }
  else if( ISNUMPAR(1) && ISQITEMSELECTIONRANGE(1) )
  {
    QItemSelectionRange_new2();
  }
  else if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISQMODELINDEX(2) )
  {
    QItemSelectionRange_new3();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QItemSelectionRange_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int top() const
*/
$method=|int|top|

/*
int left() const
*/
$method=|int|left|

/*
int bottom() const
*/
$method=|int|bottom|

/*
int right() const
*/
$method=|int|right|

/*
int width() const
*/
$method=|int|width|

/*
int height() const
*/
$method=|int|height|

/*
const QPersistentModelIndex &topLeft() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_TOPLEFT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QPersistentModelIndex * ptr = &obj->topLeft ();
    _qt5xhb_createReturnClass ( ptr, "QPERSISTENTMODELINDEX" );
  }
}

/*
const QPersistentModelIndex &bottomRight() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_BOTTOMRIGHT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QPersistentModelIndex * ptr = &obj->bottomRight ();
    _qt5xhb_createReturnClass ( ptr, "QPERSISTENTMODELINDEX" );
  }
}

/*
QModelIndex parent() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_PARENT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->parent () );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
const QAbstractItemModel *model() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_MODEL )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QAbstractItemModel * ptr = obj->model ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}

/*
bool contains(const QModelIndex &index) const
*/
$internalMethod=|bool|contains,contains1|const QModelIndex &

/*
bool contains(int row, int column, const QModelIndex &parentIndex) const
*/
$internalMethod=|bool|contains,contains2|int,int,const QModelIndex &

//[1]bool contains(const QModelIndex &index) const
//[2]bool contains(int row, int column, const QModelIndex &parentIndex) const

HB_FUNC_STATIC( QITEMSELECTIONRANGE_CONTAINS )
{
  if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QItemSelectionRange_contains1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQMODELINDEX(3) )
  {
    QItemSelectionRange_contains2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool intersects(const QItemSelectionRange &other) const
*/
$method=|bool|intersects|const QItemSelectionRange &

/*
QItemSelectionRange intersected(const QItemSelectionRange &other) const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_INTERSECTED )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQITEMSELECTIONRANGE(1) )
    {
      QItemSelectionRange * ptr = new QItemSelectionRange( obj->intersected ( *PQITEMSELECTIONRANGE(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QITEMSELECTIONRANGE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
QModelIndexList indexes() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_INDEXES )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QModelIndexList list = obj->indexes ();
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

$extraMethods

#pragma ENDDUMP
