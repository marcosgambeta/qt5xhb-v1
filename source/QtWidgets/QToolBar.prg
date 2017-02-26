/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QACTION
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QToolBar INHERIT QWidget

   DATA class_id INIT Class_Id_QToolBar
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD actionAt1
   METHOD actionAt2
   METHOD actionAt
   METHOD addAction1
   METHOD addAction2
   METHOD addAction3
   METHOD addAction4
   METHOD addAction5
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QToolBar>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QToolBar>
#endif
#endif

#include <QIcon>

/*
QToolBar ( const QString & title, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTOOLBAR_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  QToolBar * o = new QToolBar ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QToolBar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QToolBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTOOLBAR_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QToolBar * o = new QToolBar ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QToolBar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QToolBar ( const QString & title, QWidget * parent = 0 )
//[2]QToolBar ( QWidget * parent = 0 )

HB_FUNC_STATIC( QTOOLBAR_NEW )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTOOLBAR_NEW1 );
  }
  else if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QTOOLBAR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTOOLBAR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QAction * actionAt ( int x, int y ) const
*/
HB_FUNC_STATIC( QTOOLBAR_ACTIONAT1 )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->actionAt ( (int) hb_parni(1), (int) hb_parni(2) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * actionAt ( const QPoint & p ) const
*/
HB_FUNC_STATIC( QTOOLBAR_ACTIONAT2 )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QAction * ptr = obj->actionAt ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


//[1]QAction * actionAt ( int x, int y ) const
//[2]QAction * actionAt ( const QPoint & p ) const

HB_FUNC_STATIC( QTOOLBAR_ACTIONAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTOOLBAR_ACTIONAT1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QTOOLBAR_ACTIONAT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addAction ( QAction * action )
*/
HB_FUNC_STATIC( QTOOLBAR_ADDACTION1 )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    obj->addAction ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * addAction ( const QString & text )
*/
HB_FUNC_STATIC( QTOOLBAR_ADDACTION2 )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QAction * ptr = obj->addAction ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text )
*/
HB_FUNC_STATIC( QTOOLBAR_ADDACTION3 )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qtxhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QString par2 = QLatin1String( hb_parc(2) );
    QAction * ptr = obj->addAction ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QTOOLBAR_ADDACTION4 )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QObject * par2 = (QObject *) _qtxhb_itemGetPtr(2);
    const char * par3 = hb_parc(3);
    QAction * ptr = obj->addAction ( par1, par2,  (const char *) par3 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QTOOLBAR_ADDACTION5 )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qtxhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QString par2 = QLatin1String( hb_parc(2) );
    QObject * par3 = (QObject *) _qtxhb_itemGetPtr(3);
    const char * par4 = hb_parc(4);
    QAction * ptr = obj->addAction ( par1, par2, par3,  (const char *) par4 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
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
    HB_FUNC_EXEC( QTOOLBAR_ADDACTION1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTOOLBAR_ADDACTION2 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QTOOLBAR_ADDACTION3 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QTOOLBAR_ADDACTION4 );
  }
  else if( ISNUMPAR(4) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) && ISCHAR(4) )
  {
    HB_FUNC_EXEC( QTOOLBAR_ADDACTION5 );
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
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->addSeparator (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QAction * addWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QTOOLBAR_ADDWIDGET )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    QAction * ptr = obj->addWidget ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
Qt::ToolBarAreas allowedAreas () const
*/
HB_FUNC_STATIC( QTOOLBAR_ALLOWEDAREAS )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->allowedAreas (  ) );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QTOOLBAR_CLEAR )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QTOOLBAR_ICONSIZE )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QAction * insertSeparator ( QAction * before )
*/
HB_FUNC_STATIC( QTOOLBAR_INSERTSEPARATOR )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    QAction * ptr = obj->insertSeparator ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QAction * insertWidget ( QAction * before, QWidget * widget )
*/
HB_FUNC_STATIC( QTOOLBAR_INSERTWIDGET )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    QWidget * par2 = (QWidget *) _qtxhb_itemGetPtr(2);
    QAction * ptr = obj->insertWidget ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
bool isAreaAllowed ( Qt::ToolBarArea area ) const
*/
HB_FUNC_STATIC( QTOOLBAR_ISAREAALLOWED )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isAreaAllowed (  (Qt::ToolBarArea) par1 ) );
  }
}


/*
bool isFloatable () const
*/
HB_FUNC_STATIC( QTOOLBAR_ISFLOATABLE )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFloatable (  ) );
  }
}


/*
bool isFloating () const
*/
HB_FUNC_STATIC( QTOOLBAR_ISFLOATING )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFloating (  ) );
  }
}


/*
bool isMovable () const
*/
HB_FUNC_STATIC( QTOOLBAR_ISMOVABLE )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isMovable (  ) );
  }
}


/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QTOOLBAR_ORIENTATION )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation (  ) );
  }
}


/*
void setAllowedAreas ( Qt::ToolBarAreas areas )
*/
HB_FUNC_STATIC( QTOOLBAR_SETALLOWEDAREAS )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAllowedAreas (  (Qt::ToolBarAreas) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFloatable ( bool floatable )
*/
HB_FUNC_STATIC( QTOOLBAR_SETFLOATABLE )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFloatable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMovable ( bool movable )
*/
HB_FUNC_STATIC( QTOOLBAR_SETMOVABLE )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMovable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOrientation ( Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QTOOLBAR_SETORIENTATION )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOrientation (  (Qt::Orientation) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAction * toggleViewAction () const
*/
HB_FUNC_STATIC( QTOOLBAR_TOGGLEVIEWACTION )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->toggleViewAction (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
Qt::ToolButtonStyle toolButtonStyle () const
*/
HB_FUNC_STATIC( QTOOLBAR_TOOLBUTTONSTYLE )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->toolButtonStyle (  ) );
  }
}


/*
QWidget * widgetForAction ( QAction * action ) const
*/
HB_FUNC_STATIC( QTOOLBAR_WIDGETFORACTION )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    QWidget * ptr = obj->widgetForAction ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
void setIconSize ( const QSize & iconSize )
*/
HB_FUNC_STATIC( QTOOLBAR_SETICONSIZE )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    obj->setIconSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setToolButtonStyle ( Qt::ToolButtonStyle toolButtonStyle )
*/
HB_FUNC_STATIC( QTOOLBAR_SETTOOLBUTTONSTYLE )
{
  QToolBar * obj = (QToolBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setToolButtonStyle (  (Qt::ToolButtonStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
