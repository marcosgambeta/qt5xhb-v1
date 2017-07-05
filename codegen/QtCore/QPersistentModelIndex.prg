$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QUINTPTR
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QPersistentModelIndex

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD row
   METHOD column
   METHOD internalPointer
   METHOD internalId
   METHOD parent
   METHOD sibling
   METHOD child
   METHOD data
   METHOD flags
   METHOD model
   METHOD isValid

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
QPersistentModelIndex()
*/
void QPersistentModelIndex_new1 ()
{
  QPersistentModelIndex * o = new QPersistentModelIndex ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QPersistentModelIndex(const QModelIndex &index)
*/
void QPersistentModelIndex_new2 ()
{
  QPersistentModelIndex * o = new QPersistentModelIndex ( *PQMODELINDEX(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QPersistentModelIndex(const QPersistentModelIndex &other)
*/
void QPersistentModelIndex_new3 ()
{
  QPersistentModelIndex * o = new QPersistentModelIndex ( *PQPERSISTENTMODELINDEX(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QPersistentModelIndex()
//[2]QPersistentModelIndex(const QModelIndex &index)
//[3]QPersistentModelIndex(const QPersistentModelIndex &other)

HB_FUNC_STATIC( QPERSISTENTMODELINDEX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPersistentModelIndex_new1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QPersistentModelIndex_new2();
  }
  else if( ISNUMPAR(1) && ISQPERSISTENTMODELINDEX(1) )
  {
    QPersistentModelIndex_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QPersistentModelIndex &other)
*/
HB_FUNC_STATIC( QPERSISTENTMODELINDEX_SWAP )
{
  QPersistentModelIndex * obj = (QPersistentModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPERSISTENTMODELINDEX(1) )
    {
      QPersistentModelIndex * par1 = (QPersistentModelIndex *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
     hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int row() const
*/
$method=|int|row|

/*
int column() const
*/
$method=|int|column|

/*
void *internalPointer() const
*/
HB_FUNC_STATIC( QPERSISTENTMODELINDEX_INTERNALPOINTER )
{
  QPersistentModelIndex * obj = (QPersistentModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retptr( (void *) obj->internalPointer () );
  }
}

/*
quintptr internalId() const
*/
HB_FUNC_STATIC( QPERSISTENTMODELINDEX_INTERNALID )
{
  QPersistentModelIndex * obj = (QPersistentModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    quintptr * ptr = new quintptr( obj->internalId () );
    _qt5xhb_createReturnClass ( ptr, "QUINTPTR" );
  }
}

/*
QModelIndex parent() const
*/
HB_FUNC_STATIC( QPERSISTENTMODELINDEX_PARENT )
{
  QPersistentModelIndex * obj = (QPersistentModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->parent () );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
QModelIndex sibling(int row, int column) const
*/
HB_FUNC_STATIC( QPERSISTENTMODELINDEX_SIBLING )
{
  QPersistentModelIndex * obj = (QPersistentModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QModelIndex * ptr = new QModelIndex( obj->sibling ( PINT(1), PINT(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
     hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QModelIndex child(int row, int column) const
*/
HB_FUNC_STATIC( QPERSISTENTMODELINDEX_CHILD )
{
  QPersistentModelIndex * obj = (QPersistentModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QModelIndex * ptr = new QModelIndex( obj->child ( PINT(1), PINT(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
     hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariant data(int role = Qt::DisplayRole) const
*/
HB_FUNC_STATIC( QPERSISTENTMODELINDEX_DATA )
{
  QPersistentModelIndex * obj = (QPersistentModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->data ( OPINT(1,Qt::DisplayRole) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
     hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::ItemFlags flags() const
*/
HB_FUNC_STATIC( QPERSISTENTMODELINDEX_FLAGS )
{
  QPersistentModelIndex * obj = (QPersistentModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->flags () );
  }
}

/*
const QAbstractItemModel *model() const
*/
HB_FUNC_STATIC( QPERSISTENTMODELINDEX_MODEL )
{
  QPersistentModelIndex * obj = (QPersistentModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QAbstractItemModel * ptr = obj->model ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}

/*
bool isValid() const
*/
$method=|bool|isValid|

$extraMethods

#pragma ENDDUMP
