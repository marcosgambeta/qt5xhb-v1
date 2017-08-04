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
$method=|QRectF|contentsRect|

/*
QSizeF effectiveSizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
*/
$method=|QSizeF|effectiveSizeHint|Qt::SizeHint,const QSizeF &=QSizeF()

/*
QRectF geometry () const
*/
$method=|QRectF|geometry|

/*
virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
$method=|void|getContentsMargins|qreal *,qreal *,qreal *,qreal *

/*
QGraphicsItem * graphicsItem () const
*/
$method=|QGraphicsItem *|graphicsItem|

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
$method=|QSizeF|maximumSize|

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
$method=|QSizeF|minimumSize|

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
$method=|QGraphicsLayoutItem *|parentLayoutItem|

/*
qreal preferredHeight () const
*/
$method=|qreal|preferredHeight|

/*
QSizeF preferredSize () const
*/
$method=|QSizeF|preferredSize|

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
$internalMethod=|void|setMaximumSize,setMaximumSize1|const QSizeF &

/*
void setMaximumSize ( qreal w, qreal h )
*/
$internalMethod=|void|setMaximumSize,setMaximumSize2|qreal,qreal

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
$internalMethod=|void|setMinimumSize,setMinimumSize1|const QSizeF &

/*
void setMinimumSize ( qreal w, qreal h )
*/
$internalMethod=|void|setMinimumSize,setMinimumSize2|qreal,qreal

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
$internalMethod=|void|setPreferredSize,setPreferredSize1|const QSizeF &

/*
void setPreferredSize ( qreal w, qreal h )
*/
$internalMethod=|void|setPreferredSize,setPreferredSize2|qreal,qreal

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
$internalMethod=|void|setSizePolicy,setSizePolicy1|const QSizePolicy &

/*
void setSizePolicy ( QSizePolicy::Policy hPolicy, QSizePolicy::Policy vPolicy, QSizePolicy::ControlType controlType = QSizePolicy::DefaultType )
*/
$internalMethod=|void|setSizePolicy,setSizePolicy2|QSizePolicy::Policy,QSizePolicy::Policy,QSizePolicy::ControlType=QSizePolicy::DefaultType

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
$method=|QSizePolicy|sizePolicy|

/*
virtual void updateGeometry ()
*/
$method=|void|updateGeometry|

$extraMethods

#pragma ENDDUMP
