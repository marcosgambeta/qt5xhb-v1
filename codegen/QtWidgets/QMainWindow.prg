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

/*
QMainWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

/*
void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget )
*/
void QMainWindow_addDockWidget1 ()
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addDockWidget ( (Qt::DockWidgetArea) hb_parni(1), PQDOCKWIDGET(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget, Qt::Orientation orientation )
*/
void QMainWindow_addDockWidget2 ()
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addDockWidget ( (Qt::DockWidgetArea) hb_parni(1), PQDOCKWIDGET(2), (Qt::Orientation) hb_parni(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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

/*
void addToolBar ( Qt::ToolBarArea area, QToolBar * toolbar )
*/
void QMainWindow_addToolBar1 ()
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addToolBar ( (Qt::ToolBarArea) hb_parni(1), PQTOOLBAR(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addToolBar ( QToolBar * toolbar )
*/
void QMainWindow_addToolBar2 ()
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addToolBar ( PQTOOLBAR(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QToolBar * addToolBar ( const QString & title )
*/
void QMainWindow_addToolBar3 ()
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QToolBar * ptr = obj->addToolBar ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QTOOLBAR" );
  }
}

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

/*
void addToolBarBreak ( Qt::ToolBarArea area = Qt::TopToolBarArea )
*/
$method=|void|addToolBarBreak|Qt::ToolBarArea=Qt::TopToolBarArea

/*
QWidget * centralWidget () const
*/
$method=|QWidget *|centralWidget|

/*
Qt::DockWidgetArea corner ( Qt::Corner corner ) const
*/
$method=|Qt::DockWidgetArea|corner|Qt::Corner

/*
virtual QMenu * createPopupMenu ()
*/
$method=|QMenu *|createPopupMenu|

/*
DockOptions dockOptions () const
*/
HB_FUNC_STATIC( QMAINWINDOW_DOCKOPTIONS )
{
  QMainWindow * obj = (QMainWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->dockOptions () );
  }
}

/*
Qt::DockWidgetArea dockWidgetArea ( QDockWidget * dockwidget ) const
*/
$method=|Qt::DockWidgetArea|dockWidgetArea|QDockWidget *

/*
bool documentMode () const
*/
$method=|bool|documentMode|

/*
QSize iconSize () const
*/
$method=|QSize|iconSize|

/*
void insertToolBar ( QToolBar * before, QToolBar * toolbar )
*/
$method=|void|insertToolBar|QToolBar *,QToolBar *

/*
void insertToolBarBreak ( QToolBar * before )
*/
$method=|void|insertToolBarBreak|QToolBar *

/*
bool isAnimated () const
*/
$method=|bool|isAnimated|

/*
bool isDockNestingEnabled () const
*/
$method=|bool|isDockNestingEnabled|

/*
QMenuBar * menuBar () const
*/
$method=|QMenuBar *|menuBar|

/*
QWidget * menuWidget () const
*/
$method=|QWidget *|menuWidget|

/*
void removeDockWidget ( QDockWidget * dockwidget )
*/
$method=|void|removeDockWidget|QDockWidget *

/*
void removeToolBar ( QToolBar * toolbar )
*/
$method=|void|removeToolBar|QToolBar *

/*
void removeToolBarBreak ( QToolBar * before )
*/
$method=|void|removeToolBarBreak|QToolBar *

/*
bool restoreDockWidget ( QDockWidget * dockwidget )
*/
$method=|bool|restoreDockWidget|QDockWidget *

/*
bool restoreState ( const QByteArray & state, int version = 0 )
*/
$method=|bool|restoreState|const QByteArray &,int=0

/*
QByteArray saveState ( int version = 0 ) const
*/
$method=|QByteArray|saveState|int=0

/*
void setCentralWidget ( QWidget * widget )
*/
$method=|void|setCentralWidget|QWidget *

/*
void setCorner ( Qt::Corner corner, Qt::DockWidgetArea area )
*/
$method=|void|setCorner|Qt::Corner,Qt::DockWidgetArea

/*
void setDockOptions ( DockOptions options )
*/
$method=|void|setDockOptions|QMainWindow::DockOptions

/*
void setDocumentMode ( bool enabled )
*/
$method=|void|setDocumentMode|bool

/*
void setIconSize ( const QSize & iconSize )
*/
$method=|void|setIconSize|const QSize &

/*
void setMenuBar ( QMenuBar * menuBar )
*/
$method=|void|setMenuBar|QMenuBar *

/*
void setMenuWidget ( QWidget * menuBar )
*/
$method=|void|setMenuWidget|QWidget *

/*
void setStatusBar ( QStatusBar * statusbar )
*/
$method=|void|setStatusBar|QStatusBar *

/*
void setTabPosition ( Qt::DockWidgetAreas areas, QTabWidget::TabPosition tabPosition )
*/
$method=|void|setTabPosition|Qt::DockWidgetAreas,QTabWidget::TabPosition

/*
void setTabShape ( QTabWidget::TabShape tabShape )
*/
$method=|void|setTabShape|QTabWidget::TabShape

/*
void setToolButtonStyle ( Qt::ToolButtonStyle toolButtonStyle )
*/
$method=|void|setToolButtonStyle|Qt::ToolButtonStyle

/*
void splitDockWidget ( QDockWidget * first, QDockWidget * second, Qt::Orientation orientation )
*/
$method=|void|splitDockWidget|QDockWidget *,QDockWidget *,Qt::Orientation

/*
QStatusBar * statusBar () const
*/
$method=|QStatusBar *|statusBar|

/*
QTabWidget::TabPosition tabPosition ( Qt::DockWidgetArea area ) const
*/
$method=|QTabWidget::TabPosition|tabPosition|Qt::DockWidgetArea

/*
QTabWidget::TabShape tabShape () const
*/
$method=|QTabWidget::TabShape|tabShape|

/*
void tabifyDockWidget ( QDockWidget * first, QDockWidget * second )
*/
$method=|void|tabifyDockWidget|QDockWidget *,QDockWidget *

/*
Qt::ToolBarArea toolBarArea ( QToolBar * toolbar ) const
*/
$method=|Qt::ToolBarArea|toolBarArea|QToolBar *

/*
bool toolBarBreak ( QToolBar * toolbar ) const
*/
$method=|bool|toolBarBreak|QToolBar *

/*
Qt::ToolButtonStyle toolButtonStyle () const
*/
$method=|Qt::ToolButtonStyle|toolButtonStyle|

/*
void setAnimated ( bool enabled )
*/
$method=|void|setAnimated|bool

/*
void setDockNestingEnabled ( bool enabled ) const
*/
$method=|void|setDockNestingEnabled|bool

/*
QWidget * takeCentralWidget ()
*/
$method=5,2,0|QWidget *|takeCentralWidget|

#pragma ENDDUMP
