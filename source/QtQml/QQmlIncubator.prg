/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QQmlIncubator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD forceCompletion
   METHOD incubationMode
   METHOD isError
   METHOD isLoading
   METHOD isNull
   METHOD isReady
   METHOD object
   METHOD status

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlIncubator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQmlIncubator>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQmlIncubator>
#endif

/*
QQmlIncubator(IncubationMode mode = Asynchronous)
*/
HB_FUNC_STATIC( QQMLINCUBATOR_NEW )
{
  int par1 = ISNIL(1)? (int) QQmlIncubator::Asynchronous : hb_parni(1);
  QQmlIncubator * o = new QQmlIncubator ( (QQmlIncubator::IncubationMode) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QQMLINCUBATOR_DELETE )
{
  QQmlIncubator * obj = (QQmlIncubator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clear()
*/
HB_FUNC_STATIC( QQMLINCUBATOR_CLEAR )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void forceCompletion()
*/
HB_FUNC_STATIC( QQMLINCUBATOR_FORCECOMPLETION )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->forceCompletion ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
IncubationMode incubationMode() const
*/
HB_FUNC_STATIC( QQMLINCUBATOR_INCUBATIONMODE )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->incubationMode () );
  }
}


/*
bool isError() const
*/
HB_FUNC_STATIC( QQMLINCUBATOR_ISERROR )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isError () );
  }
}


/*
bool isLoading() const
*/
HB_FUNC_STATIC( QQMLINCUBATOR_ISLOADING )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isLoading () );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QQMLINCUBATOR_ISNULL )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
bool isReady() const
*/
HB_FUNC_STATIC( QQMLINCUBATOR_ISREADY )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isReady () );
  }
}


/*
QObject * object() const
*/
HB_FUNC_STATIC( QQMLINCUBATOR_OBJECT )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->object ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
Status status() const
*/
HB_FUNC_STATIC( QQMLINCUBATOR_STATUS )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status () );
  }
}



HB_FUNC_STATIC( QQMLINCUBATOR_NEWFROM )
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

HB_FUNC_STATIC( QQMLINCUBATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QQMLINCUBATOR_NEWFROM );
}

HB_FUNC_STATIC( QQMLINCUBATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QQMLINCUBATOR_NEWFROM );
}

HB_FUNC_STATIC( QQMLINCUBATOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QQMLINCUBATOR_SETSELFDESTRUCTION )
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