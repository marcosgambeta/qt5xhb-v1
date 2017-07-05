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

/*
QRect ()
*/
void QRect_new1 ()
{
  QRect * o = new QRect ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRect ( const QPoint & topLeft, const QPoint & bottomRight )
*/
void QRect_new2 ()
{
  QRect * o = new QRect ( *PQPOINT(1), *PQPOINT(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRect ( const QPoint & topLeft, const QSize & size )
*/
void QRect_new3 ()
{
  QRect * o = new QRect ( *PQPOINT(1), *PQSIZE(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRect ( int x, int y, int width, int height )
*/
void QRect_new4 ()
{
  QRect * o = new QRect ( PINT(1), PINT(2), PINT(3), PINT(4) );
  _qt5xhb_storePointerAndFlag( o, true );
}

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

/*
void adjust ( int dx1, int dy1, int dx2, int dy2 )
*/
$method=|void|adjust|int,int,int,int

/*
QRect adjusted ( int dx1, int dy1, int dx2, int dy2 ) const
*/
HB_FUNC_STATIC( QRECT_ADJUSTED )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      QRect * ptr = new QRect( obj->adjusted ( PINT(1), PINT(2), PINT(3), PINT(4) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int bottom () const
*/
$method=|int|bottom|

/*
QPoint bottomLeft () const
*/
HB_FUNC_STATIC( QRECT_BOTTOMLEFT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->bottomLeft () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint bottomRight () const
*/
HB_FUNC_STATIC( QRECT_BOTTOMRIGHT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->bottomRight () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint center () const
*/
HB_FUNC_STATIC( QRECT_CENTER )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->center () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
bool contains ( const QPoint & point, bool proper = false ) const
*/
void QRect_contains1 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains ( *PQPOINT(1), OPBOOL(2,false) ) );
  }
}

/*
bool contains ( int x, int y, bool proper ) const
*/
void QRect_contains2 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains ( PINT(1), PINT(2), PBOOL(3) ) );
  }
}

/*
bool contains ( int x, int y ) const
*/
void QRect_contains3 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains ( PINT(1), PINT(2) ) );
  }
}

/*
bool contains ( const QRect & rectangle, bool proper = false ) const
*/
void QRect_contains4 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains ( *PQRECT(1), OPBOOL(2,false) ) );
  }
}

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

/*
void getCoords ( int * x1, int * y1, int * x2, int * y2 ) const
*/
HB_FUNC_STATIC( QRECT_GETCOORDS )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      int par1;
      int par2;
      int par3;
      int par4;
      obj->getCoords ( &par1, &par2, &par3, &par4 );
      hb_storni( par1, 1 );
      hb_storni( par2, 2 );
      hb_storni( par3, 3 );
      hb_storni( par4, 4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void getRect ( int * x, int * y, int * width, int * height ) const
*/
HB_FUNC_STATIC( QRECT_GETRECT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      int par1;
      int par2;
      int par3;
      int par4;
      obj->getRect ( &par1, &par2, &par3, &par4 );
      hb_storni( par1, 1 );
      hb_storni( par2, 2 );
      hb_storni( par3, 3 );
      hb_storni( par4, 4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int height () const
*/
$method=|int|height|

/*
QRect intersected ( const QRect & rectangle ) const
*/
HB_FUNC_STATIC( QRECT_INTERSECTED )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQRECT(1) )
    {
      QRect * ptr = new QRect( obj->intersected ( *PQRECT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool intersects ( const QRect & rectangle ) const
*/
$method=|bool|intersects|const QRect &

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
int left () const
*/
$method=|int|left|

/*
void moveBottom ( int y )
*/
$method=|void|moveBottom|int

/*
void moveBottomLeft ( const QPoint & position )
*/
$method=|void|moveBottomLeft|const QPoint &

/*
void moveBottomRight ( const QPoint & position )
*/
$method=|void|moveBottomRight|const QPoint &

/*
void moveCenter ( const QPoint & position )
*/
$method=|void|moveCenter|const QPoint &

/*
void moveLeft ( int x )
*/
$method=|void|moveLeft|int

/*
void moveRight ( int x )
*/
$method=|void|moveRight|int

/*
void moveTo ( int x, int y )
*/
void QRect_moveTo1 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->moveTo ( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveTo ( const QPoint & position )
*/
void QRect_moveTo2 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->moveTo ( *PQPOINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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

/*
void moveTop ( int y )
*/
$method=|void|moveTop|int

/*
void moveTopLeft ( const QPoint & position )
*/
$method=|void|moveTopLeft|const QPoint &

/*
void moveTopRight ( const QPoint & position )
*/
$method=|void|moveTopRight|const QPoint &

/*
QRect normalized () const
*/
HB_FUNC_STATIC( QRECT_NORMALIZED )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->normalized () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
int right () const
*/
$method=|int|right|

/*
void setBottom ( int y )
*/
$method=|void|setBottom|int

/*
void setBottomLeft ( const QPoint & position )
*/
$method=|void|setBottomLeft|const QPoint &

/*
void setBottomRight ( const QPoint & position )
*/
$method=|void|setBottomRight|const QPoint &

/*
void setCoords ( int x1, int y1, int x2, int y2 )
*/
$method=|void|setCoords|int,int,int,int

/*
void setHeight ( int height )
*/
$method=|void|setHeight|int

/*
void setLeft ( int x )
*/
$method=|void|setLeft|int

/*
void setRect ( int x, int y, int width, int height )
*/
$method=|void|setRect|int,int,int,int

/*
void setRight ( int x )
*/
$method=|void|setRight|int

/*
void setSize ( const QSize & size )
*/
$method=|void|setSize|const QSize &

/*
void setTop ( int y )
*/
$method=|void|setTop|int

/*
void setTopLeft ( const QPoint & position )
*/
$method=|void|setTopLeft|const QPoint &

/*
void setTopRight ( const QPoint & position )
*/
$method=|void|setTopRight|const QPoint &

/*
void setWidth ( int width )
*/
$method=|void|setWidth|int

/*
void setX ( int x )
*/
$method=|void|setX|int

/*
void setY ( int y )
*/
$method=|void|setY|int

/*
QSize size () const
*/
HB_FUNC_STATIC( QRECT_SIZE )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
int top () const
*/
$method=|int|top|

/*
QPoint topLeft () const
*/
HB_FUNC_STATIC( QRECT_TOPLEFT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->topLeft () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPoint topRight () const
*/
HB_FUNC_STATIC( QRECT_TOPRIGHT )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->topRight () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
void translate ( int dx, int dy )
*/
void QRect_translate1 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate ( const QPoint & offset )
*/
void QRect_translate2 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( *PQPOINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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

/*
QRect translated ( int dx, int dy ) const
*/
void QRect_translated1 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->translated ( PINT(1), PINT(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRect translated ( const QPoint & offset ) const
*/
void QRect_translated2 ()
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->translated ( *PQPOINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

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

/*
QRect united ( const QRect & rectangle ) const
*/
HB_FUNC_STATIC( QRECT_UNITED )
{
  QRect * obj = (QRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQRECT(1) )
    {
      QRect * ptr = new QRect( obj->united ( *PQRECT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int width () const
*/
$method=|int|width|

/*
int x () const
*/
$method=|int|x|

/*
int y () const
*/
$method=|int|y|

$extraMethods

#pragma ENDDUMP
