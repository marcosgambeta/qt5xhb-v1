/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QACTION
#endif

CLASS QDockWidget INHERIT QWidget

   DATA class_id INIT Class_Id_QDockWidget
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD allowedAreas
   METHOD features
   METHOD isAreaAllowed
   METHOD isFloating
   METHOD setAllowedAreas
   METHOD setFeatures
   METHOD setFloating
   METHOD setTitleBarWidget
   METHOD setWidget
   METHOD titleBarWidget
   METHOD toggleViewAction
   METHOD widget
   METHOD onAllowedAreasChanged
   METHOD onDockLocationChanged
   METHOD onFeaturesChanged
   METHOD onTopLevelChanged
   METHOD onVisibilityChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDockWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDockWidget>
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
#include <QDockWidget>
#endif
#endif

/*
QDockWidget ( const QString & title, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QDOCKWIDGET_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QDockWidget * o = new QDockWidget ( par1, par2,  (Qt::WindowFlags) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDockWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDockWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QDOCKWIDGET_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QDockWidget * o = new QDockWidget ( par1,  (Qt::WindowFlags) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDockWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QDockWidget ( const QString & title, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
//[2]QDockWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )

HB_FUNC_STATIC( QDOCKWIDGET_NEW )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDOCKWIDGET_NEW1 );
  }
  else if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDOCKWIDGET_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOCKWIDGET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDockWidget * obj = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::DockWidgetAreas allowedAreas () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_ALLOWEDAREAS )
{
  QDockWidget * obj = (QDockWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->allowedAreas (  ) );
  }
}


/*
DockWidgetFeatures features () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_FEATURES )
{
  QDockWidget * obj = (QDockWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->features (  ) );
  }
}


/*
bool	isAreaAllowed ( Qt::DockWidgetArea area ) const
*/
HB_FUNC_STATIC( QDOCKWIDGET_ISAREAALLOWED )
{
  QDockWidget * obj = (QDockWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isAreaAllowed (  (Qt::DockWidgetArea) par1 ) );
  }
}


/*
bool	isFloating () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_ISFLOATING )
{
  QDockWidget * obj = (QDockWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFloating (  ) );
  }
}


/*
void setAllowedAreas ( Qt::DockWidgetAreas areas )
*/
HB_FUNC_STATIC( QDOCKWIDGET_SETALLOWEDAREAS )
{
  QDockWidget * obj = (QDockWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAllowedAreas (  (Qt::DockWidgetAreas) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFeatures ( DockWidgetFeatures features )
*/
HB_FUNC_STATIC( QDOCKWIDGET_SETFEATURES )
{
  QDockWidget * obj = (QDockWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFeatures (  (QDockWidget::DockWidgetFeatures) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFloating ( bool floating )
*/
HB_FUNC_STATIC( QDOCKWIDGET_SETFLOATING )
{
  QDockWidget * obj = (QDockWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFloating ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTitleBarWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QDOCKWIDGET_SETTITLEBARWIDGET )
{
  QDockWidget * obj = (QDockWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    obj->setTitleBarWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QDOCKWIDGET_SETWIDGET )
{
  QDockWidget * obj = (QDockWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    obj->setWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * titleBarWidget () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_TITLEBARWIDGET )
{
  QDockWidget * obj = (QDockWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->titleBarWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
QAction * toggleViewAction () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_TOGGLEVIEWACTION )
{
  QDockWidget * obj = (QDockWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->toggleViewAction (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_WIDGET )
{
  QDockWidget * obj = (QDockWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->widget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}




#pragma ENDDUMP
