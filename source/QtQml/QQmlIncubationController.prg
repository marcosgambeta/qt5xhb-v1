/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQMLENGINE
#endif

CLASS QQmlIncubationController

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD engine
   METHOD incubateFor
   METHOD incubateWhile
   METHOD incubatingObjectCount

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlIncubationController
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQmlIncubationController>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQmlIncubationController>
#endif

/*
QQmlIncubationController()
*/
HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_NEW )
{
  QQmlIncubationController * o = new QQmlIncubationController ();
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_DELETE )
{
  QQmlIncubationController * obj = (QQmlIncubationController *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QQmlEngine * engine() const
*/
HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_ENGINE )
{
  QQmlIncubationController * obj = (QQmlIncubationController *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlEngine * ptr = obj->engine ();
    _qt5xhb_createReturnClass ( ptr, "QQMLENGINE" );
  }
}


/*
void incubateFor(int msecs)
*/
HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_INCUBATEFOR )
{
  QQmlIncubationController * obj = (QQmlIncubationController *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->incubateFor ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void incubateWhile(volatile bool * flag, int msecs = 0)
*/
HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_INCUBATEWHILE )
{
  QQmlIncubationController * obj = (QQmlIncubationController *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    obj->incubateWhile ( &par1, (int) ISNIL(2)? 0 : hb_parni(2) );
    hb_storl( par1, 1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int incubatingObjectCount() const
*/
HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_INCUBATINGOBJECTCOUNT )
{
  QQmlIncubationController * obj = (QQmlIncubationController *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->incubatingObjectCount () );
  }
}



HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_NEWFROM )
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

HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QQMLINCUBATIONCONTROLLER_NEWFROM );
}

HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QQMLINCUBATIONCONTROLLER_NEWFROM );
}

HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_SETSELFDESTRUCTION )
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