$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTERPATH
#endif

CLASS QMouseEventTransition INHERIT QEventTransition

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

$destructor

#pragma BEGINDUMP

$includes

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
  QState * par4 = ISNIL(4)? 0 : (QState *) _qt5xhb_itemGetPtr(4);
  QMouseEventTransition * o = new QMouseEventTransition ( PQOBJECT(1), (QEvent::Type) hb_parni(2), (Qt::MouseButton) hb_parni(3), par4 );
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

$deleteMethod

/*
Qt::MouseButton button () const
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_BUTTON )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->button () );
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
    QPainterPath * ptr = new QPainterPath( obj->hitTestPath () );
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
    hb_retni( obj->modifierMask () );
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
      obj->setButton ( (Qt::MouseButton) hb_parni(1) );
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
      obj->setHitTestPath ( *PQPAINTERPATH(1) );
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
      obj->setModifierMask ( (Qt::KeyboardModifiers) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
