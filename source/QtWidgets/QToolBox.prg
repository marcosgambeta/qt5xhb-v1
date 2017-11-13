/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QICON
#endif

CLASS QToolBox INHERIT QFrame

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD count
   METHOD currentIndex
   METHOD currentWidget
   METHOD indexOf
   METHOD insertItem
   METHOD isItemEnabled
   METHOD itemIcon
   METHOD itemText
   METHOD itemToolTip
   METHOD removeItem
   METHOD setItemEnabled
   METHOD setItemIcon
   METHOD setItemText
   METHOD setItemToolTip
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget

   METHOD onCurrentChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QToolBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QToolBox>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QToolBox>
#endif

/*
QToolBox ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QTOOLBOX_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTQWIDGET(1) && ISOPTNUM(2) )
  {
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    QToolBox * o = new QToolBox ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTOOLBOX_DELETE )
{
  QToolBox * obj = (QToolBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int addItem ( QWidget * widget, const QIcon & iconSet, const QString & text )
*/
void QToolBox_addItem1 ()
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par2 = ISOBJECT(2)? *(QIcon *) _qt5xhb_itemGetPtr(2) : QIcon(hb_parc(2));
    RINT( obj->addItem ( PQWIDGET(1), par2, PQSTRING(3) ) );
  }
}

/*
int addItem ( QWidget * w, const QString & text )
*/
void QToolBox_addItem2 ()
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->addItem ( PQWIDGET(1), PQSTRING(2) ) );
  }
}

//[1]int addItem ( QWidget * widget, const QIcon & iconSet, const QString & text )
//[2]int addItem ( QWidget * w, const QString & text )

HB_FUNC_STATIC( QTOOLBOX_ADDITEM )
{
  if( ISNUMPAR(3) && ISQWIDGET(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    QToolBox_addItem1();
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISCHAR(2) )
  {
    QToolBox_addItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int count () const
*/
HB_FUNC_STATIC( QTOOLBOX_COUNT )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
int currentIndex () const
*/
HB_FUNC_STATIC( QTOOLBOX_CURRENTINDEX )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->currentIndex () );
  }
}

/*
QWidget * currentWidget () const
*/
HB_FUNC_STATIC( QTOOLBOX_CURRENTWIDGET )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->currentWidget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
int indexOf ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QTOOLBOX_INDEXOF )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->indexOf ( PQWIDGET(1) ) );
  }
}

/*
int insertItem ( int index, QWidget * widget, const QIcon & icon, const QString & text )
*/
void QToolBox_insertItem1 ()
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par3 = ISOBJECT(3)? *(QIcon *) _qt5xhb_itemGetPtr(3) : QIcon(hb_parc(3));
    RINT( obj->insertItem ( PINT(1), PQWIDGET(2), par3, PQSTRING(4) ) );
  }
}

/*
int insertItem ( int index, QWidget * widget, const QString & text )
*/
void QToolBox_insertItem2 ()
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->insertItem ( PINT(1), PQWIDGET(2), PQSTRING(3) ) );
  }
}

//[1]int insertItem ( int index, QWidget * widget, const QIcon & icon, const QString & text )
//[2]int insertItem ( int index, QWidget * widget, const QString & text )

HB_FUNC_STATIC( QTOOLBOX_INSERTITEM )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISQWIDGET(2) && (ISQICON(3)||ISCHAR(3)) && ISCHAR(4) )
  {
    QToolBox_insertItem1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISCHAR(3) )
  {
    QToolBox_insertItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isItemEnabled ( int index ) const
*/
HB_FUNC_STATIC( QTOOLBOX_ISITEMENABLED )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->isItemEnabled ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QIcon itemIcon ( int index ) const
*/
HB_FUNC_STATIC( QTOOLBOX_ITEMICON )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QIcon * ptr = new QIcon( obj->itemIcon ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString itemText ( int index ) const
*/
HB_FUNC_STATIC( QTOOLBOX_ITEMTEXT )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->itemText ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString itemToolTip ( int index ) const
*/
HB_FUNC_STATIC( QTOOLBOX_ITEMTOOLTIP )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->itemToolTip ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void removeItem ( int index )
*/
HB_FUNC_STATIC( QTOOLBOX_REMOVEITEM )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->removeItem ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemEnabled ( int index, bool enabled )
*/
HB_FUNC_STATIC( QTOOLBOX_SETITEMENABLED )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISLOG(2) )
    {
      obj->setItemEnabled ( PINT(1), PBOOL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemIcon ( int index, const QIcon & icon )
*/
HB_FUNC_STATIC( QTOOLBOX_SETITEMICON )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par2 = ISOBJECT(2)? *(QIcon *) _qt5xhb_itemGetPtr(2) : QIcon(hb_parc(2));
    obj->setItemIcon ( PINT(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemText ( int index, const QString & text )
*/
HB_FUNC_STATIC( QTOOLBOX_SETITEMTEXT )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) )
    {
      obj->setItemText ( PINT(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemToolTip ( int index, const QString & toolTip )
*/
HB_FUNC_STATIC( QTOOLBOX_SETITEMTOOLTIP )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) )
    {
      obj->setItemToolTip ( PINT(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * widget ( int index ) const
*/
HB_FUNC_STATIC( QTOOLBOX_WIDGET )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QWidget * ptr = obj->widget ( PINT(1) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QTOOLBOX_SETCURRENTINDEX )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCurrentIndex ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QTOOLBOX_SETCURRENTWIDGET )
{
  QToolBox * obj = (QToolBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      obj->setCurrentWidget ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
