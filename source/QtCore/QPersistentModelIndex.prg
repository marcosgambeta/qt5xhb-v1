/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QUINTPTR
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QPersistentModelIndex

   DATA pointer
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QPersistentModelIndex
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPersistentModelIndex>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPersistentModelIndex>
#endif

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
  QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
  QPersistentModelIndex * o = new QPersistentModelIndex ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QPersistentModelIndex(const QPersistentModelIndex &other)
*/
void QPersistentModelIndex_new3 ()
{
  QPersistentModelIndex * par1 = (QPersistentModelIndex *) _qt5xhb_itemGetPtr(1);
  QPersistentModelIndex * o = new QPersistentModelIndex ( *par1 );
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

HB_FUNC_STATIC( QPERSISTENTMODELINDEX_DELETE )
{
  QPersistentModelIndex * obj = (QPersistentModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
HB_FUNC_STATIC( QPERSISTENTMODELINDEX_ROW )
{
  QPersistentModelIndex * obj = (QPersistentModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->row () );
  }
}

/*
int column() const
*/
HB_FUNC_STATIC( QPERSISTENTMODELINDEX_COLUMN )
{
  QPersistentModelIndex * obj = (QPersistentModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->column () );
  }
}

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
      QVariant * ptr = new QVariant( obj->data ( (int) ISNIL(1)? Qt::DisplayRole : hb_parni(1) ) );
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
HB_FUNC_STATIC( QPERSISTENTMODELINDEX_ISVALID )
{
  QPersistentModelIndex * obj = (QPersistentModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isValid () );
  }
}

HB_FUNC_STATIC( QPERSISTENTMODELINDEX_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QPERSISTENTMODELINDEX_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPERSISTENTMODELINDEX_NEWFROM );
}

HB_FUNC_STATIC( QPERSISTENTMODELINDEX_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPERSISTENTMODELINDEX_NEWFROM );
}

HB_FUNC_STATIC( QPERSISTENTMODELINDEX_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPERSISTENTMODELINDEX_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
