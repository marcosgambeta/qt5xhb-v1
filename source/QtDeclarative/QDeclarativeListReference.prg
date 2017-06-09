/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QDeclarativeListReference

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD append
   METHOD at
   METHOD canAppend
   METHOD canAt
   METHOD canClear
   METHOD canCount
   METHOD clear
   METHOD count
   METHOD isValid
   METHOD object

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeListReference
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDeclarativeListReference>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDeclarativeListReference>
#endif

/*
QDeclarativeListReference ()
*/
void QDeclarativeListReference_new1 ()
{
  QDeclarativeListReference * o = new QDeclarativeListReference ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )
*/
void QDeclarativeListReference_new2 ()
{
  QDeclarativeEngine * par3 = ISNIL(3)? 0 : (QDeclarativeEngine *) _qt5xhb_itemGetPtr(3);
  QDeclarativeListReference * o = new QDeclarativeListReference ( PQOBJECT(1), PCONSTCHAR(2), par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QDeclarativeListReference ()
//[2]QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeListReference_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQDECLARATIVEENGINE(3)||ISNIL(3)) )
  {
    QDeclarativeListReference_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool append ( QObject * object ) const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_APPEND )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) )
    {
      hb_retl( obj->append ( PQOBJECT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QObject * at ( int index ) const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_AT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QObject * ptr = obj->at ( PINT(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool canAppend () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANAPPEND )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->canAppend () );
  }
}

/*
bool canAt () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANAT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->canAt () );
  }
}

/*
bool canClear () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANCLEAR )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->canClear () );
  }
}

/*
bool canCount () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANCOUNT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->canCount () );
  }
}

/*
bool clear () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CLEAR )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->clear () );
  }
}

/*
int count () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_COUNT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->count () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_ISVALID )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isValid () );
  }
}

/*
QObject * object () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_OBJECT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * ptr = obj->object ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEWFROM )
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

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDECLARATIVELISTREFERENCE_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDECLARATIVELISTREFERENCE_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_SETSELFDESTRUCTION )
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
