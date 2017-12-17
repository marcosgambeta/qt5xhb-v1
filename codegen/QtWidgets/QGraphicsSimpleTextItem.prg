$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsSimpleTextItem INHERIT QAbstractGraphicsShapeItem

   METHOD new
   METHOD delete
   METHOD font
   METHOD setFont
   METHOD setText
   METHOD text
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QFont>

$prototype=QGraphicsSimpleTextItem ( QGraphicsItem * parent = 0 )
$internalConstructor=|new1|QGraphicsItem *=0

$prototype=QGraphicsSimpleTextItem ( const QString & text, QGraphicsItem * parent = 0 )
$internalConstructor=|new2|const QString &,QGraphicsItem *=0

//[1]QGraphicsSimpleTextItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsSimpleTextItem ( const QString & text, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsSimpleTextItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsSimpleTextItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QFont font () const
$method=|QFont|font|

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=QString text () const
$method=|QString|text|

$prototype=virtual QRectF boundingRect () const
$method=|QRectF|boundingRect|

$prototype=virtual bool contains ( const QPointF & point ) const
$method=|bool|contains|const QPointF &

$prototype=virtual bool isObscuredBy ( const QGraphicsItem * item ) const
$method=|bool|isObscuredBy|const QGraphicsItem *

$prototype=virtual QPainterPath opaqueArea () const
$method=|QPainterPath|opaqueArea|

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
$method=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *

$prototype=virtual QPainterPath shape () const
$method=|QPainterPath|shape|

$prototype=virtual int type () const
$method=|int|type|

#pragma ENDDUMP
