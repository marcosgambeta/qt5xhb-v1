$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QSIZE
#endif

CLASS QRect

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD adjust
   METHOD adjusted
   METHOD bottom
   METHOD bottomLeft
   METHOD bottomRight
   METHOD center
   METHOD contains
   METHOD getCoords
   METHOD getRect
   METHOD height
   METHOD intersected
   METHOD intersects
   METHOD isEmpty
   METHOD isNull
   METHOD isValid
   METHOD left
   METHOD moveBottom
   METHOD moveBottomLeft
   METHOD moveBottomRight
   METHOD moveCenter
   METHOD moveLeft
   METHOD moveRight
   METHOD moveTo
   METHOD moveTop
   METHOD moveTopLeft
   METHOD moveTopRight
   METHOD normalized
   METHOD right
   METHOD setBottom
   METHOD setBottomLeft
   METHOD setBottomRight
   METHOD setCoords
   METHOD setHeight
   METHOD setLeft
   METHOD setRect
   METHOD setRight
   METHOD setSize
   METHOD setTop
   METHOD setTopLeft
   METHOD setTopRight
   METHOD setWidth
   METHOD setX
   METHOD setY
   METHOD size
   METHOD top
   METHOD topLeft
   METHOD topRight
   METHOD translate
   METHOD translated
   METHOD united
   METHOD width
   METHOD x
   METHOD y

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QRect ()
$internalConstructor=|new1|

$prototype=QRect ( const QPoint & topLeft, const QPoint & bottomRight )
$internalConstructor=|new2|const QPoint &,const QPoint &

$prototype=QRect ( const QPoint & topLeft, const QSize & size )
$internalConstructor=|new3|const QPoint &,const QSize &

$prototype=QRect ( int x, int y, int width, int height )
$internalConstructor=|new4|int,int,int,int

//[1]QRect ()
//[2]QRect ( const QPoint & topLeft, const QPoint & bottomRight )
//[3]QRect ( const QPoint & topLeft, const QSize & size )
//[4]QRect ( int x, int y, int width, int height )

