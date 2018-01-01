/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QEventLoop INHERIT QObject

   METHOD new
   METHOD delete
   METHOD exec
   METHOD exit
   METHOD isRunning
   METHOD processEvents
   METHOD wakeUp
   METHOD quit

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QEventLoop
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QEventLoop>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QEventLoop>
#endif

/*
QEventLoop ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QEVENTLOOP_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QEventLoop * o = new QEventLoop ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QEVENTLOOP_DELETE )
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int exec ( ProcessEventsFlags flags = AllEvents )
*/
HB_FUNC_STATIC( QEVENTLOOP_EXEC )
{
  QEventLoop * obj = (QEventLoop *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QEventLoop::AllEvents : hb_parni(1);
      RINT( obj->exec ( (QEventLoop::ProcessEventsFlags) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void exit ( int returnCode = 0 )
*/
HB_FUNC_STATIC( QEVENTLOOP_EXIT )
{
  QEventLoop * obj = (QEventLoop *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      obj->exit ( OPINT(1,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isRunning () const
*/
HB_FUNC_STATIC( QEVENTLOOP_ISRUNNING )
{
  QEventLoop * obj = (QEventLoop *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isRunning () );
  }
}

/*
bool processEvents ( ProcessEventsFlags flags = AllEvents )
*/
void QEventLoop_processEvents1 ()
{
  QEventLoop * obj = (QEventLoop *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = ISNIL(1)? (int) QEventLoop::AllEvents : hb_parni(1);
    RBOOL( obj->processEvents ( (QEventLoop::ProcessEventsFlags) par1 ) );
  }
}

/*
void processEvents ( ProcessEventsFlags flags, int maxTime )
*/
void QEventLoop_processEvents2 ()
{
  QEventLoop * obj = (QEventLoop *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->processEvents ( (QEventLoop::ProcessEventsFlags) par1, PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]bool processEvents ( ProcessEventsFlags flags = AllEvents )
//[2]void processEvents ( ProcessEventsFlags flags, int maxTime )

HB_FUNC_STATIC( QEVENTLOOP_PROCESSEVENTS )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QEventLoop_processEvents1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QEventLoop_processEvents2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void wakeUp ()
*/
HB_FUNC_STATIC( QEVENTLOOP_WAKEUP )
{
  QEventLoop * obj = (QEventLoop *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->wakeUp ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void quit ()
*/
HB_FUNC_STATIC( QEVENTLOOP_QUIT )
{
  QEventLoop * obj = (QEventLoop *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->quit ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
