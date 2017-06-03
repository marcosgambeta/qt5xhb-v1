/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QWinTaskbarProgress INHERIT QObject

   DATA self_destruction INIT .F.

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
  QWinTaskbarProgress * o = new QWinTaskbarProgress ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QWINTASKBARPROGRESS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
    hb_retni( obj->value () );
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
    obj->setValue ( PINT(1) );
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
    hb_retni( obj->minimum () );
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
    obj->setMinimum ( PINT(1) );
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
    hb_retni( obj->maximum () );
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
    obj->setMaximum ( PINT(1) );
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
    hb_retl( obj->isVisible () );
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
    obj->setVisible ( PBOOL(1) );
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
    hb_retl( obj->isPaused () );
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
    obj->setPaused ( PBOOL(1) );
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
    hb_retl( obj->isStopped () );
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
    obj->setRange ( PINT(1), PINT(2) );
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
    obj->reset ();
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
    obj->show ();
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
    obj->hide ();
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
    obj->pause ();
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
    obj->resume ();
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
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
