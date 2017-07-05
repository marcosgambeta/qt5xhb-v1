$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QSIZEF
REQUEST QRECT
#endif

CLASS QRectF

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
   METHOD toAlignedRect
   METHOD toRect
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
QRectF ()
*/
void QRectF_new1 ()
{
  QRectF * o = new QRectF ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRectF ( const QPointF & topLeft, const QSizeF & size )
*/
void QRectF_new2 ()
{
  QRectF * o = new QRectF ( *PQPOINTF(1), *PQSIZEF(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRectF ( const QPointF & topLeft, const QPointF & bottomRight )
*/
void QRectF_new3 ()
{
  QRectF * o = new QRectF ( *PQPOINTF(1), *PQPOINTF(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRectF ( qreal x, qreal y, qreal width, qreal height )
*/
void QRectF_new4 ()
{
  QRectF * o = new QRectF ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRectF ( const QRect & rectangle )
*/
void QRectF_new5 ()
{
  QRectF * o = new QRectF ( *PQRECT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QRectF ()
//[2]QRectF ( const QPointF & topLeft, const QSizeF & size )
//[3]QRectF ( const QPointF & topLeft, const QPointF & bottomRight )
//[4]QRectF ( qreal x, qreal y, qreal width, qreal height )
//[5]QRectF ( const QRect & rectangle )

HB_FUNC_STATIC( QRECTF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRectF_new1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQSIZEF(2) )
  {
    QRectF_new2();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    QRectF_new3();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QRectF_new4();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QRectF_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void adjust ( qreal dx1, qreal dy1, qreal dx2, qreal dy2 )
*/
$method=|void|adjust|qreal,qreal,qreal,qreal

/*
QRectF adjusted ( qreal dx1, qreal dy1, qreal dx2, qreal dy2 ) const
*/
HB_FUNC_STATIC( QRECTF_ADJUSTED )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      QRectF * ptr = new QRectF( obj->adjusted ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal bottom () const
*/
$method=|qreal|bottom|

/*
QPointF bottomLeft () const
*/
HB_FUNC_STATIC( QRECTF_BOTTOMLEFT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->bottomLeft () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPointF bottomRight () const
*/
HB_FUNC_STATIC( QRECTF_BOTTOMRIGHT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->bottomRight () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPointF center () const
*/
HB_FUNC_STATIC( QRECTF_CENTER )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->center () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
bool contains ( const QPointF & point ) const
*/
void QRectF_contains1 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains ( *PQPOINTF(1) ) );
  }
}

/*
bool contains ( qreal x, qreal y ) const
*/
void QRectF_contains2 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains ( PQREAL(1), PQREAL(2) ) );
  }
}

/*
bool contains ( const QRectF & rectangle ) const
*/
void QRectF_contains3 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains ( *PQRECTF(1) ) );
  }
}

//[1]bool contains ( const QPointF & point ) const
//[2]bool contains ( qreal x, qreal y ) const
//[3]bool contains ( const QRectF & rectangle ) const

HB_FUNC_STATIC( QRECTF_CONTAINS )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QRectF_contains1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRectF_contains2();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QRectF_contains3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void getCoords ( qreal * x1, qreal * y1, qreal * x2, qreal * y2 ) const
*/
HB_FUNC_STATIC( QRECTF_GETCOORDS )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      qreal par1;
      qreal par2;
      qreal par3;
      qreal par4;
      obj->getCoords ( &par1, &par2, &par3, &par4 );
      hb_stornd( par1, 1 );
      hb_stornd( par2, 2 );
      hb_stornd( par3, 3 );
      hb_stornd( par4, 4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void getRect ( qreal * x, qreal * y, qreal * width, qreal * height ) const
*/
HB_FUNC_STATIC( QRECTF_GETRECT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      qreal par1;
      qreal par2;
      qreal par3;
      qreal par4;
      obj->getRect ( &par1, &par2, &par3, &par4 );
      hb_stornd( par1, 1 );
      hb_stornd( par2, 2 );
      hb_stornd( par3, 3 );
      hb_stornd( par4, 4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal height () const
*/
$method=|qreal|height|

/*
QRectF intersected ( const QRectF & rectangle ) const
*/
HB_FUNC_STATIC( QRECTF_INTERSECTED )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQRECTF(1) )
    {
      QRectF * ptr = new QRectF( obj->intersected ( *PQRECTF(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool intersects ( const QRectF & rectangle ) const
*/
$method=|bool|intersects|const QRectF &

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
qreal left () const
*/
$method=|qreal|left|

/*
void moveBottom ( qreal y )
*/
$method=|void|moveBottom|qreal

/*
void moveBottomLeft ( const QPointF & position )
*/
$method=|void|moveBottomLeft|const QPointF &

/*
void moveBottomRight ( const QPointF & position )
*/
$method=|void|moveBottomRight|const QPointF &

/*
void moveCenter ( const QPointF & position )
*/
$method=|void|moveCenter|const QPointF &

/*
void moveLeft ( qreal x )
*/
$method=|void|moveLeft|qreal

/*
void moveRight ( qreal x )
*/
$method=|void|moveRight|qreal

/*
void moveTo ( qreal x, qreal y )
*/
void QRectF_moveTo1 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->moveTo ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveTo ( const QPointF & position )
*/
void QRectF_moveTo2 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->moveTo ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void moveTo ( qreal x, qreal y )
//[2]void moveTo ( const QPointF & position )

HB_FUNC_STATIC( QRECTF_MOVETO )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRectF_moveTo1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QRectF_moveTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void moveTop ( qreal y )
*/
$method=|void|moveTop|qreal

/*
void moveTopLeft ( const QPointF & position )
*/
$method=|void|moveTopLeft|const QPointF &

/*
void moveTopRight ( const QPointF & position )
*/
$method=|void|moveTopRight|const QPointF &

/*
QRectF normalized () const
*/
HB_FUNC_STATIC( QRECTF_NORMALIZED )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->normalized () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
qreal right () const
*/
$method=|qreal|right|

/*
void setBottom ( qreal y )
*/
$method=|void|setBottom|qreal

/*
void setBottomLeft ( const QPointF & position )
*/
$method=|void|setBottomLeft|const QPointF &

/*
void setBottomRight ( const QPointF & position )
*/
$method=|void|setBottomRight|const QPointF &

/*
void setCoords ( qreal x1, qreal y1, qreal x2, qreal y2 )
*/
$method=|void|setCoords|qreal,qreal,qreal,qreal

/*
void setHeight ( qreal height )
*/
$method=|void|setHeight|qreal

/*
void setLeft ( qreal x )
*/
$method=|void|setLeft|qreal

/*
void setRect ( qreal x, qreal y, qreal width, qreal height )
*/
$method=|void|setRect|qreal,qreal,qreal,qreal

/*
void setRight ( qreal x )
*/
$method=|void|setRight|qreal

/*
void setSize ( const QSizeF & size )
*/
$method=|void|setSize|const QSizeF &

/*
void setTop ( qreal y )
*/
$method=|void|setTop|qreal

/*
void setTopLeft ( const QPointF & position )
*/
$method=|void|setTopLeft|const QPointF &

/*
void setTopRight ( const QPointF & position )
*/
$method=|void|setTopRight|const QPointF &

/*
void setWidth ( qreal width )
*/
$method=|void|setWidth|qreal

/*
void setX ( qreal x )
*/
$method=|void|setX|qreal

/*
void setY ( qreal y )
*/
$method=|void|setY|qreal

/*
QSizeF size () const
*/
HB_FUNC_STATIC( QRECTF_SIZE )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->size () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

/*
QRect toAlignedRect () const
*/
HB_FUNC_STATIC( QRECTF_TOALIGNEDRECT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->toAlignedRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRect toRect () const
*/
HB_FUNC_STATIC( QRECTF_TORECT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->toRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
qreal top () const
*/
$method=|qreal|top|

/*
QPointF topLeft () const
*/
HB_FUNC_STATIC( QRECTF_TOPLEFT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->topLeft () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPointF topRight () const
*/
HB_FUNC_STATIC( QRECTF_TOPRIGHT )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->topRight () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void translate ( qreal dx, qreal dy )
*/
$internalMethod=|void|translate,translate1|qreal,qreal

/*
void translate ( const QPointF & offset )
*/
$internalMethod=|void|translate,translate2|const QPointF &

//[1]void translate ( qreal dx, qreal dy )
//[2]void translate ( const QPointF & offset )

HB_FUNC_STATIC( QRECTF_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRectF_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QRectF_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF translated ( qreal dx, qreal dy ) const
*/
void QRectF_translated1 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->translated ( PQREAL(1), PQREAL(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF translated ( const QPointF & offset ) const
*/
void QRectF_translated2 ()
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->translated ( *PQPOINTF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

//[1]QRectF translated ( qreal dx, qreal dy ) const
//[2]QRectF translated ( const QPointF & offset ) const

HB_FUNC_STATIC( QRECTF_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRectF_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QRectF_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF united ( const QRectF & rectangle ) const
*/
HB_FUNC_STATIC( QRECTF_UNITED )
{
  QRectF * obj = (QRectF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQRECTF(1) )
    {
      QRectF * ptr = new QRectF( obj->united ( *PQRECTF(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal width () const
*/
$method=|qreal|width|

/*
qreal x () const
*/
$method=|qreal|x|

/*
qreal y () const
*/
$method=|qreal|y|

$extraMethods

#pragma ENDDUMP
