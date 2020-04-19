%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMenuBar ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=QAction * activeAction () const
$method=|QAction *|activeAction|

$prototype=QAction * addAction ( const QString & text )
$internalMethod=|QAction *|addAction,addAction1|const QString &

$prototype=QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
$internalMethod=|QAction *|addAction,addAction2|const QString &,const QObject *,const char *

$prototype=void addAction ( QAction * action )
$internalMethod=|void|addAction,addAction3|QAction *

/*
[1]QAction * addAction ( const QString & text )
[2]QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
[3]void addAction ( QAction * action )
*/

HB_FUNC_STATIC( QMENUBAR_ADDACTION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenuBar_addAction1();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
    QMenuBar_addAction2();
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    QMenuBar_addAction3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addAction

$prototype=QAction * addMenu ( QMenu * menu )
$internalMethod=|QAction *|addMenu,addMenu1|QMenu *

$prototype=QMenu * addMenu ( const QString & title )
$internalMethod=|QMenu *|addMenu,addMenu2|const QString &

$prototype=QMenu * addMenu ( const QIcon & icon, const QString & title )
$internalMethod=|QMenu *|addMenu,addMenu3|const QIcon &,const QString &

/*
[1]QAction * addMenu ( QMenu * menu )
[2]QMenu * addMenu ( const QString & title )
[3]QMenu * addMenu ( const QIcon & icon, const QString & title )
*/

HB_FUNC_STATIC( QMENUBAR_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    QMenuBar_addMenu1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenuBar_addMenu2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QMenuBar_addMenu3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addMenu

$prototype=QAction * addSeparator ()
$method=|QAction *|addSeparator|

$prototype=void clear ()
$method=|void|clear|

$prototype=QAction * insertMenu ( QAction * before, QMenu * menu )
$method=|QAction *|insertMenu|QAction *,QMenu *

$prototype=QAction * insertSeparator ( QAction * before )
$method=|QAction *|insertSeparator|QAction *

$prototype=bool isDefaultUp () const
$method=|bool|isDefaultUp|

$prototype=void setDefaultUp ( bool )
$method=|void|setDefaultUp|bool

$prototype=bool isNativeMenuBar () const
$method=|bool|isNativeMenuBar|

$prototype=void setNativeMenuBar ( bool nativeMenuBar )
$method=|void|setNativeMenuBar|bool

$prototype=void setActiveAction ( QAction * act )
$method=|void|setActiveAction|QAction *

$prototype=int heightForWidth ( int ) const
$method=|int|heightForWidth|int

$prototype=QSize minimumSizeHint () const
$method=|QSize|minimumSizeHint|

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

$prototype=QRect actionGeometry(QAction *) const
$method=|QRect|actionGeometry|QAction *

$prototype=QAction *actionAt(const QPoint &) const
$method=|QAction *|actionAt|const QPoint &

$prototype=QWidget *cornerWidget(Qt::Corner corner = Qt::TopRightCorner) const
$method=|QWidget *|cornerWidget|Qt::Corner=Qt::TopRightCorner

$prototype=void setCornerWidget(QWidget *w, Qt::Corner corner = Qt::TopRightCorner)
$method=|void|setCornerWidget|QWidget *,Qt::Corner=Qt::TopRightCorner

$prototype=void setDefaultAction ( QAction * act )
$method=|void|setDefaultAction|QAction *|#ifdef Q_OS_WINCE

$prototype=QAction * defaultAction () const
$method=|QAction *|defaultAction||#ifdef Q_OS_WINCE

$prototype=static void wceCommands(uint command)
$staticMethod=|void|wceCommands|uint|#ifdef Q_OS_WINCE

$prototype=static void wceRefresh()
$staticMethod=|void|wceRefresh||#ifdef Q_OS_WINCE

$prototype=NSMenu * QMenuBar::toNSMenu()
$method=5,2,0|NSMenu *|toNSMenu||#ifdef Q_OS_OSX

$beginSignals
$signal=|hovered(QAction*)
$signal=|triggered(QAction*)
$endSignals

#pragma ENDDUMP
