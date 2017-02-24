/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QKeyEventTransition INHERIT QEventTransition

   DATA class_id INIT Class_Id_QKeyEventTransition
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD key
   METHOD modifierMask
   METHOD setKey
   METHOD setModifierMask
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QKeyEventTransition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QKeyEventTransition>
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
#include <QKeyEventTransition>
#endif
#endif

/*
QKeyEventTransition ( QState * sourceState = 0 )
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QState * par1 = ISNIL(1)? 0 : (QState *) _qtxhb_itemGetPtr(1);
  QKeyEventTransition * o = new QKeyEventTransition ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QKeyEventTransition *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QKeyEventTransition ( QObject * object, QEvent::Type type, int key, QState * sourceState = 0 )
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QState * par4 = ISNIL(4)? 0 : (QState *) _qtxhb_itemGetPtr(4);
  QKeyEventTransition * o = new QKeyEventTransition ( par1,  (QEvent::Type) par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QKeyEventTransition *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QKeyEventTransition ( QState * sourceState = 0 )
//[2]QKeyEventTransition ( QObject * object, QEvent::Type type, int key, QState * sourceState = 0 )

HB_FUNC_STATIC( QKEYEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QKEYEVENTTRANSITION_NEW1 );
  }
  else if( ISBETWEEN(3,4) && ISQOBJECT(1) && ISNUM(2) && ISNUM(3) && (ISQSTATE(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QKEYEVENTTRANSITION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QKEYEVENTTRANSITION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QKeyEventTransition * obj = (QKeyEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int key () const
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_KEY )
{
  QKeyEventTransition * obj = (QKeyEventTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->key (  ) );
  }
}


/*
Qt::KeyboardModifiers modifierMask () const
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_MODIFIERMASK )
{
  QKeyEventTransition * obj = (QKeyEventTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->modifierMask (  ) );
  }
}


/*
void setKey ( int key )
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_SETKEY )
{
  QKeyEventTransition * obj = (QKeyEventTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setKey ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setModifierMask ( Qt::KeyboardModifiers modifierMask )
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_SETMODIFIERMASK )
{
  QKeyEventTransition * obj = (QKeyEventTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setModifierMask (  (Qt::KeyboardModifiers) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
