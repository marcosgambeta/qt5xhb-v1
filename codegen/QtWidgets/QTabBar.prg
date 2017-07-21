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

CLASS QTabBar INHERIT QWidget

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>
#include <QIcon>

/*
QTabBar ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
int addTab ( const QString & text )
*/
$internalMethod=|int|addTab,addTab1|const QString &

/*
int addTab ( const QIcon & icon, const QString & text )
*/
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

/*
int count () const
*/
$method=|int|count|

/*
int currentIndex () const
*/
$method=|int|currentIndex|

/*
bool documentMode () const
*/
$method=|bool|documentMode|

/*
bool drawBase () const
*/
$method=|bool|drawBase|

/*
Qt::TextElideMode elideMode () const
*/
$method=|Qt::TextElideMode|elideMode|

/*
bool expanding () const
*/
$method=|bool|expanding|

/*
QSize iconSize () const
*/
$method=|QSize|iconSize|

/*
int insertTab ( int index, const QString & text )
*/
$internalMethod=|int|insertTab,insertTab1|int,const QString &

/*
int insertTab ( int index, const QIcon & icon, const QString & text )
*/
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

/*
bool isMovable () const
*/
$method=|bool|isMovable|

/*
bool isTabEnabled ( int index ) const
*/
$method=|bool|isTabEnabled|int

/*
void moveTab ( int from, int to )
*/
$method=|void|moveTab|int,int

/*
void removeTab ( int index )
*/
$method=|void|removeTab|int

/*
SelectionBehavior selectionBehaviorOnRemove () const
*/
$method=|QTabBar::SelectionBehavior|selectionBehaviorOnRemove|

/*
void setDocumentMode ( bool set )
*/
$method=|void|setDocumentMode|bool

/*
void setDrawBase ( bool drawTheBase )
*/
$method=|void|setDrawBase|bool

/*
void setElideMode ( Qt::TextElideMode )
*/
$method=|void|setElideMode|Qt::TextElideMode

/*
void setExpanding ( bool enabled )
*/
$method=|void|setExpanding|bool

/*
void setIconSize ( const QSize & size )
*/
$method=|void|setIconSize|const QSize &

/*
void setMovable ( bool movable )
*/
$method=|void|setMovable|bool

/*
void setSelectionBehaviorOnRemove ( SelectionBehavior behavior )
*/
$method=|void|setSelectionBehaviorOnRemove|QTabBar::SelectionBehavior

/*
void setShape ( Shape shape )
*/
$method=|void|setShape|QTabBar::Shape

/*
void setTabButton ( int index, ButtonPosition position, QWidget * widget )
*/
$method=|void|setTabButton|int,QTabBar::ButtonPosition,QWidget *

/*
void setTabData ( int index, const QVariant & data )
*/
$method=|void|setTabData|int,const QVariant &

/*
void setTabEnabled ( int index, bool enabled )
*/
$method=|void|setTabEnabled|int,bool

/*
void setTabIcon ( int index, const QIcon & icon )
*/
$method=|void|setTabIcon|int,const QIcon &

/*
void setTabText ( int index, const QString & text )
*/
$method=|void|setTabText|int,const QString &

/*
void setTabTextColor ( int index, const QColor & color )
*/
$method=|void|setTabTextColor|int,const QColor &

/*
void setTabToolTip ( int index, const QString & tip )
*/
$method=|void|setTabToolTip|int,const QString &

/*
void setTabWhatsThis ( int index, const QString & text )
*/
$method=|void|setTabWhatsThis|int,const QString &

/*
void setTabsClosable ( bool closable )
*/
$method=|void|setTabsClosable|bool

/*
void setUsesScrollButtons ( bool useButtons )
*/
$method=|void|setUsesScrollButtons|bool

/*
Shape shape () const
*/
$method=|QTabBar::Shape|shape|

/*
int tabAt ( const QPoint & position ) const
*/
$method=|int|tabAt|const QPoint &

/*
QWidget * tabButton ( int index, ButtonPosition position ) const
*/
$method=|QWidget *|tabButton|int,QTabBar::ButtonPosition

/*
QVariant tabData ( int index ) const
*/
$method=|QVariant|tabData|int

/*
QIcon tabIcon ( int index ) const
*/
$method=|QIcon|tabIcon|int

/*
QRect tabRect ( int index ) const
*/
$method=|QRect|tabRect|int

/*
QString tabText ( int index ) const
*/
$method=|QString|tabText|int

/*
QColor tabTextColor ( int index ) const
*/
$method=|QColor|tabTextColor|int

/*
QString tabToolTip ( int index ) const
*/
$method=|QString|tabToolTip|int

/*
QString tabWhatsThis ( int index ) const
*/
$method=|QString|tabWhatsThis|int

/*
bool tabsClosable () const
*/
$method=|bool|tabsClosable|

/*
bool usesScrollButtons () const
*/
$method=|bool|usesScrollButtons|

/*
virtual QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void setCurrentIndex ( int index )
*/
$method=|void|setCurrentIndex|int

/*
bool autoHide() const
*/
$method=5,4,0|bool|autoHide|

/*
void setAutoHide(bool hide)
*/
$method=5,4,0|void|setAutoHide|bool

/*
bool changeCurrentOnDrag() const
*/
$method=5,4,0|bool|changeCurrentOnDrag|

/*
void setChangeCurrentOnDrag(bool change)
*/
$method=5,4,0|void|setChangeCurrentOnDrag|bool

#pragma ENDDUMP
