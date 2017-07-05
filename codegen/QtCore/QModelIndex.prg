$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QUINTPTR
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QModelIndex

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD child
   METHOD column
   METHOD data
   METHOD flags
   METHOD internalId
   METHOD internalPointer
   METHOD isValid
   METHOD model
   METHOD parent
   METHOD row
   METHOD sibling

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
QModelIndex ()
*/
void QModelIndex_new1 ()
{
  QModelIndex * o = new QModelIndex ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QModelIndex ( const QModelIndex & other )
*/
void QModelIndex_new2 ()
{
  QModelIndex * o = new QModelIndex ( *PQMODELINDEX(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QModelIndex ()
//[2]QModelIndex ( const QModelIndex & other )

HB_FUNC_STATIC( QMODELINDEX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QModelIndex_new1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QModelIndex_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QModelIndex child(int row, int column) const
*/
HB_FUNC_STATIC( QMODELINDEX_CHILD )
{
  QModelIndex * obj = (QModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

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
int column() const
*/
$method=|int|column|

/*
QVariant data(int role = Qt::DisplayRole) const
*/
HB_FUNC_STATIC( QMODELINDEX_DATA )
{
  QModelIndex * obj = (QModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

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
$method=|Qt::ItemFlags|flags|

/*
quintptr internalId() const
*/
HB_FUNC_STATIC( QMODELINDEX_INTERNALID )
{
  QModelIndex * obj = (QModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    quintptr * ptr = new quintptr( obj->internalId () );
    _qt5xhb_createReturnClass ( ptr, "QUINTPTR" );
  }
}

/*
void * internalPointer() const
*/
HB_FUNC_STATIC( QMODELINDEX_INTERNALPOINTER )
{
  QModelIndex * obj = (QModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retptr( (void *) obj->internalPointer () );
  }
}

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
const QAbstractItemModel * model() const
*/
HB_FUNC_STATIC( QMODELINDEX_MODEL )
{
  QModelIndex * obj = (QModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QAbstractItemModel * ptr = obj->model ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}

/*
QModelIndex parent() const
*/
HB_FUNC_STATIC( QMODELINDEX_PARENT )
{
  QModelIndex * obj = (QModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->parent () );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
int row() const
*/
$method=|int|row|

/*
QModelIndex sibling(int row, int column) const
*/
HB_FUNC_STATIC( QMODELINDEX_SIBLING )
{
  QModelIndex * obj = (QModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

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

$extraMethods

#pragma ENDDUMP
