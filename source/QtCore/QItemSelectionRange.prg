/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QItemSelectionRange
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QItemSelectionRange>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QItemSelectionRange>
#endif

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

HB_FUNC_STATIC( QITEMSELECTIONRANGE_DELETE )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int top() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_TOP )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->top () );
  }
}

/*
int left() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_LEFT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->left () );
  }
}

/*
int bottom() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_BOTTOM )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->bottom () );
  }
}

/*
int right() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_RIGHT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->right () );
  }
}

/*
int width() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_WIDTH )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->width () );
  }
}

/*
int height() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_HEIGHT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->height () );
  }
}

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
void QItemSelectionRange_contains1 ()
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains ( *PQMODELINDEX(1) ) );
  }
}

/*
bool contains(int row, int column, const QModelIndex &parentIndex) const
*/
void QItemSelectionRange_contains2 ()
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains ( PINT(1), PINT(2), *PQMODELINDEX(3) ) );
  }
}

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
HB_FUNC_STATIC( QITEMSELECTIONRANGE_INTERSECTS )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQITEMSELECTIONRANGE(1) )
    {
      RBOOL( obj->intersects ( *PQITEMSELECTIONRANGE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

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
HB_FUNC_STATIC( QITEMSELECTIONRANGE_ISVALID )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_ISEMPTY )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
QModelIndexList indexes() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_INDEXES )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QModelIndexList list = obj->indexes ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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

HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEWFROM )
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

HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QITEMSELECTIONRANGE_NEWFROM );
}

HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QITEMSELECTIONRANGE_NEWFROM );
}

HB_FUNC_STATIC( QITEMSELECTIONRANGE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QITEMSELECTIONRANGE_SETSELFDESTRUCTION )
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
