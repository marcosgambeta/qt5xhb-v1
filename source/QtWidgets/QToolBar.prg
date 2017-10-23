/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QToolBar INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD actionAt
   METHOD addAction
   METHOD addSeparator
   METHOD addWidget
   METHOD allowedAreas
   METHOD clear
   METHOD iconSize
   METHOD insertSeparator
   METHOD insertWidget
   METHOD isAreaAllowed
   METHOD isFloatable
   METHOD isFloating
   METHOD isMovable
   METHOD orientation
   METHOD setAllowedAreas
   METHOD setFloatable
   METHOD setMovable
   METHOD setOrientation
   METHOD toggleViewAction
   METHOD toolButtonStyle
   METHOD widgetForAction
   METHOD setIconSize
   METHOD setToolButtonStyle

   METHOD onActionTriggered
   METHOD onAllowedAreasChanged
   METHOD onIconSizeChanged
   METHOD onMovableChanged
   METHOD onOrientationChanged
   METHOD onToolButtonStyleChanged
   METHOD onTopLevelChanged
   METHOD onVisibilityChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QToolBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QToolBar>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QToolBar>
#endif

#include <QIcon>

/*
QToolBar ( const QString & title, QWidget * parent = 0 )
*/
void QToolBar_new1 ()
{
  QToolBar * o = new QToolBar ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QToolBar ( QWidget * parent = 0 )
*/
void QToolBar_new2 ()
{
  QToolBar * o = new QToolBar ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QToolBar ( const QString & title, QWidget * parent = 0 )
//[2]QToolBar ( QWidget * parent = 0 )

HB_FUNC_STATIC( QTOOLBAR_NEW )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QToolBar_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QToolBar_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTOOLBAR_DELETE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QAction * actionAt ( int x, int y ) const
*/
void QToolBar_actionAt1 ()
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QAction * ptr = obj->actionAt ( PINT(1), PINT(2) );
      _qt5xhb_createReturnClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAction * actionAt ( const QPoint & p ) const
*/
void QToolBar_actionAt2 ()
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->actionAt ( *PQPOINT(1) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

//[1]QAction * actionAt ( int x, int y ) const
//[2]QAction * actionAt ( const QPoint & p ) const

HB_FUNC_STATIC( QTOOLBAR_ACTIONAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QToolBar_actionAt1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QToolBar_actionAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addAction ( QAction * action )
*/
void QToolBar_addAction1 ()
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addAction ( PQACTION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * addAction ( const QString & text )
*/
void QToolBar_addAction2 ()
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->addAction ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text )
*/
void QToolBar_addAction3 ()
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QAction * ptr = obj->addAction ( par1, PQSTRING(2) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
*/
void QToolBar_addAction4 ()
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->addAction ( PQSTRING(1), PQOBJECT(2), PCONSTCHAR(3) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member )
*/
void QToolBar_addAction5 ()
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QAction * ptr = obj->addAction ( par1, PQSTRING(2), PQOBJECT(3), PCONSTCHAR(4) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

//[1]void addAction ( QAction * action )
//[2]QAction * addAction ( const QString & text )
//[3]QAction * addAction ( const QIcon & icon, const QString & text )
//[4]QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
//[5]QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member )

HB_FUNC_STATIC( QTOOLBAR_ADDACTION )
{
  if( ISNUMPAR(1) && ISQACTION(1) )
  {
    QToolBar_addAction1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QToolBar_addAction2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QToolBar_addAction3();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
    QToolBar_addAction4();
  }
  else if( ISNUMPAR(4) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) && ISCHAR(4) )
  {
    QToolBar_addAction5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addSeparator ()
*/
HB_FUNC_STATIC( QTOOLBAR_ADDSEPARATOR )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->addSeparator ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QTOOLBAR_ADDWIDGET )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      QAction * ptr = obj->addWidget ( PQWIDGET(1) );
      _qt5xhb_createReturnClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::ToolBarAreas allowedAreas () const
*/
HB_FUNC_STATIC( QTOOLBAR_ALLOWEDAREAS )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->allowedAreas () );
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QTOOLBAR_CLEAR )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QTOOLBAR_ICONSIZE )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QAction * insertSeparator ( QAction * before )
*/
HB_FUNC_STATIC( QTOOLBAR_INSERTSEPARATOR )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) )
    {
      QAction * ptr = obj->insertSeparator ( PQACTION(1) );
      _qt5xhb_createReturnClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAction * insertWidget ( QAction * before, QWidget * widget )
*/
HB_FUNC_STATIC( QTOOLBAR_INSERTWIDGET )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) && ISQWIDGET(2) )
    {
      QAction * ptr = obj->insertWidget ( PQACTION(1), PQWIDGET(2) );
      _qt5xhb_createReturnClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isAreaAllowed ( Qt::ToolBarArea area ) const
*/
HB_FUNC_STATIC( QTOOLBAR_ISAREAALLOWED )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->isAreaAllowed ( (Qt::ToolBarArea) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isFloatable () const
*/
HB_FUNC_STATIC( QTOOLBAR_ISFLOATABLE )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isFloatable () );
  }
}

/*
bool isFloating () const
*/
HB_FUNC_STATIC( QTOOLBAR_ISFLOATING )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isFloating () );
  }
}

/*
bool isMovable () const
*/
HB_FUNC_STATIC( QTOOLBAR_ISMOVABLE )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isMovable () );
  }
}

/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QTOOLBAR_ORIENTATION )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->orientation () );
  }
}

/*
void setAllowedAreas ( Qt::ToolBarAreas areas )
*/
HB_FUNC_STATIC( QTOOLBAR_SETALLOWEDAREAS )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setAllowedAreas ( (Qt::ToolBarAreas) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFloatable ( bool floatable )
*/
HB_FUNC_STATIC( QTOOLBAR_SETFLOATABLE )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setFloatable ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMovable ( bool movable )
*/
HB_FUNC_STATIC( QTOOLBAR_SETMOVABLE )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setMovable ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOrientation ( Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QTOOLBAR_SETORIENTATION )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setOrientation ( (Qt::Orientation) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * toggleViewAction () const
*/
HB_FUNC_STATIC( QTOOLBAR_TOGGLEVIEWACTION )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->toggleViewAction ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
Qt::ToolButtonStyle toolButtonStyle () const
*/
HB_FUNC_STATIC( QTOOLBAR_TOOLBUTTONSTYLE )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->toolButtonStyle () );
  }
}

/*
QWidget * widgetForAction ( QAction * action ) const
*/
HB_FUNC_STATIC( QTOOLBAR_WIDGETFORACTION )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) )
    {
      QWidget * ptr = obj->widgetForAction ( PQACTION(1) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setIconSize ( const QSize & iconSize )
*/
HB_FUNC_STATIC( QTOOLBAR_SETICONSIZE )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSIZE(1) )
    {
      obj->setIconSize ( *PQSIZE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolButtonStyle ( Qt::ToolButtonStyle toolButtonStyle )
*/
HB_FUNC_STATIC( QTOOLBAR_SETTOOLBUTTONSTYLE )
{
  QToolBar * obj = (QToolBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setToolButtonStyle ( (Qt::ToolButtonStyle) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
