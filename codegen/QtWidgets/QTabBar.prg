%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QVARIANT
REQUEST QICON
REQUEST QRECT
REQUEST QCOLOR
#endif

$beginClassFrom=QWidget

   METHOD new
   METHOD delete
   METHOD addTab
   METHOD count
   METHOD currentIndex
   METHOD documentMode
   METHOD drawBase
   METHOD elideMode
   METHOD expanding
   METHOD iconSize
   METHOD insertTab
   METHOD isMovable
   METHOD isTabEnabled
   METHOD moveTab
   METHOD removeTab
   METHOD selectionBehaviorOnRemove
   METHOD setDocumentMode
   METHOD setDrawBase
   METHOD setElideMode
   METHOD setExpanding
   METHOD setIconSize
   METHOD setMovable
   METHOD setSelectionBehaviorOnRemove
   METHOD setShape
   METHOD setTabButton
   METHOD setTabData
   METHOD setTabEnabled
   METHOD setTabIcon
   METHOD setTabText
   METHOD setTabTextColor
   METHOD setTabToolTip
   METHOD setTabWhatsThis
   METHOD setTabsClosable
   METHOD setUsesScrollButtons
   METHOD shape
   METHOD tabAt
   METHOD tabButton
   METHOD tabData
   METHOD tabIcon
   METHOD tabRect
   METHOD tabText
   METHOD tabTextColor
   METHOD tabToolTip
   METHOD tabWhatsThis
   METHOD tabsClosable
   METHOD usesScrollButtons
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setCurrentIndex
   METHOD autoHide
   METHOD setAutoHide
   METHOD changeCurrentOnDrag
   METHOD setChangeCurrentOnDrag

   METHOD onCurrentChanged
   METHOD onTabCloseRequested
   METHOD onTabMoved

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>
#include <QIcon>

$prototype=QTabBar ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=int addTab ( const QString & text )
$internalMethod=|int|addTab,addTab1|const QString &

$prototype=int addTab ( const QIcon & icon, const QString & text )
$internalMethod=|int|addTab,addTab2|const QIcon &,const QString &

//[1]int addTab ( const QString & text )
//[2]int addTab ( const QIcon & icon, const QString & text )

HB_FUNC_STATIC( QTABBAR_ADDTAB )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTabBar_addTab1();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QTabBar_addTab2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int count () const
$method=|int|count|

$prototype=int currentIndex () const
$method=|int|currentIndex|

$prototype=bool documentMode () const
$method=|bool|documentMode|

$prototype=bool drawBase () const
$method=|bool|drawBase|

$prototype=Qt::TextElideMode elideMode () const
$method=|Qt::TextElideMode|elideMode|

$prototype=bool expanding () const
$method=|bool|expanding|

$prototype=QSize iconSize () const
$method=|QSize|iconSize|

$prototype=int insertTab ( int index, const QString & text )
$internalMethod=|int|insertTab,insertTab1|int,const QString &

$prototype=int insertTab ( int index, const QIcon & icon, const QString & text )
$internalMethod=|int|insertTab,insertTab2|int,const QIcon &,const QString &

//[1]int insertTab ( int index, const QString & text )
//[2]int insertTab ( int index, const QIcon & icon, const QString & text )

