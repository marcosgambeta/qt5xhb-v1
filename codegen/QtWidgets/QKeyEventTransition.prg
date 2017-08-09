$header

#include "hbclass.ch"

CLASS QKeyEventTransition INHERIT QEventTransition

   METHOD new
   METHOD delete
   METHOD key
   METHOD modifierMask
   METHOD setKey
   METHOD setModifierMask

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QKeyEventTransition ( QState * sourceState = 0 )
*/
$internalConstructor=|new1|QState *=0

/*
QKeyEventTransition ( QObject * object, QEvent::Type type, int key, QState * sourceState = 0 )
*/
$internalConstructor=|new2|QObject *,QEvent::Type,int,QState *=0

//[1]QKeyEventTransition ( QState * sourceState = 0 )
//[2]QKeyEventTransition ( QObject * object, QEvent::Type type, int key, QState * sourceState = 0 )

HB_FUNC_STATIC( QKEYEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QKeyEventTransition_new1();
  }
  else if( ISBETWEEN(3,4) && ISQOBJECT(1) && ISNUM(2) && ISNUM(3) && (ISQSTATE(4)||ISNIL(4)) )
  {
    QKeyEventTransition_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int key () const
*/
$method=|int|key|

/*
Qt::KeyboardModifiers modifierMask () const
*/
$method=|Qt::KeyboardModifiers|modifierMask|

/*
void setKey ( int key )
*/
$method=|void|setKey|int

/*
void setModifierMask ( Qt::KeyboardModifiers modifierMask )
*/
$method=|void|setModifierMask|Qt::KeyboardModifiers

#pragma ENDDUMP
