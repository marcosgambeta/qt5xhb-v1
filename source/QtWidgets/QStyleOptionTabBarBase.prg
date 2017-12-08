/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionTabBarBase INHERIT QStyleOption

   METHOD new

   METHOD shape
   METHOD tabBarRect
   METHOD selectedTabRect
   METHOD documentMode

   METHOD setShape
   METHOD setTabBarRect
   METHOD setSelectedTabRect
   METHOD setDocumentMode

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionTabBarBase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionTabBarBase>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionTabBarBase>
#endif

/*
QStyleOptionTabBarBase()
*/
void QStyleOptionTabBarBase_new1 ()
{
  QStyleOptionTabBarBase * o = new QStyleOptionTabBarBase ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionTabBarBase(const QStyleOptionTabBarBase &other)
*/
void QStyleOptionTabBarBase_new2 ()
{
  QStyleOptionTabBarBase * o = new QStyleOptionTabBarBase ( *PQSTYLEOPTIONTABBARBASE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionTabBarBase(int version) (protected)
*/

//[1]QStyleOptionTabBarBase()
//[2]QStyleOptionTabBarBase(const QStyleOptionTabBarBase &other)
//[3]QStyleOptionTabBarBase(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionTabBarBase_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTABBARBASE(1) )
  {
    QStyleOptionTabBarBase_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTabBar::Shape shape
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SHAPE )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->shape );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SETSHAPE )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->shape = (QTabBar::Shape) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect tabBarRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_TABBARRECT )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->tabBarRect );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SETTABBARRECT )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->tabBarRect = *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect selectedTabRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SELECTEDTABRECT )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->selectedTabRect );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SETSELECTEDTABRECT )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->selectedTabRect = *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool documentMode
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_DOCUMENTMODE )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->documentMode );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SETDOCUMENTMODE )
{
  QStyleOptionTabBarBase * obj = (QStyleOptionTabBarBase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->documentMode = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
