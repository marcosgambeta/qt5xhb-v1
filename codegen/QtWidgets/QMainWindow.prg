$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTOOLBAR
REQUEST QWIDGET
REQUEST QMENU
REQUEST QSIZE
REQUEST QMENUBAR
REQUEST QBYTEARRAY
REQUEST QSTATUSBAR
#endif

CLASS QMainWindow INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD addDockWidget
   METHOD addToolBar
   METHOD addToolBarBreak
   METHOD centralWidget
   METHOD corner
   METHOD createPopupMenu
   METHOD dockOptions
   METHOD dockWidgetArea
   METHOD documentMode
   METHOD iconSize
   METHOD insertToolBar
   METHOD insertToolBarBreak
   METHOD isAnimated
   METHOD isDockNestingEnabled
   METHOD menuBar
   METHOD menuWidget
   METHOD removeDockWidget
   METHOD removeToolBar
   METHOD removeToolBarBreak
   METHOD restoreDockWidget
   METHOD restoreState
   METHOD saveState
   METHOD setCentralWidget
   METHOD setCorner
   METHOD setDockOptions
   METHOD setDocumentMode
   METHOD setIconSize
   METHOD setMenuBar
   METHOD setMenuWidget
   METHOD setStatusBar
   METHOD setTabPosition
   METHOD setTabShape
   METHOD setToolButtonStyle
   METHOD splitDockWidget
   METHOD statusBar
   METHOD tabPosition
   METHOD tabShape
   METHOD tabifyDockWidget
   METHOD toolBarArea
   METHOD toolBarBreak
   METHOD toolButtonStyle
   METHOD setAnimated
   METHOD setDockNestingEnabled
   METHOD takeCentralWidget

   METHOD onIconSizeChanged
   METHOD onToolButtonStyleChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMainWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototype=void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget )
$internalMethod=|void|addDockWidget,addDockWidget1|Qt::DockWidgetArea,QDockWidget *

$prototype=void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget, Qt::Orientation orientation )
$internalMethod=|void|addDockWidget,addDockWidget2|Qt::DockWidgetArea,QDockWidget *,Qt::Orientation

//[1]void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget )
//[2]void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget, Qt::Orientation orientation )

