/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionMenuItem INHERIT QStyleOption

   METHOD new

   METHOD menuItemType
   METHOD checkType
   METHOD checked
   METHOD menuHasCheckableItems
   METHOD menuRect
   METHOD text
   METHOD icon
   METHOD maxIconWidth
   METHOD tabWidth
   METHOD font

   METHOD setMenuItemType
   METHOD setCheckType
   METHOD setChecked
   METHOD setMenuHasCheckableItems
   METHOD setMenuRect
   METHOD setText
   METHOD setIcon
   METHOD setMaxIconWidth
   METHOD setTabWidth
   METHOD setFont

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionMenuItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionMenuItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionMenuItem>
#endif

/*
QStyleOptionMenuItem()
*/
void QStyleOptionMenuItem_new1 ()
{
  QStyleOptionMenuItem * o = new QStyleOptionMenuItem ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QStyleOptionMenuItem(const QStyleOptionMenuItem &other)
*/
void QStyleOptionMenuItem_new2 ()
{
  QStyleOptionMenuItem * o = new QStyleOptionMenuItem ( *PQSTYLEOPTIONMENUITEM(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QStyleOptionMenuItem(int version) (protected)
*/

//[1]QStyleOptionMenuItem()
//[2]QStyleOptionMenuItem(const QStyleOptionMenuItem &other)
//[3]QStyleOptionMenuItem(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionMenuItem_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONMENUITEM(1) )
  {
    QStyleOptionMenuItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
MenuItemType menuItemType
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_MENUITEMTYPE )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->menuItemType );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETMENUITEMTYPE )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->menuItemType = (QStyleOptionMenuItem::MenuItemType) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
CheckType checkType
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_CHECKTYPE )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->checkType );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETCHECKTYPE )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->checkType = (QStyleOptionMenuItem::CheckType) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool checked
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_CHECKED )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->checked );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETCHECKED )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->checked = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool menuHasCheckableItems
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_MENUHASCHECKABLEITEMS )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->menuHasCheckableItems );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETMENUHASCHECKABLEITEMS )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->menuHasCheckableItems = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect menuRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_MENURECT )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->menuRect );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETMENURECT )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->menuRect = *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_TEXT )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETTEXT )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->text = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_ICON )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QIcon * ptr = new QIcon( obj->icon );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETICON )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQICON(1) )
    {
      obj->icon = *PQICON(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int maxIconWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_MAXICONWIDTH )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->maxIconWidth );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETMAXICONWIDTH )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->maxIconWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int tabWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_TABWIDTH )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->tabWidth );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETTABWIDTH )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->tabWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFont font
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_FONT )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QFont * ptr = new QFont( obj->font );
      _qt5xhb_createReturnClass ( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETFONT )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->font = *PQFONT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
