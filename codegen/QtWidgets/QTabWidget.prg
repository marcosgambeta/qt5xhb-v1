$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSIZE
REQUEST QICON
REQUEST QTABBAR
#endif

CLASS QTabWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD addTab
   METHOD clear
   METHOD cornerWidget
   METHOD setCornerWidget
   METHOD count
   METHOD currentIndex
   METHOD setCurrentIndex
   METHOD currentWidget
   METHOD setCurrentWidget
   METHOD documentMode
   METHOD setDocumentMode
   METHOD elideMode
   METHOD setElideMode
   METHOD iconSize
   METHOD setIconSize
   METHOD indexOf
   METHOD insertTab
   METHOD isMovable
   METHOD setMovable
   METHOD isTabEnabled
   METHOD setTabEnabled
   METHOD removeTab
   METHOD tabIcon
   METHOD setTabIcon
   METHOD tabPosition
   METHOD setTabPosition
   METHOD tabShape
   METHOD setTabShape
   METHOD tabText
   METHOD setTabText
   METHOD tabToolTip
   METHOD setTabToolTip
   METHOD tabWhatsThis
   METHOD setTabWhatsThis
   METHOD usesScrollButtons
   METHOD setUsesScrollButtons
   METHOD tabsClosable
   METHOD setTabsClosable
   METHOD widget
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD heightForWidth
   METHOD hasHeightForWidth
   METHOD tabBarAutoHide
   METHOD setTabBarAutoHide
   METHOD tabBar

   METHOD onCurrentChanged
   METHOD onTabCloseRequested
   METHOD onTabBarClicked
   METHOD onTabBarDoubleClicked

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QTabWidget ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
int addTab ( QWidget * page, const QString & label )
*/
$internalMethod=|int|addTab,addTab1|QWidget *,const QString &

/*
int addTab ( QWidget * page, const QIcon & icon, const QString & label )
*/
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

/*
void clear ()
*/
$method=|void|clear|

/*
QWidget * cornerWidget ( Qt::Corner corner = Qt::TopRightCorner ) const
*/
$method=|QWidget *|cornerWidget|Qt::Corner=Qt::TopRightCorner

/*
void setCornerWidget ( QWidget * widget, Qt::Corner corner = Qt::TopRightCorner )
*/
$method=|void|setCornerWidget|QWidget *,Qt::Corner=Qt::TopRightCorner

/*
int count () const
*/
$method=|int|count|

/*
int currentIndex () const
*/
$method=|int|currentIndex|

/*
void setCurrentIndex ( int index )
*/
$method=|void|setCurrentIndex|int

/*
QWidget * currentWidget () const
*/
$method=|QWidget *|currentWidget|

/*
void setCurrentWidget ( QWidget * widget )
*/
$method=|void|setCurrentWidget|QWidget *

/*
bool documentMode () const
*/
$method=|bool|documentMode|

/*
void setDocumentMode ( bool set )
*/
$method=|void|setDocumentMode|bool

/*
Qt::TextElideMode elideMode () const
*/
$method=|Qt::TextElideMode|elideMode|

/*
void setElideMode ( Qt::TextElideMode )
*/
$method=|void|setElideMode|Qt::TextElideMode

/*
QSize iconSize () const
*/
$method=|QSize|iconSize|

/*
void setIconSize ( const QSize & size )
*/
$method=|void|setIconSize|const QSize &

/*
int indexOf ( QWidget * w ) const
*/
$method=|int|indexOf|QWidget *

/*
int insertTab ( int index, QWidget * page, const QString & label )
*/
$internalMethod=|int|insertTab,insertTab1|int,QWidget *,const QString &

/*
int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )
*/
$method=|int|insertTab,insertTab2|int,QWidget *,const QIcon &,const QString &

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

/*
bool isMovable () const
*/
$method=|bool|isMovable|

/*
void setMovable ( bool movable )
*/
$method=|void|setMovable|bool

/*
bool isTabEnabled ( int index ) const
*/
$method=|bool|isTabEnabled|int

/*
void setTabEnabled ( int index, bool enable )
*/
$method=|void|setTabEnabled|int,bool

/*
void removeTab ( int index )
*/
$method=|void|removeTab|int

/*
QIcon tabIcon ( int index ) const
*/
$method=|QIcon|tabIcon|int

/*
void setTabIcon ( int index, const QIcon & icon )
*/
$method=|void|setTabIcon|int,const QIcon &

/*
TabPosition tabPosition () const
*/
$method=|QTabWidget::TabPosition|tabPosition|

/*
void setTabPosition ( TabPosition )
*/
$method=|void|setTabPosition|QTabWidget::TabPosition

/*
TabShape tabShape () const
*/
$method=|QTabWidget::TabShape|tabShape|

/*
void setTabShape ( TabShape s )
*/
$method=|void|setTabShape|QTabWidget::TabShape

/*
QString tabText ( int index ) const
*/
$method=|QString|tabText|int

/*
void setTabText ( int index, const QString & label )
*/
$method=|void|setTabText|int,const QString &

/*
QString tabToolTip ( int index ) const
*/
$method=|QString|tabToolTip|int|#ifndef QT_NO_TOOLTIP

/*
void setTabToolTip ( int index, const QString & tip )
*/
$method=|void|setTabToolTip|int,const QString &|#ifndef QT_NO_TOOLTIP

/*
QString tabWhatsThis ( int index ) const
*/
$method=|QString|tabWhatsThis|int|#ifndef QT_NO_WHATSTHIS

/*
void setTabWhatsThis ( int index, const QString & text )
*/
$method=|void|setTabWhatsThis|int,const QString &|#ifndef QT_NO_WHATSTHIS

/*
bool usesScrollButtons () const
*/
$method=|bool|usesScrollButtons|

/*
void setUsesScrollButtons ( bool useButtons )
*/
$method=|void|setUsesScrollButtons|bool

/*
bool tabsClosable () const
*/
$method=|bool|tabsClosable|

/*
void setTabsClosable ( bool closeable )
*/
$method=|void|setTabsClosable|bool

/*
QWidget * widget ( int index ) const
*/
$method=|QWidget *|widget|int

/*
QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
int heightForWidth(int width) const
*/
$method=|int|heightForWidth|int

/*
bool hasHeightForWidth() const
*/
$method=|bool|hasHeightForWidth|

/*
bool tabBarAutoHide() const
*/
$method=5,4,0|bool|tabBarAutoHide|

/*
void setTabBarAutoHide(bool enabled)
*/
$method=5,4,0|void|setTabBarAutoHide|bool

/*
QTabBar* tabBar() const
*/
$method=|QTabBar *|tabBar|

#pragma ENDDUMP
