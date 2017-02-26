/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPERSISTENTMODELINDEX
REQUEST QMODELINDEX
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QItemSelectionRange

   DATA pointer
   DATA class_id INIT Class_Id_QItemSelectionRange
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
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
   METHOD contains1
   METHOD contains2
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QItemSelectionRange>
#endif
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

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QItemSelectionRange>
#endif
#endif

/*
QItemSelectionRange()
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QItemSelectionRange * o = new QItemSelectionRange (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QItemSelectionRange *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QItemSelectionRange(const QItemSelectionRange &other)
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QItemSelectionRange * par1 = (QItemSelectionRange *) _qtxhb_itemGetPtr(1);
  QItemSelectionRange * o = new QItemSelectionRange ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QItemSelectionRange *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QItemSelectionRange(const QModelIndex &topLeft, const QModelIndex &bottomRight)
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
  QModelIndex * par2 = (QModelIndex *) _qtxhb_itemGetPtr(2);
  QItemSelectionRange * o = new QItemSelectionRange ( *par1, *par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QItemSelectionRange *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QItemSelectionRange(const QModelIndex &index)
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
  QItemSelectionRange * o = new QItemSelectionRange ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QItemSelectionRange *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QItemSelectionRange()
//[2]QItemSelectionRange(const QItemSelectionRange &other)
//[3]QItemSelectionRange(const QModelIndex &topLeft, const QModelIndex &bottomRight)
//[4]QItemSelectionRange(const QModelIndex &index)

HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONRANGE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQITEMSELECTIONRANGE(1) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONRANGE_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISQMODELINDEX(2) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONRANGE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONRANGE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QITEMSELECTIONRANGE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
int top() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_TOP )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->top (  ) );
  }
}


/*
int left() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_LEFT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->left (  ) );
  }
}


/*
int bottom() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_BOTTOM )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bottom (  ) );
  }
}


/*
int right() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_RIGHT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->right (  ) );
  }
}


/*
int width() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_WIDTH )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->width (  ) );
  }
}


/*
int height() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_HEIGHT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->height (  ) );
  }
}


/*
const QPersistentModelIndex &topLeft() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_TOPLEFT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPersistentModelIndex * ptr = &obj->topLeft (  );
    _qt4xhb_createReturnClass ( ptr, "QPERSISTENTMODELINDEX" );
  }
}


/*
const QPersistentModelIndex &bottomRight() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_BOTTOMRIGHT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPersistentModelIndex * ptr = &obj->bottomRight (  );
    _qt4xhb_createReturnClass ( ptr, "QPERSISTENTMODELINDEX" );
  }
}


/*
QModelIndex parent() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_PARENT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->parent (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
const QAbstractItemModel *model() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_MODEL )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QAbstractItemModel * ptr = obj->model (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}


/*
bool contains(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_CONTAINS1 )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->contains ( *par1 ) );
  }
}


/*
bool contains(int row, int column, const QModelIndex &parentIndex) const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_CONTAINS2 )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par3 = (QModelIndex *) _qtxhb_itemGetPtr(3);
    hb_retl( obj->contains ( (int) hb_parni(1), (int) hb_parni(2), *par3 ) );
  }
}


//[1]bool contains(const QModelIndex &index) const
//[2]bool contains(int row, int column, const QModelIndex &parentIndex) const

HB_FUNC_STATIC( QITEMSELECTIONRANGE_CONTAINS )
{
  if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONRANGE_CONTAINS1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQMODELINDEX(3) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONRANGE_CONTAINS2 );
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
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QItemSelectionRange * par1 = (QItemSelectionRange *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->intersects ( *par1 ) );
  }
}


/*
QItemSelectionRange intersected(const QItemSelectionRange &other) const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_INTERSECTED )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QItemSelectionRange * par1 = (QItemSelectionRange *) _qtxhb_itemGetPtr(1);
    QItemSelectionRange * ptr = new QItemSelectionRange( obj->intersected ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QITEMSELECTIONRANGE" );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_ISVALID )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_ISEMPTY )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
QModelIndexList indexes() const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_INDEXES )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndexList list = obj->indexes (  );
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
