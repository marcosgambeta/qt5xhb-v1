%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QACTION
#endif

$beginClassFrom=QWidget

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QAction>

$prototype=QDockWidget ( const QString & title, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$internalConstructor=|new1|const QString &,QWidget *=0,Qt::WindowFlags=0

$prototype=QDockWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
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

$prototype=Qt::DockWidgetAreas allowedAreas () const
$method=|Qt::DockWidgetAreas|allowedAreas|

$prototype=DockWidgetFeatures features () const
$method=|QDockWidget::DockWidgetFeatures|features|

$prototype=bool isAreaAllowed ( Qt::DockWidgetArea area ) const
$method=|bool|isAreaAllowed|Qt::DockWidgetArea

$prototype=bool isFloating () const
$method=|bool|isFloating|

$prototype=void setAllowedAreas ( Qt::DockWidgetAreas areas )
$method=|void|setAllowedAreas|Qt::DockWidgetAreas

$prototype=void setFeatures ( DockWidgetFeatures features )
$method=|void|setFeatures|QDockWidget::DockWidgetFeatures

$prototype=void setFloating ( bool floating )
$method=|void|setFloating|bool

$prototype=void setTitleBarWidget ( QWidget * widget )
$method=|void|setTitleBarWidget|QWidget *

$prototype=void setWidget ( QWidget * widget )
$method=|void|setWidget|QWidget *

$prototype=QWidget * titleBarWidget () const
$method=|QWidget *|titleBarWidget|

$prototype=QAction * toggleViewAction () const
$method=|QAction *|toggleViewAction|

$prototype=QWidget * widget () const
$method=|QWidget *|widget|

$beginSignals
$signal=|allowedAreasChanged(Qt::DockWidgetAreas)
$signal=|dockLocationChanged(Qt::DockWidgetArea)
$signal=|featuresChanged(QDockWidget::DockWidgetFeatures)
$signal=|topLevelChanged(bool)
$signal=|visibilityChanged(bool)
$endSignals

#pragma ENDDUMP
