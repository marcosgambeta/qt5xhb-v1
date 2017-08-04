$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSPLITTERHANDLE
REQUEST QBYTEARRAY
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QSplitter INHERIT QFrame

   METHOD new
   METHOD delete
   METHOD addWidget
   METHOD childrenCollapsible
   METHOD count
   METHOD getRange
   METHOD handle
   METHOD handleWidth
   METHOD indexOf
   METHOD insertWidget
   METHOD isCollapsible
   METHOD opaqueResize
   METHOD orientation
   METHOD refresh
   METHOD restoreState
   METHOD saveState
   METHOD setChildrenCollapsible
   METHOD setCollapsible
   METHOD setHandleWidth
   METHOD setOpaqueResize
   METHOD setOrientation
   METHOD setStretchFactor
   METHOD widget
   METHOD minimumSizeHint
   METHOD sizeHint

   METHOD onSplitterMoved

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSplitter ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
QSplitter ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
$internalConstructor=|new2|Qt::Orientation,QWidget *=0

//[1]QSplitter ( QWidget * parent = 0 )
//[2]QSplitter ( Qt::Orientation orientation, QWidget * parent = 0 )

HB_FUNC_STATIC( QSPLITTER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QSplitter_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQWIDGET(2) )
  {
    QSplitter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addWidget ( QWidget * widget )
*/
$method=|void|addWidget|QWidget *

/*
bool childrenCollapsible () const
*/
$method=|bool|childrenCollapsible|

/*
int count () const
*/
$method=|int|count|

/*
void getRange ( int index, int * min, int * max ) const
*/
$method=|void|getRange|int,int *,int *

/*
QSplitterHandle * handle ( int index ) const
*/
$method=|QSplitterHandle *|handle|int

/*
int handleWidth () const
*/
$method=|int|handleWidth|

/*
int indexOf ( QWidget * widget ) const
*/
$method=|int|indexOf|QWidget *

/*
void insertWidget ( int index, QWidget * widget )
*/
$method=|void|insertWidget|int,QWidget *

/*
bool isCollapsible ( int index ) const
*/
$method=|bool|isCollapsible|int

/*
bool opaqueResize () const
*/
$method=|bool|opaqueResize|

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
void refresh ()
*/
$method=|void|refresh|

/*
bool restoreState ( const QByteArray & state )
*/
$method=|bool|restoreState|const QByteArray &

/*
QByteArray saveState () const
*/
$method=|QByteArray|saveState|

/*
void setChildrenCollapsible ( bool )
*/
$method=|void|setChildrenCollapsible|bool

/*
void setCollapsible ( int index, bool collapse )
*/
$method=|void|setCollapsible|int,bool

/*
void setHandleWidth ( int )
*/
$method=|void|setHandleWidth|int

/*
void setOpaqueResize ( bool opaque = true )
*/
$method=|void|setOpaqueResize|bool=true

/*
void setOrientation ( Qt::Orientation )
*/
$method=|void|setOrientation|Qt::Orientation

/*
void setStretchFactor ( int index, int stretch )
*/
$method=|void|setStretchFactor|int,int

/*
QWidget * widget ( int index ) const
*/
$method=|QWidget *|widget|int

/*
virtual QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

#pragma ENDDUMP
