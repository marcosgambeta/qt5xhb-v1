/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTERPATH
#endif

CLASS QMouseEventTransition INHERIT QEventTransition

   DATA class_id INIT Class_Id_QMouseEventTransition
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD button
   METHOD hitTestPath
   METHOD modifierMask
   METHOD setButton
   METHOD setHitTestPath
   METHOD setModifierMask

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMouseEventTransition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMouseEventTransition>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMouseEventTransition>
#endif

#include <QPainterPath>

/*
QMouseEventTransition ( QState * sourceState = 0 )
*/
void QMouseEventTransition_new1 ()
{
  QState * par1 = ISNIL(1)? 0 : (QState *) _qt5xhb_itemGetPtr(1);
  QMouseEventTransition * o = new QMouseEventTransition ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMouseEventTransition ( QObject * object, QEvent::Type type, Qt::MouseButton button, QState * sourceState = 0 )
*/
void QMouseEventTransition_new2 ()
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QState * par4 = ISNIL(4)? 0 : (QState *) _qt5xhb_itemGetPtr(4);
  QMouseEventTransition * o = new QMouseEventTransition ( par1,  (QEvent::Type) par2,  (Qt::MouseButton) par3, par4 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QMouseEventTransition ( QState * sourceState = 0 )
//[2]QMouseEventTransition ( QObject * object, QEvent::Type type, Qt::MouseButton button, QState * sourceState = 0 )

HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QMouseEventTransition_new1();
  }
  else if( ISBETWEEN(3,4) && ISQOBJECT(1) && ISNUM(2) && ISNUM(3) && (ISQSTATE(4)||ISNIL(4)) )
  {
    QMouseEventTransition_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_DELETE )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::MouseButton button () const
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_BUTTON )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->button (  ) );
  }
}

/*
QPainterPath hitTestPath () const
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_HITTESTPATH )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->hitTestPath (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
Qt::KeyboardModifiers modifierMask () const
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_MODIFIERMASK )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->modifierMask (  ) );
  }
}

/*
void setButton ( Qt::MouseButton button )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_SETBUTTON )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setButton (  (Qt::MouseButton) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHitTestPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_SETHITTESTPATH )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTERPATH(1) )
    {
      QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
      obj->setHitTestPath ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setModifierMask ( Qt::KeyboardModifiers modifierMask )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_SETMODIFIERMASK )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setModifierMask (  (Qt::KeyboardModifiers) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
