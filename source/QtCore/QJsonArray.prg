/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QJSONVALUE
REQUEST QVARIANT
#endif

CLASS QJsonArray

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append
   METHOD at
   METHOD contains
   METHOD count
   METHOD empty
   METHOD first
   METHOD insert
   METHOD isEmpty
   METHOD last
   METHOD pop_back
   METHOD pop_front
   METHOD prepend
   METHOD push_back
   METHOD push_front
   METHOD removeAt
   METHOD removeFirst
   METHOD removeLast
   METHOD replace
   METHOD size
   METHOD takeAt
   METHOD toVariantList
   METHOD fromStringList
   METHOD fromVariantList

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QJsonArray
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QJsonArray>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QJsonArray>
#endif

#include <QVariantList>
#include <QStringList>

/*
QJsonArray()
*/
void QJsonArray_new1 ()
{
  QJsonArray * o = new QJsonArray ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJsonArray(const QJsonArray & other)
*/
void QJsonArray_new2 ()
{
  QJsonArray * o = new QJsonArray ( *PQJSONARRAY(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QJsonArray()
//[2]QJsonArray(const QJsonArray & other)

HB_FUNC_STATIC( QJSONARRAY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QJsonArray_new1();
  }
  else if( ISNUMPAR(1) && ISQJSONARRAY(1) )
  {
    QJsonArray_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QJSONARRAY_DELETE )
{
  QJsonArray * obj = (QJsonArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void append(const QJsonValue & value)
*/
HB_FUNC_STATIC( QJSONARRAY_APPEND )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQJSONVALUE(1) )
    {
      obj->append ( *PQJSONVALUE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QJsonValue at(int i) const
*/
HB_FUNC_STATIC( QJSONARRAY_AT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QJsonValue * ptr = new QJsonValue( obj->at ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool contains(const QJsonValue & value) const
*/
HB_FUNC_STATIC( QJSONARRAY_CONTAINS )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQJSONVALUE(1) )
    {
      RBOOL( obj->contains ( *PQJSONVALUE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int count() const
*/
HB_FUNC_STATIC( QJSONARRAY_COUNT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
bool empty() const
*/
HB_FUNC_STATIC( QJSONARRAY_EMPTY )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->empty () );
  }
}

/*
QJsonValue first() const
*/
HB_FUNC_STATIC( QJSONARRAY_FIRST )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QJsonValue * ptr = new QJsonValue( obj->first () );
    _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
  }
}

/*
void insert(int i, const QJsonValue & value)
*/
HB_FUNC_STATIC( QJSONARRAY_INSERT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQJSONVALUE(2) )
    {
      obj->insert ( PINT(1), *PQJSONVALUE(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QJSONARRAY_ISEMPTY )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
QJsonValue last() const
*/
HB_FUNC_STATIC( QJSONARRAY_LAST )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QJsonValue * ptr = new QJsonValue( obj->last () );
    _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
  }
}

/*
void pop_back()
*/
HB_FUNC_STATIC( QJSONARRAY_POP_BACK )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->pop_back ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void pop_front()
*/
HB_FUNC_STATIC( QJSONARRAY_POP_FRONT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->pop_front ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void prepend(const QJsonValue & value)
*/
HB_FUNC_STATIC( QJSONARRAY_PREPEND )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQJSONVALUE(1) )
    {
      obj->prepend ( *PQJSONVALUE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void push_back(const QJsonValue & value)
*/
HB_FUNC_STATIC( QJSONARRAY_PUSH_BACK )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQJSONVALUE(1) )
    {
      obj->push_back ( *PQJSONVALUE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void push_front(const QJsonValue & value)
*/
HB_FUNC_STATIC( QJSONARRAY_PUSH_FRONT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQJSONVALUE(1) )
    {
      obj->push_front ( *PQJSONVALUE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeAt(int i)
*/
HB_FUNC_STATIC( QJSONARRAY_REMOVEAT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->removeAt ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeFirst()
*/
HB_FUNC_STATIC( QJSONARRAY_REMOVEFIRST )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->removeFirst ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeLast()
*/
HB_FUNC_STATIC( QJSONARRAY_REMOVELAST )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->removeLast ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void replace(int i, const QJsonValue & value)
*/
HB_FUNC_STATIC( QJSONARRAY_REPLACE )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQJSONVALUE(2) )
    {
      obj->replace ( PINT(1), *PQJSONVALUE(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int size() const
*/
HB_FUNC_STATIC( QJSONARRAY_SIZE )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->size () );
  }
}

/*
QJsonValue takeAt(int i)
*/
HB_FUNC_STATIC( QJSONARRAY_TAKEAT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QJsonValue * ptr = new QJsonValue( obj->takeAt ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariantList toVariantList() const
*/
HB_FUNC_STATIC( QJSONARRAY_TOVARIANTLIST )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    _qt5xhb_convert_qvariantlist_to_array( obj->toVariantList () );
  }
}

/*
static QJsonArray fromStringList(const QStringList & list)
*/
HB_FUNC_STATIC( QJSONARRAY_FROMSTRINGLIST )
{
  if( ISARRAY(1) )
  {
    QJsonArray * ptr = new QJsonArray( QJsonArray::fromStringList ( PQSTRINGLIST(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QJsonArray fromVariantList(const QVariantList & list)
*/
HB_FUNC_STATIC( QJSONARRAY_FROMVARIANTLIST )
{
  if( ISARRAY(1) )
  {
    QJsonArray * ptr = new QJsonArray( QJsonArray::fromVariantList ( PQVARIANTLIST(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QJSONARRAY_NEWFROM )
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

HB_FUNC_STATIC( QJSONARRAY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QJSONARRAY_NEWFROM );
}

HB_FUNC_STATIC( QJSONARRAY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QJSONARRAY_NEWFROM );
}

HB_FUNC_STATIC( QJSONARRAY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QJSONARRAY_SETSELFDESTRUCTION )
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
