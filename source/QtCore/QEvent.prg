/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QEvent

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD accept
   METHOD ignore
   METHOD isAccepted
   METHOD setAccepted
   METHOD spontaneous
   METHOD type
   METHOD registerEventType

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QEvent>
#endif

/*
QEvent ( Type type )
*/
HB_FUNC_STATIC( QEVENT_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QEvent * o = new QEvent ( (QEvent::Type) hb_parni(1) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QEVENT_DELETE )
{
  QEvent * obj = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void accept ()
*/
HB_FUNC_STATIC( QEVENT_ACCEPT )
{
  QEvent * obj = (QEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->accept ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ignore ()
*/
HB_FUNC_STATIC( QEVENT_IGNORE )
{
  QEvent * obj = (QEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ignore ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isAccepted () const
*/
HB_FUNC_STATIC( QEVENT_ISACCEPTED )
{
  QEvent * obj = (QEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isAccepted () );
  }
}

/*
void setAccepted ( bool accepted )
*/
HB_FUNC_STATIC( QEVENT_SETACCEPTED )
{
  QEvent * obj = (QEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAccepted ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool spontaneous () const
*/
HB_FUNC_STATIC( QEVENT_SPONTANEOUS )
{
  QEvent * obj = (QEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->spontaneous () );
  }
}

/*
Type type () const
*/
HB_FUNC_STATIC( QEVENT_TYPE )
{
  QEvent * obj = (QEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type () );
  }
}

/*
static int registerEventType ( int hint = -1 )
*/
HB_FUNC_STATIC( QEVENT_REGISTEREVENTTYPE )
{
  if( ISOPTNUM(1) )
  {
    hb_retni( QEvent::registerEventType ( OPINT(1,-1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QEVENT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QEVENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QEVENT_NEWFROM );
}

HB_FUNC_STATIC( QEVENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QEVENT_NEWFROM );
}

HB_FUNC_STATIC( QEVENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QEVENT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
