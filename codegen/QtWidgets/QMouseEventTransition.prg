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
$internalConstructor=|new1|QState *=0

/*
QMouseEventTransition ( QObject * object, QEvent::Type type, Qt::MouseButton button, QState * sourceState = 0 )
*/
$internalConstructor=|new2|QObject *,QEvent::Type,Qt::MouseButton,QState *=0

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
$method=|Qt::MouseButton|button|

/*
QPainterPath hitTestPath () const
*/
$method=|QPainterPath|hitTestPath|

/*
Qt::KeyboardModifiers modifierMask () const
*/
$method=|Qt::KeyboardModifiers|modifierMask|

/*
void setButton ( Qt::MouseButton button )
*/
$method=|void|setButton|Qt::MouseButton

/*
void setHitTestPath ( const QPainterPath & path )
*/
$method=|void|setHitTestPath|const QPainterPath &

/*
void setModifierMask ( Qt::KeyboardModifiers modifierMask )
*/
$method=|void|setModifierMask|Qt::KeyboardModifiers

#pragma ENDDUMP
