$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMDISUBWINDOW
REQUEST QBRUSH
REQUEST QSIZE
#endif

CLASS QMdiArea INHERIT QAbstractScrollArea

   METHOD new
   METHOD delete
   METHOD activationOrder
   METHOD activeSubWindow
   METHOD addSubWindow
   METHOD background
   METHOD currentSubWindow
   METHOD documentMode
   METHOD removeSubWindow
   METHOD setActivationOrder
   METHOD setBackground
   METHOD setDocumentMode
   METHOD setOption
   METHOD setTabPosition
   METHOD setTabShape
   METHOD setViewMode
   METHOD subWindowList
   METHOD tabPosition
   METHOD tabShape
   METHOD testOption
   METHOD viewMode
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD activateNextSubWindow
   METHOD activatePreviousSubWindow
   METHOD cascadeSubWindows
   METHOD closeActiveSubWindow
   METHOD closeAllSubWindows
   METHOD setActiveSubWindow
   METHOD tileSubWindows
   METHOD tabsClosable
   METHOD setTabsClosable
   METHOD tabsMovable
   METHOD setTabsMovable

   METHOD onSubWindowActivated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QMdiArea ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
WindowOrder activationOrder () const
*/
$method=|QMdiArea::WindowOrder|activationOrder|

/*
QMdiSubWindow * activeSubWindow () const
*/
$method=|QMdiSubWindow *|activeSubWindow|

/*
QMdiSubWindow * addSubWindow ( QWidget * widget, Qt::WindowFlags windowFlags = 0 )
*/
$method=|QMdiSubWindow *|addSubWindow|QWidget *,Qt::WindowFlags=0

/*
QBrush background () const
*/
$method=|QBrush|background|

/*
QMdiSubWindow * currentSubWindow () const
*/
$method=|QMdiSubWindow *|currentSubWindow|

/*
bool documentMode () const
*/
$method=|bool|documentMode|

/*
void removeSubWindow ( QWidget * widget )
*/
$method=|void|removeSubWindow|QWidget *

/*
void setActivationOrder ( WindowOrder order )
*/
$method=|void|setActivationOrder|QMdiArea::WindowOrder

/*
void setBackground ( const QBrush & background )
*/
$method=|void|setBackground|const QBrush &

/*
void setDocumentMode ( bool enabled )
*/
$method=|void|setDocumentMode|bool

/*
void setOption ( AreaOption option, bool on = true )
*/
$method=|void|setOption|QMdiArea::AreaOption,bool=true

/*
void setTabPosition ( QTabWidget::TabPosition position )
*/
$method=|void|setTabPosition|QTabWidget::TabPosition

/*
void setTabShape ( QTabWidget::TabShape shape )
*/
$method=|void|setTabShape|QTabWidget::TabShape

/*
void setViewMode ( ViewMode mode )
*/
$method=|void|setViewMode|QMdiArea::ViewMode

/*
QList<QMdiSubWindow *> subWindowList ( WindowOrder order = CreationOrder ) const
*/
$method=|QList<QMdiSubWindow *>|subWindowList|QMdiArea::WindowOrder=QMdiArea::CreationOrder

/*
QTabWidget::TabPosition tabPosition () const
*/
$method=|QTabWidget::TabPosition|tabPosition|

/*
QTabWidget::TabShape tabShape () const
*/
$method=|QTabWidget::TabShape|tabShape|

/*
bool testOption ( AreaOption option ) const
*/
$method=|bool|testOption|QMdiArea::AreaOption

/*
ViewMode viewMode () const
*/
$method=|QMdiArea::ViewMode|viewMode|

/*
virtual QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void activateNextSubWindow ()
*/
$method=|void|activateNextSubWindow|

/*
void activatePreviousSubWindow ()
*/
$method=|void|activatePreviousSubWindow|

/*
void cascadeSubWindows ()
*/
$method=|void|cascadeSubWindows|

/*
void closeActiveSubWindow ()
*/
$method=|void|closeActiveSubWindow|

/*
void closeAllSubWindows ()
*/
$method=|void|closeAllSubWindows|

/*
void setActiveSubWindow ( QMdiSubWindow * window )
*/
$method=|void|setActiveSubWindow|QMdiSubWindow *

/*
void tileSubWindows ()
*/
$method=|void|tileSubWindows|

/*
bool tabsClosable () const
*/
$method=|bool|tabsClosable|

/*
void setTabsClosable ( bool closable )
*/
$method=|void|setTabsClosable|bool

/*
bool tabsMovable () const
*/
$method=|bool|tabsMovable|

/*
void setTabsMovable ( bool movable )
*/
$method=|void|setTabsMovable|bool

#pragma ENDDUMP
