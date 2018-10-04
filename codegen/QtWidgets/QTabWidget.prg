%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

#include <QTabBar>

$prototype=explicit QTabWidget ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=int addTab ( QWidget * page, const QString & label )
$internalMethod=|int|addTab,addTab1|QWidget *,const QString &

$prototype=int addTab ( QWidget * page, const QIcon & icon, const QString & label )
$internalMethod=|int|addTab,addTab2|QWidget *,const QIcon &,const QString &

//[1]int addTab ( QWidget * page, const QString & label )
//[2]int addTab ( QWidget * page, const QIcon & icon, const QString & label )

HB_FUNC_STATIC( QTABWIDGET_ADDTAB )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISCHAR(2) )
  {
    QTabWidget_addTab1();
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    QTabWidget_addTab2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addTab

$prototype=void clear ()
$method=|void|clear|

$prototype=QWidget * cornerWidget ( Qt::Corner corner = Qt::TopRightCorner ) const
$method=|QWidget *|cornerWidget|Qt::Corner=Qt::TopRightCorner

$prototype=void setCornerWidget ( QWidget * widget, Qt::Corner corner = Qt::TopRightCorner )
$method=|void|setCornerWidget|QWidget *,Qt::Corner=Qt::TopRightCorner

$prototype=int count () const
$method=|int|count|

$prototype=int currentIndex () const
$method=|int|currentIndex|

$prototype=void setCurrentIndex ( int index )
$method=|void|setCurrentIndex|int

$prototype=QWidget * currentWidget () const
$method=|QWidget *|currentWidget|

$prototype=void setCurrentWidget ( QWidget * widget )
$method=|void|setCurrentWidget|QWidget *

$prototype=bool documentMode () const
$method=|bool|documentMode|

$prototype=void setDocumentMode ( bool set )
$method=|void|setDocumentMode|bool

$prototype=Qt::TextElideMode elideMode () const
$method=|Qt::TextElideMode|elideMode|

$prototype=void setElideMode ( Qt::TextElideMode )
$method=|void|setElideMode|Qt::TextElideMode

$prototype=QSize iconSize () const
$method=|QSize|iconSize|

$prototype=void setIconSize ( const QSize & size )
$method=|void|setIconSize|const QSize &

$prototype=int indexOf ( QWidget * w ) const
$method=|int|indexOf|QWidget *

$prototype=int insertTab ( int index, QWidget * page, const QString & label )
$internalMethod=|int|insertTab,insertTab1|int,QWidget *,const QString &

$prototype=int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )
$internalMethod=|int|insertTab,insertTab2|int,QWidget *,const QIcon &,const QString &

//[1]int insertTab ( int index, QWidget * page, const QString & label )
//[2]int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )

HB_FUNC_STATIC( QTABWIDGET_INSERTTAB )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISCHAR(3) )
  {
    QTabWidget_insertTab1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISQWIDGET(2) && (ISQICON(3)||ISCHAR(3)) && ISCHAR(4) )
  {
    QTabWidget_insertTab2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertTab

$prototype=bool isMovable () const
$method=|bool|isMovable|

$prototype=void setMovable ( bool movable )
$method=|void|setMovable|bool

$prototype=bool isTabEnabled ( int index ) const
$method=|bool|isTabEnabled|int

$prototype=void setTabEnabled ( int index, bool enable )
$method=|void|setTabEnabled|int,bool

$prototype=void removeTab ( int index )
$method=|void|removeTab|int

$prototype=QIcon tabIcon ( int index ) const
$method=|QIcon|tabIcon|int

$prototype=void setTabIcon ( int index, const QIcon & icon )
$method=|void|setTabIcon|int,const QIcon &

$prototype=TabPosition tabPosition () const
$method=|QTabWidget::TabPosition|tabPosition|

$prototype=void setTabPosition ( TabPosition )
$method=|void|setTabPosition|QTabWidget::TabPosition

$prototype=TabShape tabShape () const
$method=|QTabWidget::TabShape|tabShape|

$prototype=void setTabShape ( TabShape s )
$method=|void|setTabShape|QTabWidget::TabShape

$prototype=QString tabText ( int index ) const
$method=|QString|tabText|int

$prototype=void setTabText ( int index, const QString & label )
$method=|void|setTabText|int,const QString &

$prototype=QString tabToolTip ( int index ) const
$method=|QString|tabToolTip|int|#ifndef QT_NO_TOOLTIP

$prototype=void setTabToolTip ( int index, const QString & tip )
$method=|void|setTabToolTip|int,const QString &|#ifndef QT_NO_TOOLTIP

$prototype=QString tabWhatsThis ( int index ) const
$method=|QString|tabWhatsThis|int|#ifndef QT_NO_WHATSTHIS

$prototype=void setTabWhatsThis ( int index, const QString & text )
$method=|void|setTabWhatsThis|int,const QString &|#ifndef QT_NO_WHATSTHIS

$prototype=bool usesScrollButtons () const
$method=|bool|usesScrollButtons|

$prototype=void setUsesScrollButtons ( bool useButtons )
$method=|void|setUsesScrollButtons|bool

$prototype=bool tabsClosable () const
$method=|bool|tabsClosable|

$prototype=void setTabsClosable ( bool closeable )
$method=|void|setTabsClosable|bool

$prototype=QWidget * widget ( int index ) const
$method=|QWidget *|widget|int

$prototype=QSize minimumSizeHint () const
$method=|QSize|minimumSizeHint|

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=int heightForWidth(int width) const
$method=|int|heightForWidth|int

$prototype=bool hasHeightForWidth() const
$method=|bool|hasHeightForWidth|

$prototype=bool tabBarAutoHide() const
$method=5,4,0|bool|tabBarAutoHide|

$prototype=void setTabBarAutoHide(bool enabled)
$method=5,4,0|void|setTabBarAutoHide|bool

$prototype=QTabBar* tabBar() const
$method=|QTabBar *|tabBar|

$beginSignals
$signal=|currentChanged(int)
$signal=|tabCloseRequested(int)
$signal=5,2,0|tabBarClicked(int)
$signal=5,2,0|tabBarDoubleClicked(int)
$endSignals

#pragma ENDDUMP
