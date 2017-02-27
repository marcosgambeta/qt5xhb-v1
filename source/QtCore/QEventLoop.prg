/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QEventLoop INHERIT QObject

   DATA class_id INIT Class_Id_QEventLoop
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD exec
   METHOD exit
   METHOD isRunning
   METHOD processEvents1
   METHOD processEvents2
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QEventLoop>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QEventLoop>
#endif
#endif

/*
QEventLoop ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QEVENTLOOP_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QEventLoop * o = new QEventLoop ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QEventLoop *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QEVENTLOOP_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
int exec ( ProcessEventsFlags flags = AllEvents )
*/
HB_FUNC_STATIC( QEVENTLOOP_EXEC )
{
  QEventLoop * obj = (QEventLoop *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QEventLoop::AllEvents : hb_parni(1);
    hb_retni( obj->exec (  (QEventLoop::ProcessEventsFlags) par1 ) );
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
    obj->exit ( (int) ISNIL(1)? 0 : hb_parni(1) );
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
    hb_retl( obj->isRunning (  ) );
  }
}


/*
bool processEvents ( ProcessEventsFlags flags = AllEvents )
*/
HB_FUNC_STATIC( QEVENTLOOP_PROCESSEVENTS1 )
{
  QEventLoop * obj = (QEventLoop *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QEventLoop::AllEvents : hb_parni(1);
    hb_retl( obj->processEvents (  (QEventLoop::ProcessEventsFlags) par1 ) );
  }
}

/*
void processEvents ( ProcessEventsFlags flags, int maxTime )
*/
HB_FUNC_STATIC( QEVENTLOOP_PROCESSEVENTS2 )
{
  QEventLoop * obj = (QEventLoop *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->processEvents (  (QEventLoop::ProcessEventsFlags) par1, (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]bool processEvents ( ProcessEventsFlags flags = AllEvents )
//[2]void processEvents ( ProcessEventsFlags flags, int maxTime )

HB_FUNC_STATIC( QEVENTLOOP_PROCESSEVENTS )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QEVENTLOOP_PROCESSEVENTS1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QEVENTLOOP_PROCESSEVENTS2 );
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
    obj->wakeUp (  );
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
    obj->quit (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