HB_FUNC_STATIC( QTABBAR_INSERTTAB )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(1) )
  {
    QTabBar_insertTab1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    QTabBar_insertTab2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isMovable () const
$method=|bool|isMovable|

$prototype=bool isTabEnabled ( int index ) const
$method=|bool|isTabEnabled|int

$prototype=void moveTab ( int from, int to )
$method=|void|moveTab|int,int

$prototype=void removeTab ( int index )
$method=|void|removeTab|int

$prototype=SelectionBehavior selectionBehaviorOnRemove () const
$method=|QTabBar::SelectionBehavior|selectionBehaviorOnRemove|

$prototype=void setDocumentMode ( bool set )
$method=|void|setDocumentMode|bool

$prototype=void setDrawBase ( bool drawTheBase )
$method=|void|setDrawBase|bool

$prototype=void setElideMode ( Qt::TextElideMode )
$method=|void|setElideMode|Qt::TextElideMode

$prototype=void setExpanding ( bool enabled )
$method=|void|setExpanding|bool

$prototype=void setIconSize ( const QSize & size )
$method=|void|setIconSize|const QSize &

$prototype=void setMovable ( bool movable )
$method=|void|setMovable|bool

$prototype=void setSelectionBehaviorOnRemove ( SelectionBehavior behavior )
$method=|void|setSelectionBehaviorOnRemove|QTabBar::SelectionBehavior

$prototype=void setShape ( Shape shape )
$method=|void|setShape|QTabBar::Shape

$prototype=void setTabButton ( int index, ButtonPosition position, QWidget * widget )
$method=|void|setTabButton|int,QTabBar::ButtonPosition,QWidget *

$prototype=void setTabData ( int index, const QVariant & data )
$method=|void|setTabData|int,const QVariant &

$prototype=void setTabEnabled ( int index, bool enabled )
$method=|void|setTabEnabled|int,bool

$prototype=void setTabIcon ( int index, const QIcon & icon )
$method=|void|setTabIcon|int,const QIcon &

$prototype=void setTabText ( int index, const QString & text )
$method=|void|setTabText|int,const QString &

$prototype=void setTabTextColor ( int index, const QColor & color )
$method=|void|setTabTextColor|int,const QColor &

$prototype=void setTabToolTip ( int index, const QString & tip )
$method=|void|setTabToolTip|int,const QString &

$prototype=void setTabWhatsThis ( int index, const QString & text )
$method=|void|setTabWhatsThis|int,const QString &

$prototype=void setTabsClosable ( bool closable )
$method=|void|setTabsClosable|bool

$prototype=void setUsesScrollButtons ( bool useButtons )
$method=|void|setUsesScrollButtons|bool

$prototype=Shape shape () const
$method=|QTabBar::Shape|shape|

$prototype=int tabAt ( const QPoint & position ) const
$method=|int|tabAt|const QPoint &

$prototype=QWidget * tabButton ( int index, ButtonPosition position ) const
$method=|QWidget *|tabButton|int,QTabBar::ButtonPosition

$prototype=QVariant tabData ( int index ) const
$method=|QVariant|tabData|int

$prototype=QIcon tabIcon ( int index ) const
$method=|QIcon|tabIcon|int

$prototype=QRect tabRect ( int index ) const
$method=|QRect|tabRect|int

$prototype=QString tabText ( int index ) const
$method=|QString|tabText|int

$prototype=QColor tabTextColor ( int index ) const
$method=|QColor|tabTextColor|int

$prototype=QString tabToolTip ( int index ) const
$method=|QString|tabToolTip|int

$prototype=QString tabWhatsThis ( int index ) const
$method=|QString|tabWhatsThis|int

$prototype=bool tabsClosable () const
$method=|bool|tabsClosable|

$prototype=bool usesScrollButtons () const
$method=|bool|usesScrollButtons|

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void setCurrentIndex ( int index )
$method=|void|setCurrentIndex|int

$prototype=bool autoHide() const
$method=5,4,0|bool|autoHide|

$prototype=void setAutoHide(bool hide)
$method=5,4,0|void|setAutoHide|bool

$prototype=bool changeCurrentOnDrag() const
$method=5,4,0|bool|changeCurrentOnDrag|

$prototype=void setChangeCurrentOnDrag(bool change)
$method=5,4,0|void|setChangeCurrentOnDrag|bool

$beginSignals
$signal=|currentChanged(int)
$signal=|tabCloseRequested(int)
$signal=|tabMoved(int,int)
$endSignals

#pragma ENDDUMP
