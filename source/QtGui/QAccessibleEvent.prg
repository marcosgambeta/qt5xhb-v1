/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleEvent

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD object
   METHOD setChild
   METHOD child
   METHOD accessibleInterface

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleEvent>
#endif

/*
QAccessibleEvent(QObject *obj, QAccessible::Event typ)
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_NEW )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QAccessibleEvent * o = new QAccessibleEvent ( par1,  (QAccessible::Event) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QACCESSIBLEEVENT_DELETE )
{
  QAccessibleEvent * obj = (QAccessibleEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QAccessible::Event type() const
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_TYPE )
{
  QAccessibleEvent * obj = (QAccessibleEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}


/*
QObject *object() const
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_OBJECT )
{
  QAccessibleEvent * obj = (QAccessibleEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->object ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
void setChild(int chld)
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_SETCHILD )
{
  QAccessibleEvent * obj = (QAccessibleEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setChild ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int child() const
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_CHILD )
{
  QAccessibleEvent * obj = (QAccessibleEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->child () );
  }
}


/*
virtual QAccessibleInterface *accessibleInterface() const
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_ACCESSIBLEINTERFACE )
{
  QAccessibleEvent * obj = (QAccessibleEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->accessibleInterface ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}



HB_FUNC_STATIC( QACCESSIBLEEVENT_NEWFROM )
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

HB_FUNC_STATIC( QACCESSIBLEEVENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QACCESSIBLEEVENT_NEWFROM );
}

HB_FUNC_STATIC( QACCESSIBLEEVENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QACCESSIBLEEVENT_NEWFROM );
}

HB_FUNC_STATIC( QACCESSIBLEEVENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QACCESSIBLEEVENT_SETSELFDESTRUCTION )
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