HB_FUNC_STATIC( QRECT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRect_new1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPOINT(2) )
  {
    QRect_new2();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQSIZE(2) )
  {
    QRect_new3();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QRect_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void adjust ( int dx1, int dy1, int dx2, int dy2 )
$method=|void|adjust|int,int,int,int

$prototype=QRect adjusted ( int dx1, int dy1, int dx2, int dy2 ) const
$method=|QRect|adjusted|int,int,int,int

$prototype=int bottom () const
$method=|int|bottom|

$prototype=QPoint bottomLeft () const
$method=|QPoint|bottomLeft|

$prototype=QPoint bottomRight () const
$method=|QPoint|bottomRight|

$prototype=QPoint center () const
$method=|QPoint|center|

$prototype=bool contains ( const QPoint & point, bool proper = false ) const
$internalMethod=|bool|contains,contains1|const QPoint &,bool=false

$prototype=bool contains ( int x, int y, bool proper ) const
$internalMethod=|bool|contains,contains2|int,int,bool

$prototype=bool contains ( int x, int y ) const
$internalMethod=|bool|contains,contains3|int,int

$prototype=bool contains ( const QRect & rectangle, bool proper = false ) const
$internalMethod=|bool|contains,contains4|const QRect &,bool=false

//[1]bool contains ( const QPoint & point, bool proper = false ) const
//[2]bool contains ( int x, int y, bool proper ) const
//[3]bool contains ( int x, int y ) const
//[4]bool contains ( const QRect & rectangle, bool proper = false ) const

HB_FUNC_STATIC( QRECT_CONTAINS )
{
  if( ISBETWEEN(1,2) && ISQPOINT(1) && ISOPTLOG(2) )
  {
    QRect_contains1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISLOG(3) )
  {
    QRect_contains2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRect_contains3();
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && ISOPTLOG(2) )
  {
    QRect_contains4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void getCoords ( int * x1, int * y1, int * x2, int * y2 ) const
$method=|void|getCoords|int *,int *,int *,int *

$prototype=void getRect ( int * x, int * y, int * width, int * height ) const
$method=|void|getRect|int *,int *,int *,int *

$prototype=int height () const
$method=|int|height|

$prototype=QRect intersected ( const QRect & rectangle ) const
$method=|QRect|intersected|const QRect &

$prototype=bool intersects ( const QRect & rectangle ) const
$method=|bool|intersects|const QRect &

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=int left () const
$method=|int|left|

$prototype=void moveBottom ( int y )
$method=|void|moveBottom|int

$prototype=void moveBottomLeft ( const QPoint & position )
$method=|void|moveBottomLeft|const QPoint &

$prototype=void moveBottomRight ( const QPoint & position )
$method=|void|moveBottomRight|const QPoint &

$prototype=void moveCenter ( const QPoint & position )
$method=|void|moveCenter|const QPoint &

$prototype=void moveLeft ( int x )
$method=|void|moveLeft|int

$prototype=void moveRight ( int x )
$method=|void|moveRight|int

$prototype=void moveTo ( int x, int y )
$internalMethod=|void|moveTo,moveTo1|int,int

$prototype=void moveTo ( const QPoint & position )
$internalMethod=|void|moveTo,moveTo2|const QPoint &

//[1]void moveTo ( int x, int y )
//[2]void moveTo ( const QPoint & position )

HB_FUNC_STATIC( QRECT_MOVETO )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRect_moveTo1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRect_moveTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void moveTop ( int y )
$method=|void|moveTop|int

$prototype=void moveTopLeft ( const QPoint & position )
$method=|void|moveTopLeft|const QPoint &

$prototype=void moveTopRight ( const QPoint & position )
$method=|void|moveTopRight|const QPoint &

$prototype=QRect normalized () const
$method=|QRect|normalized|

$prototype=int right () const
$method=|int|right|

$prototype=void setBottom ( int y )
$method=|void|setBottom|int

$prototype=void setBottomLeft ( const QPoint & position )
$method=|void|setBottomLeft|const QPoint &

$prototype=void setBottomRight ( const QPoint & position )
$method=|void|setBottomRight|const QPoint &

$prototype=void setCoords ( int x1, int y1, int x2, int y2 )
$method=|void|setCoords|int,int,int,int

$prototype=void setHeight ( int height )
$method=|void|setHeight|int

$prototype=void setLeft ( int x )
$method=|void|setLeft|int

$prototype=void setRect ( int x, int y, int width, int height )
$method=|void|setRect|int,int,int,int

$prototype=void setRight ( int x )
$method=|void|setRight|int

$prototype=void setSize ( const QSize & size )
$method=|void|setSize|const QSize &

$prototype=void setTop ( int y )
$method=|void|setTop|int

$prototype=void setTopLeft ( const QPoint & position )
$method=|void|setTopLeft|const QPoint &

$prototype=void setTopRight ( const QPoint & position )
$method=|void|setTopRight|const QPoint &

$prototype=void setWidth ( int width )
$method=|void|setWidth|int

$prototype=void setX ( int x )
$method=|void|setX|int

$prototype=void setY ( int y )
$method=|void|setY|int

$prototype=QSize size () const
$method=|QSize|size|

$prototype=int top () const
$method=|int|top|

$prototype=QPoint topLeft () const
$method=|QPoint|topLeft|

$prototype=QPoint topRight () const
$method=|QPoint|topRight|

$prototype=void translate ( int dx, int dy )
$internalMethod=|void|translate,translate1|int,int

$prototype=void translate ( const QPoint & offset )
$internalMethod=|void|translate,translate2|const QPoint &

//[1]void translate ( int dx, int dy )
//[2]void translate ( const QPoint & offset )

HB_FUNC_STATIC( QRECT_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRect_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRect_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRect translated ( int dx, int dy ) const
$internalMethod=|QRect|translated,translated1|int,int

$prototype=QRect translated ( const QPoint & offset ) const
$internalMethod=|QRect|translated,translated2|const QPoint &

//[1]QRect translated ( int dx, int dy ) const
//[2]QRect translated ( const QPoint & offset ) const

HB_FUNC_STATIC( QRECT_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRect_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRect_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRect united ( const QRect & rectangle ) const
$method=|QRect|united|const QRect &

$prototype=int width () const
$method=|int|width|

$prototype=int x () const
$method=|int|x|

$prototype=int y () const
$method=|int|y|

$extraMethods

#pragma ENDDUMP
