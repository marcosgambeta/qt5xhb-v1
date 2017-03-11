/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QAnimationDriver INHERIT QObject

   DATA class_id INIT Class_Id_QAnimationDriver
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD advance
   METHOD install
   METHOD uninstall
   METHOD isRunning
   METHOD elapsed
   METHOD setStartTime
   METHOD startTime
   METHOD onStarted
   METHOD onStopped
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAnimationDriver
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAnimationDriver>
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
#include <QAnimationDriver>
#endif

/*
QAnimationDriver(QObject *parent = 0)
*/
HB_FUNC_STATIC( QANIMATIONDRIVER_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QAnimationDriver * o = new QAnimationDriver ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAnimationDriver *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QANIMATIONDRIVER_DELETE )
{
  QAnimationDriver * obj = (QAnimationDriver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void advance()
*/
HB_FUNC_STATIC( QANIMATIONDRIVER_ADVANCE )
{
  QAnimationDriver * obj = (QAnimationDriver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->advance (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void install()
*/
HB_FUNC_STATIC( QANIMATIONDRIVER_INSTALL )
{
  QAnimationDriver * obj = (QAnimationDriver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->install (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void uninstall()
*/
HB_FUNC_STATIC( QANIMATIONDRIVER_UNINSTALL )
{
  QAnimationDriver * obj = (QAnimationDriver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->uninstall (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isRunning() const
*/
HB_FUNC_STATIC( QANIMATIONDRIVER_ISRUNNING )
{
  QAnimationDriver * obj = (QAnimationDriver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRunning (  ) );
  }
}


/*
virtual qint64 elapsed() const
*/
HB_FUNC_STATIC( QANIMATIONDRIVER_ELAPSED )
{
  QAnimationDriver * obj = (QAnimationDriver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->elapsed (  ) );
  }
}


/*
void setStartTime(qint64 startTime)
*/
HB_FUNC_STATIC( QANIMATIONDRIVER_SETSTARTTIME )
{
  QAnimationDriver * obj = (QAnimationDriver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStartTime ( (qint64) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qint64 startTime() const
*/
HB_FUNC_STATIC( QANIMATIONDRIVER_STARTTIME )
{
  QAnimationDriver * obj = (QAnimationDriver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->startTime (  ) );
  }
}




#pragma ENDDUMP
