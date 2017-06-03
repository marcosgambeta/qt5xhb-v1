/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QTimer INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD interval
   METHOD isActive
   METHOD isSingleShot
   METHOD setInterval
   METHOD setSingleShot
   METHOD timerId
   METHOD start
   METHOD stop
   METHOD singleShot

   METHOD onTimeout

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTimer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTimer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTimer>
#endif

/*
QTimer ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QTIMER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QTimer * o = new QTimer ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTIMER_DELETE )
{
  QTimer * obj = (QTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int interval () const
*/
HB_FUNC_STATIC( QTIMER_INTERVAL )
{
  QTimer * obj = (QTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->interval () );
  }
}

/*
bool isActive () const
*/
HB_FUNC_STATIC( QTIMER_ISACTIVE )
{
  QTimer * obj = (QTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isActive () );
  }
}

/*
bool isSingleShot () const
*/
HB_FUNC_STATIC( QTIMER_ISSINGLESHOT )
{
  QTimer * obj = (QTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isSingleShot () );
  }
}

/*
void setInterval ( int msec )
*/
HB_FUNC_STATIC( QTIMER_SETINTERVAL )
{
  QTimer * obj = (QTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setInterval ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSingleShot ( bool singleShot )
*/
HB_FUNC_STATIC( QTIMER_SETSINGLESHOT )
{
  QTimer * obj = (QTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setSingleShot ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int timerId () const
*/
HB_FUNC_STATIC( QTIMER_TIMERID )
{
  QTimer * obj = (QTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->timerId () );
  }
}

/*
void start ( int msec )
*/
void QTimer_start1 ()
{
  QTimer * obj = (QTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->start ( PINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void start ()
*/
void QTimer_start2 ()
{
  QTimer * obj = (QTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->start ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void start ( int msec )
//[2]void start ()

HB_FUNC_STATIC( QTIMER_START )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTimer_start1();
  }
  else if( ISNUMPAR(0) )
  {
    QTimer_start2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void stop ()
*/
HB_FUNC_STATIC( QTIMER_STOP )
{
  QTimer * obj = (QTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->stop ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void singleShot ( int msec, QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QTIMER_SINGLESHOT )
{
  if( ISNUM(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
    QTimer::singleShot ( PINT(1), PQOBJECT(2), (const char *) hb_parc(3) );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
