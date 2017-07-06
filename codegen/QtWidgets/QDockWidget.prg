$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QACTION
#endif

CLASS QDockWidget INHERIT QWidget

   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes

/*
QDockWidget ( const QString & title, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
void QDockWidget_new1 ()
{
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QDockWidget * o = new QDockWidget ( PQSTRING(1), OPQWIDGET(2,0), (Qt::WindowFlags) par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDockWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
void QDockWidget_new2 ()
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QDockWidget * o = new QDockWidget ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QDockWidget ( const QString & title, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
//[2]QDockWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )

HB_FUNC_STATIC( QDOCKWIDGET_NEW )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTQWIDGET(2) && ISOPTNUM(3) )
  {
    QDockWidget_new1();
  }
  else if( ISBETWEEN(0,2) && ISOPTQWIDGET(1) && ISOPTNUM(2) )
  {
    QDockWidget_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Qt::DockWidgetAreas allowedAreas () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_ALLOWEDAREAS )
{
  QDockWidget * obj = (QDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->allowedAreas () );
  }
}

/*
DockWidgetFeatures features () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_FEATURES )
{
  QDockWidget * obj = (QDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->features () );
  }
}

/*
bool isAreaAllowed ( Qt::DockWidgetArea area ) const
*/
HB_FUNC_STATIC( QDOCKWIDGET_ISAREAALLOWED )
{
  QDockWidget * obj = (QDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->isAreaAllowed ( (Qt::DockWidgetArea) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isFloating () const
*/
$method=|bool|isFloating|

/*
void setAllowedAreas ( Qt::DockWidgetAreas areas )
*/
HB_FUNC_STATIC( QDOCKWIDGET_SETALLOWEDAREAS )
{
  QDockWidget * obj = (QDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setAllowedAreas ( (Qt::DockWidgetAreas) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFeatures ( DockWidgetFeatures features )
*/
HB_FUNC_STATIC( QDOCKWIDGET_SETFEATURES )
{
  QDockWidget * obj = (QDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setFeatures ( (QDockWidget::DockWidgetFeatures) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFloating ( bool floating )
*/
$method=|void|setFloating||bool

/*
void setTitleBarWidget ( QWidget * widget )
*/
$method=|void|setTitleBarWidget|QWidget *

/*
void setWidget ( QWidget * widget )
*/
$method=|void|setWidget|QWidget *

/*
QWidget * titleBarWidget () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_TITLEBARWIDGET )
{
  QDockWidget * obj = (QDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->titleBarWidget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QAction * toggleViewAction () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_TOGGLEVIEWACTION )
{
  QDockWidget * obj = (QDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->toggleViewAction ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_WIDGET )
{
  QDockWidget * obj = (QDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->widget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

#pragma ENDDUMP
