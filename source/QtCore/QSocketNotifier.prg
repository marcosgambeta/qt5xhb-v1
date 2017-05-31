/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QSocketNotifier INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD socket
   METHOD type
   METHOD isEnabled
   METHOD setEnabled

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSocketNotifier
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSocketNotifier>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSocketNotifier>
#endif

/*
QSocketNotifier(qintptr socket, Type, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_NEW )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    qintptr par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QObject * par3 = ISNIL(3)? 0 : (QObject *) _qt5xhb_itemGetPtr(3);
    QSocketNotifier * o = new QSocketNotifier ( par1, (QSocketNotifier::Type) par2, par3 );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSOCKETNOTIFIER_DELETE )
{
  QSocketNotifier * obj = (QSocketNotifier *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
qintptr socket() const
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_SOCKET )
{
  QSocketNotifier * obj = (QSocketNotifier *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->socket () );
  }
}

/*
Type type() const
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_TYPE )
{
  QSocketNotifier * obj = (QSocketNotifier *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type () );
  }
}

/*
bool isEnabled() const
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_ISENABLED )
{
  QSocketNotifier * obj = (QSocketNotifier *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isEnabled () );
  }
}

/*
void setEnabled(bool)
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_SETENABLED )
{
  QSocketNotifier * obj = (QSocketNotifier *) _qt5xhb_itemGetPtrStackSelfItem();

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
}

#pragma ENDDUMP
