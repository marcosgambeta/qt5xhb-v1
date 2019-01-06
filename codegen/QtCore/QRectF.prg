%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QRectF ()
$internalConstructor=|new1|

$prototype=QRectF ( const QPointF & topLeft, const QSizeF & size )
$internalConstructor=|new2|const QPointF &,const QSizeF &

$prototype=QRectF ( const QPointF & topLeft, const QPointF & bottomRight )
$internalConstructor=|new3|const QPointF &,const QPointF &

$prototype=QRectF ( qreal x, qreal y, qreal width, qreal height )
$internalConstructor=|new4|qreal,qreal,qreal,qreal

$prototype=QRectF ( const QRect & rectangle )
$internalConstructor=|new5|const QRect &

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

$prototype=void adjust ( qreal dx1, qreal dy1, qreal dx2, qreal dy2 )
$method=|void|adjust|qreal,qreal,qreal,qreal

$prototype=QRectF adjusted ( qreal dx1, qreal dy1, qreal dx2, qreal dy2 ) const
$method=|QRectF|adjusted|qreal,qreal,qreal,qreal

$prototype=qreal bottom () const
$method=|qreal|bottom|

$prototype=QPointF bottomLeft () const
$method=|QPointF|bottomLeft|

$prototype=QPointF bottomRight () const
$method=|QPointF|bottomRight|

$prototype=QPointF center () const
$method=|QPointF|center|

$prototype=bool contains ( const QPointF & point ) const
$internalMethod=|bool|contains,contains1|const QPointF &

$prototype=bool contains ( qreal x, qreal y ) const
$internalMethod=|bool|contains,contains2|qreal,qreal

$prototype=bool contains ( const QRectF & rectangle ) const
$internalMethod=|bool|contains,contains3|const QRectF &

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
$addMethod=contains

$prototype=void getCoords ( qreal * x1, qreal * y1, qreal * x2, qreal * y2 ) const
$method=|void|getCoords|qreal *,qreal *,qreal *,qreal *

$prototype=void getRect ( qreal * x, qreal * y, qreal * width, qreal * height ) const
$method=|void|getRect|qreal *,qreal *,qreal *,qreal *

$prototype=qreal height () const
$method=|qreal|height|

$prototype=QRectF intersected ( const QRectF & rectangle ) const
$method=|QRectF|intersected|const QRectF &

$prototype=bool intersects ( const QRectF & rectangle ) const
$method=|bool|intersects|const QRectF &

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=qreal left () const
$method=|qreal|left|

$prototype=void moveBottom ( qreal y )
$method=|void|moveBottom|qreal

$prototype=void moveBottomLeft ( const QPointF & position )
$method=|void|moveBottomLeft|const QPointF &

$prototype=void moveBottomRight ( const QPointF & position )
$method=|void|moveBottomRight|const QPointF &

$prototype=void moveCenter ( const QPointF & position )
$method=|void|moveCenter|const QPointF &

$prototype=void moveLeft ( qreal x )
$method=|void|moveLeft|qreal

$prototype=void moveRight ( qreal x )
$method=|void|moveRight|qreal

$prototype=void moveTo ( qreal x, qreal y )
$internalMethod=|void|moveTo,moveTo1|qreal,qreal

$prototype=void moveTo ( const QPointF & position )
$internalMethod=|void|moveTo,moveTo2|const QPointF &

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
$addMethod=moveTo

$prototype=void moveTop ( qreal y )
$method=|void|moveTop|qreal

$prototype=void moveTopLeft ( const QPointF & position )
$method=|void|moveTopLeft|const QPointF &

$prototype=void moveTopRight ( const QPointF & position )
$method=|void|moveTopRight|const QPointF &

$prototype=QRectF normalized () const
$method=|QRectF|normalized|

$prototype=qreal right () const
$method=|qreal|right|

$prototype=void setBottom ( qreal y )
$method=|void|setBottom|qreal

$prototype=void setBottomLeft ( const QPointF & position )
$method=|void|setBottomLeft|const QPointF &

$prototype=void setBottomRight ( const QPointF & position )
$method=|void|setBottomRight|const QPointF &

$prototype=void setCoords ( qreal x1, qreal y1, qreal x2, qreal y2 )
$method=|void|setCoords|qreal,qreal,qreal,qreal

$prototype=void setHeight ( qreal height )
$method=|void|setHeight|qreal

$prototype=void setLeft ( qreal x )
$method=|void|setLeft|qreal

$prototype=void setRect ( qreal x, qreal y, qreal width, qreal height )
$method=|void|setRect|qreal,qreal,qreal,qreal

$prototype=void setRight ( qreal x )
$method=|void|setRight|qreal

$prototype=void setSize ( const QSizeF & size )
$method=|void|setSize|const QSizeF &

$prototype=void setTop ( qreal y )
$method=|void|setTop|qreal

$prototype=void setTopLeft ( const QPointF & position )
$method=|void|setTopLeft|const QPointF &

$prototype=void setTopRight ( const QPointF & position )
$method=|void|setTopRight|const QPointF &

$prototype=void setWidth ( qreal width )
$method=|void|setWidth|qreal

$prototype=void setX ( qreal x )
$method=|void|setX|qreal

$prototype=void setY ( qreal y )
$method=|void|setY|qreal

$prototype=QSizeF size () const
$method=|QSizeF|size|

$prototype=QRect toAlignedRect () const
$method=|QRect|toAlignedRect|

$prototype=QRect toRect () const
$method=|QRect|toRect|

$prototype=qreal top () const
$method=|qreal|top|

$prototype=QPointF topLeft () const
$method=|QPointF|topLeft|

$prototype=QPointF topRight () const
$method=|QPointF|topRight|

$prototype=void translate ( qreal dx, qreal dy )
$internalMethod=|void|translate,translate1|qreal,qreal

$prototype=void translate ( const QPointF & offset )
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
$addMethod=translate

$prototype=QRectF translated ( qreal dx, qreal dy ) const
$internalMethod=|QRectF|translated,translated1|qreal,qreal

$prototype=QRectF translated ( const QPointF & offset ) const
$internalMethod=|QRectF|translated,translated2|const QPointF &

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
$addMethod=translated

$prototype=QRectF united ( const QRectF & rectangle ) const
$method=|QRectF|united|const QRectF &

$prototype=qreal width () const
$method=|qreal|width|

$prototype=qreal x () const
$method=|qreal|x|

$prototype=qreal y () const
$method=|qreal|y|

$extraMethods

#pragma ENDDUMP
