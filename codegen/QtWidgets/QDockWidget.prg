$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QACTION
#endif

CLASS QDockWidget INHERIT QWidget

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
$internalConstructor=|new1|const QString &,QWidget *=0,Qt::WindowFlags=0

/*
QDockWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
$internalConstructor=|new2|QWidget *=0,Qt::WindowFlags=0

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
$method=|Qt::DockWidgetAreas|allowedAreas|

/*
DockWidgetFeatures features () const
*/
$method=|QDockWidget::DockWidgetFeatures|features|

/*
bool isAreaAllowed ( Qt::DockWidgetArea area ) const
*/
$method=|bool|isAreaAllowed|Qt::DockWidgetArea

/*
bool isFloating () const
*/
$method=|bool|isFloating|

/*
void setAllowedAreas ( Qt::DockWidgetAreas areas )
*/
$method=|void|setAllowedAreas|Qt::DockWidgetAreas

/*
void setFeatures ( DockWidgetFeatures features )
*/
$method=|void|setFeatures|QDockWidget::DockWidgetFeatures

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
$method=|QWidget *|titleBarWidget|

/*
QAction * toggleViewAction () const
*/
$method=|QAction *|toggleViewAction|

/*
QWidget * widget () const
*/
$method=|QWidget *|widget|

#pragma ENDDUMP
