/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QDial INHERIT QAbstractSlider

   DATA class_id INIT Class_Id_QDial
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDial>
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

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDial>
#endif
#endif

/*
QDial ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDIAL_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QDial * o = new QDial ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDial *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QDIAL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
int notchSize () const
*/
HB_FUNC_STATIC( QDIAL_NOTCHSIZE )
{
  QDial * obj = (QDial *) _qtxhb_itemGetPtrStackSelfItem();
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
  QDial * obj = (QDial *) _qtxhb_itemGetPtrStackSelfItem();
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
  QDial * obj = (QDial *) _qtxhb_itemGetPtrStackSelfItem();
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
  QDial * obj = (QDial *) _qtxhb_itemGetPtrStackSelfItem();
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
  QDial * obj = (QDial *) _qtxhb_itemGetPtrStackSelfItem();
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
  QDial * obj = (QDial *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QDIAL_SIZEHINT )
{
  QDial * obj = (QDial *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setNotchesVisible ( bool visible )
*/
HB_FUNC_STATIC( QDIAL_SETNOTCHESVISIBLE )
{
  QDial * obj = (QDial *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNotchesVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWrapping ( bool on )
*/
HB_FUNC_STATIC( QDIAL_SETWRAPPING )
{
  QDial * obj = (QDial *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWrapping ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
