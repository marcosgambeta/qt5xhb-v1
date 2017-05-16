/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QAccessibleActionInterface

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD actionNames
   METHOD localizedActionName
   METHOD localizedActionDescription
   METHOD doAction
   METHOD keyBindingsForAction
   METHOD pressAction
   METHOD increaseAction
   METHOD decreaseAction
   METHOD showMenuAction
   METHOD setFocusAction
   METHOD toggleAction

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleActionInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleActionInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleActionInterface>
#endif


HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_DELETE )
{
  QAccessibleActionInterface * obj = (QAccessibleActionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QStringList actionNames() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_ACTIONNAMES )
{
  QAccessibleActionInterface * obj = (QAccessibleActionInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->actionNames ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
virtual QString localizedActionName(const QString &name) const
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_LOCALIZEDACTIONNAME )
{
  QAccessibleActionInterface * obj = (QAccessibleActionInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->localizedActionName ( PQSTRING(1) ) ) );
  }
}


/*
virtual QString localizedActionDescription(const QString &name) const
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_LOCALIZEDACTIONDESCRIPTION )
{
  QAccessibleActionInterface * obj = (QAccessibleActionInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->localizedActionDescription ( PQSTRING(1) ) ) );
  }
}


/*
virtual void doAction(const QString &actionName) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_DOACTION )
{
  QAccessibleActionInterface * obj = (QAccessibleActionInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->doAction ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QStringList keyBindingsForAction(const QString &actionName) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_KEYBINDINGSFORACTION )
{
  QAccessibleActionInterface * obj = (QAccessibleActionInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->keyBindingsForAction ( PQSTRING(1) );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
static const QString &pressAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_PRESSACTION )
{
  QString str1 = QAccessibleActionInterface::pressAction ();
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
static const QString &increaseAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_INCREASEACTION )
{
  QString str1 = QAccessibleActionInterface::increaseAction ();
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
static const QString &decreaseAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_DECREASEACTION )
{
  QString str1 = QAccessibleActionInterface::decreaseAction ();
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
static const QString &showMenuAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_SHOWMENUACTION )
{
  QString str1 = QAccessibleActionInterface::showMenuAction ();
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
static const QString &setFocusAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_SETFOCUSACTION )
{
  QString str1 = QAccessibleActionInterface::setFocusAction ();
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
static const QString &toggleAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_TOGGLEACTION )
{
  QString str1 = QAccessibleActionInterface::toggleAction ();
  hb_retc( (const char *) str1.toLatin1().data() );
}



HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_NEWFROM )
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

HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QACCESSIBLEACTIONINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QACCESSIBLEACTIONINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_SETSELFDESTRUCTION )
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