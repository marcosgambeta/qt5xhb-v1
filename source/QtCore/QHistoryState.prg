/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTSTATE
#endif

CLASS QHistoryState INHERIT QAbstractState

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD defaultState
   METHOD setDefaultState
   METHOD historyType
   METHOD setHistoryType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHistoryState
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHistoryState>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QHistoryState>
#endif

/*
QHistoryState(QState *parent = 0)
*/
void QHistoryState_new1 ()
{
  QState * par1 = ISNIL(1)? 0 : (QState *) _qt5xhb_itemGetPtr(1);
  QHistoryState * o = new QHistoryState ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QHistoryState(HistoryType type, QState *parent = 0)
*/
void QHistoryState_new2 ()
{
  int par1 = hb_parni(1);
  QState * par2 = ISNIL(2)? 0 : (QState *) _qt5xhb_itemGetPtr(2);
  QHistoryState * o = new QHistoryState (  (QHistoryState::HistoryType) par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QHistoryState(QState *parent = 0)
//[2]QHistoryState(HistoryType type, QState *parent = 0)

HB_FUNC_STATIC( QHISTORYSTATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QHistoryState_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQSTATE(2)||ISNIL(2)) )
  {
    QHistoryState_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QHISTORYSTATE_DELETE )
{
  QHistoryState * obj = (QHistoryState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QAbstractState *defaultState() const
*/
HB_FUNC_STATIC( QHISTORYSTATE_DEFAULTSTATE )
{
  QHistoryState * obj = (QHistoryState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractState * ptr = obj->defaultState (  );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTSTATE" );
  }
}

/*
void setDefaultState(QAbstractState *state)
*/
HB_FUNC_STATIC( QHISTORYSTATE_SETDEFAULTSTATE )
{
  QHistoryState * obj = (QHistoryState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTSTATE(1) )
    {
      QAbstractState * par1 = (QAbstractState *) _qt5xhb_itemGetPtr(1);
      obj->setDefaultState ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
HistoryType historyType() const
*/
HB_FUNC_STATIC( QHISTORYSTATE_HISTORYTYPE )
{
  QHistoryState * obj = (QHistoryState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->historyType (  ) );
  }
}

/*
void setHistoryType(HistoryType type)
*/
HB_FUNC_STATIC( QHISTORYSTATE_SETHISTORYTYPE )
{
  QHistoryState * obj = (QHistoryState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setHistoryType (  (QHistoryState::HistoryType) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
