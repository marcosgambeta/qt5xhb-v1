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

$prototype=QSplitter ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QSplitter ( Qt::Orientation orientation, QWidget * parent = 0 )
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

$prototype=void addWidget ( QWidget * widget )
$method=|void|addWidget|QWidget *

$prototype=bool childrenCollapsible () const
$method=|bool|childrenCollapsible|

$prototype=int count () const
$method=|int|count|

$prototype=void getRange ( int index, int * min, int * max ) const
$method=|void|getRange|int,int *,int *

$prototype=QSplitterHandle * handle ( int index ) const
$method=|QSplitterHandle *|handle|int

$prototype=int handleWidth () const
$method=|int|handleWidth|

$prototype=int indexOf ( QWidget * widget ) const
$method=|int|indexOf|QWidget *

$prototype=void insertWidget ( int index, QWidget * widget )
$method=|void|insertWidget|int,QWidget *

$prototype=bool isCollapsible ( int index ) const
$method=|bool|isCollapsible|int

$prototype=bool opaqueResize () const
$method=|bool|opaqueResize|

$prototype=Qt::Orientation orientation () const
$method=|Qt::Orientation|orientation|

$prototype=void refresh ()
$method=|void|refresh|

$prototype=bool restoreState ( const QByteArray & state )
$method=|bool|restoreState|const QByteArray &

$prototype=QByteArray saveState () const
$method=|QByteArray|saveState|

$prototype=void setChildrenCollapsible ( bool )
$method=|void|setChildrenCollapsible|bool

$prototype=void setCollapsible ( int index, bool collapse )
$method=|void|setCollapsible|int,bool

$prototype=void setHandleWidth ( int )
$method=|void|setHandleWidth|int

$prototype=void setOpaqueResize ( bool opaque = true )
$method=|void|setOpaqueResize|bool=true

$prototype=void setOrientation ( Qt::Orientation )
$method=|void|setOrientation|Qt::Orientation

$prototype=void setStretchFactor ( int index, int stretch )
$method=|void|setStretchFactor|int,int

$prototype=QWidget * widget ( int index ) const
$method=|QWidget *|widget|int

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
