/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionViewItem INHERIT QStyleOption

   METHOD new

   METHOD displayAlignment
   METHOD decorationAlignment
   METHOD textElideMode
   METHOD decorationPosition
   METHOD decorationSize
   METHOD font
   METHOD showDecorationSelected
   METHOD features
   METHOD locale
   METHOD widget
   METHOD index
   METHOD checkState
   METHOD icon
   METHOD text
   METHOD viewItemPosition
   METHOD backgroundBrush

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionViewItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionViewItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionViewItem>
#endif

/*
QStyleOptionViewItem()
*/
void QStyleOptionViewItem_new1 ()
{
  QStyleOptionViewItem * o = new QStyleOptionViewItem ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionViewItem(const QStyleOptionViewItem &other)
*/
void QStyleOptionViewItem_new2 ()
{
  QStyleOptionViewItem * o = new QStyleOptionViewItem ( *PQSTYLEOPTIONVIEWITEM(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionViewItem(int version) (protected)
*/

//[1]QStyleOptionViewItem()
//[2]QStyleOptionViewItem(const QStyleOptionViewItem &other) : QStyleOption(Version, Type)
//[3]QStyleOptionViewItem(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionViewItem_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONVIEWITEM(1) )
  {
    QStyleOptionViewItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::Alignment displayAlignment
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DISPLAYALIGNMENT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->displayAlignment );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::Alignment decorationAlignment
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DECORATIONALIGNMENT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->decorationAlignment );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::TextElideMode textElideMode
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_TEXTELIDEMODE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->textElideMode );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Position decorationPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DECORATIONPOSITION )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->decorationPosition );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize decorationSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DECORATIONSIZE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->decorationSize );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QFont font
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_FONT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

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

/*
bool showDecorationSelected
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SHOWDECORATIONSELECTED )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->showDecorationSelected );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
ViewItemFeatures features
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_FEATURES )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->features );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QLocale locale
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_LOCALE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QLocale * ptr = new QLocale( obj->locale );
      _qt5xhb_createReturnClass ( ptr, "QLOCALE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
const QWidget *widget
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_WIDGET )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      const QWidget * ptr = obj->widget;
      _qt5xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QModelIndex index
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_INDEX )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QModelIndex * ptr = new QModelIndex( obj->index );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::CheckState checkState
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_CHECKSTATE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->checkState );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_ICON )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

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

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_TEXT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

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

/*
ViewItemPosition viewItemPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_VIEWITEMPOSITION )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->viewItemPosition );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QBrush backgroundBrush
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_BACKGROUNDBRUSH )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->backgroundBrush );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
