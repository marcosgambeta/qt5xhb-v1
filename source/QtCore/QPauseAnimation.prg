/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QPauseAnimation INHERIT QAbstractAnimation

   METHOD new
   METHOD delete
   METHOD setDuration
   METHOD duration

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPauseAnimation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPauseAnimation>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPauseAnimation>
#endif

/*
QPauseAnimation ( QObject * parent = 0 )
*/
void QPauseAnimation_new1 ()
{
  QPauseAnimation * o = new QPauseAnimation ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QPauseAnimation ( int msecs, QObject * parent = 0 )
*/
void QPauseAnimation_new2 ()
{
  QPauseAnimation * o = new QPauseAnimation ( PINT(1), OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QPauseAnimation ( QObject * parent = 0 )
//[2]QPauseAnimation ( int msecs, QObject * parent = 0 )

HB_FUNC_STATIC( QPAUSEANIMATION_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QPauseAnimation_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    QPauseAnimation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPAUSEANIMATION_DELETE )
{
  QPauseAnimation * obj = (QPauseAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void setDuration ( int msecs )
*/
HB_FUNC_STATIC( QPAUSEANIMATION_SETDURATION )
{
  QPauseAnimation * obj = (QPauseAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setDuration ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int duration () const
*/
HB_FUNC_STATIC( QPAUSEANIMATION_DURATION )
{
  QPauseAnimation * obj = (QPauseAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->duration () );
  }
}

#pragma ENDDUMP
