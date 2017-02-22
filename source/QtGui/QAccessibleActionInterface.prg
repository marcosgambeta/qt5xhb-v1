/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QAccessibleActionInterface

   DATA pointer
   DATA class_id INIT Class_Id_QAccessibleActionInterface
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAccessibleActionInterface>
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
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAccessibleActionInterface>
#endif
#endif


HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
virtual QStringList actionNames() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_ACTIONNAMES )
{
  QAccessibleActionInterface * obj = (QAccessibleActionInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->actionNames (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
virtual QString localizedActionName(const QString &name) const
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_LOCALIZEDACTIONNAME )
{
  QAccessibleActionInterface * obj = (QAccessibleActionInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->localizedActionName ( par1 ).toLatin1().data() );
  }
}


/*
virtual QString localizedActionDescription(const QString &name) const
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_LOCALIZEDACTIONDESCRIPTION )
{
  QAccessibleActionInterface * obj = (QAccessibleActionInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->localizedActionDescription ( par1 ).toLatin1().data() );
  }
}


/*
virtual void doAction(const QString &actionName) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_DOACTION )
{
  QAccessibleActionInterface * obj = (QAccessibleActionInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->doAction ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QStringList keyBindingsForAction(const QString &actionName) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_KEYBINDINGSFORACTION )
{
  QAccessibleActionInterface * obj = (QAccessibleActionInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QStringList strl = obj->keyBindingsForAction ( par1 );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
static const QString &pressAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_PRESSACTION )
{
  QString str1 = QAccessibleActionInterface::pressAction (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
static const QString &increaseAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_INCREASEACTION )
{
  QString str1 = QAccessibleActionInterface::increaseAction (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
static const QString &decreaseAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_DECREASEACTION )
{
  QString str1 = QAccessibleActionInterface::decreaseAction (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
static const QString &showMenuAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_SHOWMENUACTION )
{
  QString str1 = QAccessibleActionInterface::showMenuAction (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
static const QString &setFocusAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_SETFOCUSACTION )
{
  QString str1 = QAccessibleActionInterface::setFocusAction (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
static const QString &toggleAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_TOGGLEACTION )
{
  QString str1 = QAccessibleActionInterface::toggleAction (  );
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
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QACCESSIBLEACTIONINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
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