HB_FUNC_STATIC( QMAINWINDOW_ADDDOCKWIDGET )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQDOCKWIDGET(2) )
  {
    QMainWindow_addDockWidget1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQDOCKWIDGET(2) && ISNUM(3) )
  {
    QMainWindow_addDockWidget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void addToolBar ( Qt::ToolBarArea area, QToolBar * toolbar )
$internalMethod=|void|addToolBar,addToolBar1|Qt::ToolBarArea,QToolBar *

$prototype=void addToolBar ( QToolBar * toolbar )
$internalMethod=|void|addToolBar,addToolBar2|QToolBar *

$prototype=QToolBar * addToolBar ( const QString & title )
$internalMethod=|QToolBar *|addToolBar,addToolBar3|const QString &

//[1]void addToolBar ( Qt::ToolBarArea area, QToolBar * toolbar )
//[2]void addToolBar ( QToolBar * toolbar )
//[3]QToolBar * addToolBar ( const QString & title )

HB_FUNC_STATIC( QMAINWINDOW_ADDTOOLBAR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQTOOLBAR(2) )
  {
    QMainWindow_addToolBar1();
  }
  else if( ISNUMPAR(1) && ISQTOOLBAR(1) )
  {
    QMainWindow_addToolBar2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMainWindow_addToolBar3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void addToolBarBreak ( Qt::ToolBarArea area = Qt::TopToolBarArea )
$method=|void|addToolBarBreak|Qt::ToolBarArea=Qt::TopToolBarArea

$prototype=QWidget * centralWidget () const
$method=|QWidget *|centralWidget|

$prototype=Qt::DockWidgetArea corner ( Qt::Corner corner ) const
$method=|Qt::DockWidgetArea|corner|Qt::Corner

$prototype=virtual QMenu * createPopupMenu ()
$method=|QMenu *|createPopupMenu|

$prototype=DockOptions dockOptions () const
$method=|QMainWindow::DockOptions|dockOptions|

$prototype=Qt::DockWidgetArea dockWidgetArea ( QDockWidget * dockwidget ) const
$method=|Qt::DockWidgetArea|dockWidgetArea|QDockWidget *

$prototype=bool documentMode () const
$method=|bool|documentMode|

$prototype=QSize iconSize () const
$method=|QSize|iconSize|

$prototype=void insertToolBar ( QToolBar * before, QToolBar * toolbar )
$method=|void|insertToolBar|QToolBar *,QToolBar *

$prototype=void insertToolBarBreak ( QToolBar * before )
$method=|void|insertToolBarBreak|QToolBar *

$prototype=bool isAnimated () const
$method=|bool|isAnimated|

$prototype=bool isDockNestingEnabled () const
$method=|bool|isDockNestingEnabled|

$prototype=QMenuBar * menuBar () const
$method=|QMenuBar *|menuBar|

$prototype=QWidget * menuWidget () const
$method=|QWidget *|menuWidget|

$prototype=void removeDockWidget ( QDockWidget * dockwidget )
$method=|void|removeDockWidget|QDockWidget *

$prototype=void removeToolBar ( QToolBar * toolbar )
$method=|void|removeToolBar|QToolBar *

$prototype=void removeToolBarBreak ( QToolBar * before )
$method=|void|removeToolBarBreak|QToolBar *

$prototype=bool restoreDockWidget ( QDockWidget * dockwidget )
$method=|bool|restoreDockWidget|QDockWidget *

$prototype=bool restoreState ( const QByteArray & state, int version = 0 )
$method=|bool|restoreState|const QByteArray &,int=0

$prototype=QByteArray saveState ( int version = 0 ) const
$method=|QByteArray|saveState|int=0

$prototype=void setCentralWidget ( QWidget * widget )
$method=|void|setCentralWidget|QWidget *

$prototype=void setCorner ( Qt::Corner corner, Qt::DockWidgetArea area )
$method=|void|setCorner|Qt::Corner,Qt::DockWidgetArea

$prototype=void setDockOptions ( DockOptions options )
$method=|void|setDockOptions|QMainWindow::DockOptions

$prototype=void setDocumentMode ( bool enabled )
$method=|void|setDocumentMode|bool

$prototype=void setIconSize ( const QSize & iconSize )
$method=|void|setIconSize|const QSize &

$prototype=void setMenuBar ( QMenuBar * menuBar )
$method=|void|setMenuBar|QMenuBar *

$prototype=void setMenuWidget ( QWidget * menuBar )
$method=|void|setMenuWidget|QWidget *

$prototype=void setStatusBar ( QStatusBar * statusbar )
$method=|void|setStatusBar|QStatusBar *

$prototype=void setTabPosition ( Qt::DockWidgetAreas areas, QTabWidget::TabPosition tabPosition )
$method=|void|setTabPosition|Qt::DockWidgetAreas,QTabWidget::TabPosition

$prototype=void setTabShape ( QTabWidget::TabShape tabShape )
$method=|void|setTabShape|QTabWidget::TabShape

$prototype=void setToolButtonStyle ( Qt::ToolButtonStyle toolButtonStyle )
$method=|void|setToolButtonStyle|Qt::ToolButtonStyle

$prototype=void splitDockWidget ( QDockWidget * first, QDockWidget * second, Qt::Orientation orientation )
$method=|void|splitDockWidget|QDockWidget *,QDockWidget *,Qt::Orientation

$prototype=QStatusBar * statusBar () const
$method=|QStatusBar *|statusBar|

$prototype=QTabWidget::TabPosition tabPosition ( Qt::DockWidgetArea area ) const
$method=|QTabWidget::TabPosition|tabPosition|Qt::DockWidgetArea

$prototype=QTabWidget::TabShape tabShape () const
$method=|QTabWidget::TabShape|tabShape|

$prototype=void tabifyDockWidget ( QDockWidget * first, QDockWidget * second )
$method=|void|tabifyDockWidget|QDockWidget *,QDockWidget *

$prototype=Qt::ToolBarArea toolBarArea ( QToolBar * toolbar ) const
$method=|Qt::ToolBarArea|toolBarArea|QToolBar *

$prototype=bool toolBarBreak ( QToolBar * toolbar ) const
$method=|bool|toolBarBreak|QToolBar *

$prototype=Qt::ToolButtonStyle toolButtonStyle () const
$method=|Qt::ToolButtonStyle|toolButtonStyle|

$prototype=void setAnimated ( bool enabled )
$method=|void|setAnimated|bool

$prototype=void setDockNestingEnabled ( bool enabled ) const
$method=|void|setDockNestingEnabled|bool

$prototype=QWidget * takeCentralWidget ()
$method=5,2,0|QWidget *|takeCentralWidget|

#pragma ENDDUMP
