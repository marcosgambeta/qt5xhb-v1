%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QIcon>
#include <QAction>

$prototype=QToolBar ( const QString & title, QWidget * parent = 0 )
$internalConstructor=|new1|const QString &,QWidget *=0

$prototype=QToolBar ( QWidget * parent = 0 )
$internalConstructor=|new2|QWidget *=0

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

$deleteMethod

$prototype=QAction * actionAt ( int x, int y ) const
$internalMethod=|QAction *|actionAt,actionAt1|int,int

$prototype=QAction * actionAt ( const QPoint & p ) const
$internalMethod=|QAction *|actionAt,actionAt2|const QPoint &

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

$prototype=void addAction ( QAction * action )
$internalMethod=|void|addAction,addAction1|QAction *

$prototype=QAction * addAction ( const QString & text )
$internalMethod=|QAction *|addAction,addAction2|const QString &

$prototype=QAction * addAction ( const QIcon & icon, const QString & text )
$internalMethod=|QAction *|addAction,addAction3|const QIcon &,const QString &

$prototype=QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
$internalMethod=|QAction *|addAction,addAction4|const QString &,const QObject *,const char *

$prototype=QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member )
$internalMethod=|QAction *|addAction,addAction5|const QIcon &,const QString &,const QObject *,const char *

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

$prototype=QAction * addSeparator ()
$method=|QAction *|addSeparator|

$prototype=QAction * addWidget ( QWidget * widget )
$method=|QAction *|addWidget|QWidget *

$prototype=Qt::ToolBarAreas allowedAreas () const
$method=|Qt::ToolBarAreas|allowedAreas|

$prototype=void clear ()
$method=|void|clear|

$prototype=QSize iconSize () const
$method=|QSize|iconSize|

$prototype=QAction * insertSeparator ( QAction * before )
$method=|QAction *|insertSeparator|QAction *

$prototype=QAction * insertWidget ( QAction * before, QWidget * widget )
$method=|QAction *|insertWidget|QAction *,QWidget *

$prototype=bool isAreaAllowed ( Qt::ToolBarArea area ) const
$method=|bool|isAreaAllowed|Qt::ToolBarArea

$prototype=bool isFloatable () const
$method=|bool|isFloatable|

$prototype=bool isFloating () const
$method=|bool|isFloating|

$prototype=bool isMovable () const
$method=|bool|isMovable|

$prototype=Qt::Orientation orientation () const
$method=|Qt::Orientation|orientation|

$prototype=void setAllowedAreas ( Qt::ToolBarAreas areas )
$method=|void|setAllowedAreas|Qt::ToolBarAreas

$prototype=void setFloatable ( bool floatable )
$method=|void|setFloatable|bool

$prototype=void setMovable ( bool movable )
$method=|void|setMovable|bool

$prototype=void setOrientation ( Qt::Orientation orientation )
$method=|void|setOrientation|Qt::Orientation

$prototype=QAction * toggleViewAction () const
$method=|QAction *|toggleViewAction|

$prototype=Qt::ToolButtonStyle toolButtonStyle () const
$method=|Qt::ToolButtonStyle|toolButtonStyle|

$prototype=QWidget * widgetForAction ( QAction * action ) const
$method=|QWidget *|widgetForAction|QAction *

$prototype=void setIconSize ( const QSize & iconSize )
$method=|void|setIconSize|const QSize &

$prototype=void setToolButtonStyle ( Qt::ToolButtonStyle toolButtonStyle )
$method=|void|setToolButtonStyle|Qt::ToolButtonStyle

$beginSignals
$signal=|actionTriggered(QAction*)
$signal=|allowedAreasChanged(Qt::ToolBarAreas)
$signal=|iconSizeChanged(QSize)
$signal=|movableChanged(bool)
$signal=|orientationChanged(Qt::Orientation)
$signal=|toolButtonStyleChanged(Qt::ToolButtonStyle)
$signal=|topLevelChanged(bool)
$signal=|visibilityChanged(bool)
$endSignals

#pragma ENDDUMP
