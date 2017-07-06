$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QGRAPHICSITEM
REQUEST QSIZEPOLICY
#endif

CLASS QGraphicsLayoutItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD contentsRect
   METHOD effectiveSizeHint
   METHOD geometry
   METHOD getContentsMargins
   METHOD graphicsItem
   METHOD isLayout
   METHOD maximumHeight
   METHOD maximumSize
   METHOD maximumWidth
   METHOD minimumHeight
   METHOD minimumSize
   METHOD minimumWidth
   METHOD ownedByLayout
   METHOD parentLayoutItem
   METHOD preferredHeight
   METHOD preferredSize
   METHOD preferredWidth
   METHOD setGeometry
   METHOD setMaximumHeight
   METHOD setMaximumSize
   METHOD setMaximumWidth
   METHOD setMinimumHeight
   METHOD setMinimumSize
   METHOD setMinimumWidth
   METHOD setParentLayoutItem
   METHOD setPreferredHeight
   METHOD setPreferredSize
   METHOD setPreferredWidth
   METHOD setSizePolicy
   METHOD sizePolicy
   METHOD updateGeometry

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

$deleteMethod

/*
QRectF contentsRect () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_CONTENTSRECT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->contentsRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QSizeF effectiveSizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_EFFECTIVESIZEHINT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF par2 = ISNIL(2)? QSizeF() : *(QSizeF *) _qt5xhb_itemGetPtr(2);
    QSizeF * ptr = new QSizeF( obj->effectiveSizeHint ( (Qt::SizeHint) hb_parni(1), par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

/*
QRectF geometry () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_GEOMETRY )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->geometry () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_GETCONTENTSMARGINS )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getContentsMargins ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QGraphicsItem * graphicsItem () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_GRAPHICSITEM )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsItem * ptr = obj->graphicsItem ();
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

/*
bool isLayout () const
*/
$method=|bool|isLayout|

/*
qreal maximumHeight () const
*/
$method=|qreal|maximumHeight|

/*
QSizeF maximumSize () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_MAXIMUMSIZE )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->maximumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

/*
qreal maximumWidth () const
*/
$method=|qreal|maximumWidth|

/*
qreal minimumHeight () const
*/
$method=|qreal|minimumHeight|

/*
QSizeF minimumSize () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_MINIMUMSIZE )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->minimumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

/*
qreal minimumWidth () const
*/
$method=|qreal|minimumWidth|

/*
bool ownedByLayout () const
*/
$method=|bool|ownedByLayout|

/*
QGraphicsLayoutItem * parentLayoutItem () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_PARENTLAYOUTITEM )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * ptr = obj->parentLayoutItem ();
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
  }
}

/*
qreal preferredHeight () const
*/
$method=|qreal|preferredHeight|

/*
QSizeF preferredSize () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_PREFERREDSIZE )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->preferredSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

/*
qreal preferredWidth () const
*/
$method=|qreal|preferredWidth|

/*
virtual void setGeometry ( const QRectF & rect )
*/
$method=|void|setGeometry|const QRectF &

/*
void setMaximumHeight ( qreal height )
*/
$method=|void|setMaximumHeight|qreal

/*
void setMaximumSize ( const QSizeF & size )
*/
void QGraphicsLayoutItem_setMaximumSize1 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximumSize ( *PQSIZEF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaximumSize ( qreal w, qreal h )
*/
void QGraphicsLayoutItem_setMaximumSize2 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximumSize ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setMaximumSize ( const QSizeF & size )
//[2]void setMaximumSize ( qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMAXIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsLayoutItem_setMaximumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsLayoutItem_setMaximumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMaximumWidth ( qreal width )
*/
$method=|void|setMaximumWidth|qreal

/*
void setMinimumHeight ( qreal height )
*/
$method=|void|setMinimumHeight|qreal

/*
void setMinimumSize ( const QSizeF & size )
*/
void QGraphicsLayoutItem_setMinimumSize1 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinimumSize ( *PQSIZEF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMinimumSize ( qreal w, qreal h )
*/
void QGraphicsLayoutItem_setMinimumSize2 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinimumSize ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setMinimumSize ( const QSizeF & size )
//[2]void setMinimumSize ( qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMINIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsLayoutItem_setMinimumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsLayoutItem_setMinimumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMinimumWidth ( qreal width )
*/
$method=|void|setMinimumWidth|qreal

/*
void setParentLayoutItem ( QGraphicsLayoutItem * parent )
*/
$method=|void|setParentLayoutItem|QGraphicsLayoutItem *

/*
void setPreferredHeight ( qreal height )
*/
$method=|void|setPreferredHeight|qreal

/*
void setPreferredSize ( const QSizeF & size )
*/
void QGraphicsLayoutItem_setPreferredSize1 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPreferredSize ( *PQSIZEF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPreferredSize ( qreal w, qreal h )
*/
void QGraphicsLayoutItem_setPreferredSize2 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPreferredSize ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setPreferredSize ( const QSizeF & size )
//[2]void setPreferredSize ( qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETPREFERREDSIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsLayoutItem_setPreferredSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsLayoutItem_setPreferredSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPreferredWidth ( qreal width )
*/
$method=|void|setPreferredWidth|qreal

/*
void setSizePolicy ( const QSizePolicy & policy )
*/
void QGraphicsLayoutItem_setSizePolicy1 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSizePolicy ( *PQSIZEPOLICY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizePolicy ( QSizePolicy::Policy hPolicy, QSizePolicy::Policy vPolicy, QSizePolicy::ControlType controlType = QSizePolicy::DefaultType )
*/
void QGraphicsLayoutItem_setSizePolicy2 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = ISNIL(3)? (int) QSizePolicy::DefaultType : hb_parni(3);
    obj->setSizePolicy ( (QSizePolicy::Policy) hb_parni(1), (QSizePolicy::Policy) hb_parni(2), (QSizePolicy::ControlType) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setSizePolicy ( const QSizePolicy & policy )
//[2]void setSizePolicy ( QSizePolicy::Policy hPolicy, QSizePolicy::Policy vPolicy, QSizePolicy::ControlType controlType = QSizePolicy::DefaultType )

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETSIZEPOLICY )
{
  if( ISNUMPAR(1) && ISQSIZEPOLICY(1) )
  {
    QGraphicsLayoutItem_setSizePolicy1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QGraphicsLayoutItem_setSizePolicy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSizePolicy sizePolicy () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SIZEPOLICY )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizePolicy * ptr = new QSizePolicy( obj->sizePolicy () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEPOLICY", true );
  }
}

/*
virtual void updateGeometry ()
*/
$method=|void|updateGeometry|

$extraMethods

#pragma ENDDUMP
