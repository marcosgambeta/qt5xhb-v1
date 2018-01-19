/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QWinTaskbarProgress INHERIT QObject

   METHOD new
   METHOD delete
   METHOD value
   METHOD setValue
   METHOD minimum
   METHOD setMinimum
   METHOD maximum
   METHOD setMaximum
   METHOD isVisible
   METHOD setVisible
   METHOD isPaused
   METHOD setPaused
   METHOD isStopped
   METHOD setRange
   METHOD reset
   METHOD show
   METHOD hide
   METHOD pause
   METHOD resume
   METHOD stop

   METHOD onValueChanged
   METHOD onMinimumChanged
   METHOD onMaximumChanged
   METHOD onVisibilityChanged
   METHOD onPausedChanged
   METHOD onStoppedChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWinTaskbarProgress
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinTaskbarProgress>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinTaskbarProgress>
#endif
#endif

/*
explicit QWinTaskbarProgress(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QWinTaskbarProgress * o = new QWinTaskbarProgress ( OPQOBJECT(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QWINTASKBARPROGRESS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

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
int value() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_VALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->value () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setValue(int value)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETVALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setValue ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int minimum() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_MINIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->minimum () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setMinimum(int minimum)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETMINIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMinimum ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int maximum() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_MAXIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->maximum () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setMaximum(int maximum)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETMAXIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMaximum ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isVisible() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_ISVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isPaused() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_ISPAUSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isPaused () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setPaused(bool paused)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETPAUSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setPaused ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isStopped() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_ISSTOPPED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isStopped () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setRange(int minimum, int maximum)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->setRange ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void reset()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_RESET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->reset ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void show()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SHOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->show ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void hide()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_HIDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->hide ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void pause()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_PAUSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->pause ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void resume()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_RESUME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->resume ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void stop()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->stop ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

#pragma ENDDUMP
