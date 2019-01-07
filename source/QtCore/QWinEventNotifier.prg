/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QWinEventNotifier INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isEnabled
   METHOD setEnabled

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWinEventNotifier
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWinEventNotifier>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWinEventNotifier>
#endif

/*
explicit QWinEventNotifier(QObject *parent = 0)
*/
void QWinEventNotifier_new1 ()
{
#ifdef Q_OS_WIN
  QWinEventNotifier * o = new QWinEventNotifier ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

/*
explicit QWinEventNotifier(HANDLE hEvent, QObject *parent = 0) // TODO: implementar
*/
// void QWinEventNotifier_new2 ()
// {
// #ifdef Q_OS_WIN
//   HANDLE par1 = (HANDLE) hb_parptr(1);
//   QWinEventNotifier * o = new QWinEventNotifier ( par1, OPQOBJECT(2,0) );
//   _qt5xhb_returnNewObject( o, false );
// #endif
// }

//[1]explicit QWinEventNotifier(QObject *parent = 0)
//[2]explicit QWinEventNotifier(HANDLE hEvent, QObject *parent = 0)

HB_FUNC_STATIC( QWINEVENTNOTIFIER_NEW )
{
#ifdef Q_OS_WIN
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QWinEventNotifier_new1();
  }
  //else if( ISBETWEEN(1,2) && ISPOINTER(1) && ISOPTQOBJECT(2) )
  //{
  //  QWinEventNotifier_new2();
  //}
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QWINEVENTNOTIFIER_DELETE )
{
#ifdef Q_OS_WIN
  QWinEventNotifier * obj = (QWinEventNotifier *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool isEnabled() const
*/
HB_FUNC_STATIC( QWINEVENTNOTIFIER_ISENABLED )
{
#ifdef Q_OS_WIN
  QWinEventNotifier * obj = (QWinEventNotifier *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isEnabled () );
  }
#endif
}

/*
void setEnabled(bool enable)
*/
HB_FUNC_STATIC( QWINEVENTNOTIFIER_SETENABLED )
{
#ifdef Q_OS_WIN
  QWinEventNotifier * obj = (QWinEventNotifier *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setEnabled ( PBOOL(1) );
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
