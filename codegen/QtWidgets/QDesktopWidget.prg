$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QWIDGET
#endif

CLASS QDesktopWidget INHERIT QWidget

   METHOD delete
   METHOD availableGeometry
   METHOD isVirtualDesktop
   METHOD primaryScreen
   METHOD screen
   METHOD screenCount
   METHOD screenGeometry
   METHOD screenNumber

   METHOD onResized
   METHOD onScreenCountChanged
   METHOD onWorkAreaResized

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
const QRect availableGeometry ( int screen = -1 ) const
*/
$internalMethod=|const QRect|availableGeometry,availableGeometry1|int=-1

/*
const QRect availableGeometry ( const QWidget * widget ) const
*/
$internalMethod=|const QRect|availableGeometry,availableGeometry2|const QWidget *

/*
const QRect availableGeometry ( const QPoint & p ) const
*/
$internalMethod=|const QRect|availableGeometry,availableGeometry3|const QPoint &

//[1]const QRect availableGeometry ( int screen = -1 ) const
//[2]const QRect availableGeometry ( const QWidget * widget ) const
//[3]const QRect availableGeometry ( const QPoint & p ) const

HB_FUNC_STATIC( QDESKTOPWIDGET_AVAILABLEGEOMETRY )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QDesktopWidget_availableGeometry1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QDesktopWidget_availableGeometry2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QDesktopWidget_availableGeometry3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isVirtualDesktop () const
*/
$method=|bool|isVirtualDesktop|

/*
int primaryScreen () const
*/
$method=|int|primaryScreen|

/*
QWidget * screen ( int screen = -1 )
*/
$method=|QWidget *|screen|int=-1

/*
int screenCount () const
*/
$method=|int|screenCount|

/*
const QRect screenGeometry ( int screen = -1 ) const
*/
$internalMethod=|const QRect|screenGeometry,screenGeometry1|int=-1

/*
const QRect screenGeometry ( const QWidget * widget ) const
*/
$internalMethod=|const QRect|screenGeometry,screenGeometry2|const QWidget *

/*
const QRect screenGeometry ( const QPoint & p ) const
*/
$internalMethod=|const QRect|screenGeometry,screenGeometry3|const QPoint &

//[1]const QRect screenGeometry ( int screen = -1 ) const
//[2]const QRect screenGeometry ( const QWidget * widget ) const
//[3]const QRect screenGeometry ( const QPoint & p ) const

HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENGEOMETRY )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QDesktopWidget_screenGeometry1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QDesktopWidget_screenGeometry2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QDesktopWidget_screenGeometry3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int screenNumber ( const QWidget * widget = 0 ) const
*/
$internalMethod=|int|screenNumber,screenNumber1|const QWidget *=0

/*
int screenNumber ( const QPoint & point ) const
*/
$internalMethod=|int|screenNumber,screenNumber2|const QPoint &

//[1]int screenNumber ( const QWidget * widget = 0 ) const
//[2]int screenNumber ( const QPoint & point ) const

HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENNUMBER )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QDesktopWidget_screenNumber1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QDesktopWidget_screenNumber2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
