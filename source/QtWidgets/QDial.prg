/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QDial INHERIT QAbstractSlider

   //DATA class_id INIT Class_Id_QDial
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD notchSize
   METHOD notchTarget
   METHOD notchesVisible
   METHOD setNotchTarget
   METHOD wrapping
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setNotchesVisible
   METHOD setWrapping

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDial
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDial>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDial>
#endif

/*
QDial ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDIAL_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QDial * o = new QDial ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QDIAL_DELETE )
{
  QDial * obj = (QDial *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int notchSize () const
*/
HB_FUNC_STATIC( QDIAL_NOTCHSIZE )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->notchSize (  ) );
  }
}

/*
qreal notchTarget () const
*/
HB_FUNC_STATIC( QDIAL_NOTCHTARGET )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->notchTarget (  ) );
  }
}

/*
bool notchesVisible () const
*/
HB_FUNC_STATIC( QDIAL_NOTCHESVISIBLE )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->notchesVisible (  ) );
  }
}

/*
void setNotchTarget ( double target )
*/
HB_FUNC_STATIC( QDIAL_SETNOTCHTARGET )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setNotchTarget ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool wrapping () const
*/
HB_FUNC_STATIC( QDIAL_WRAPPING )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->wrapping (  ) );
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QDIAL_MINIMUMSIZEHINT )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QDIAL_SIZEHINT )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setNotchesVisible ( bool visible )
*/
HB_FUNC_STATIC( QDIAL_SETNOTCHESVISIBLE )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setNotchesVisible ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWrapping ( bool on )
*/
HB_FUNC_STATIC( QDIAL_SETWRAPPING )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setWrapping ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
