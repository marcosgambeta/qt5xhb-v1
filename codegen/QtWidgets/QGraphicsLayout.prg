$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSLAYOUTITEM
#endif

CLASS QGraphicsLayout INHERIT QGraphicsLayoutItem

   METHOD delete
   METHOD activate
   METHOD count
   METHOD invalidate
   METHOD isActivated
   METHOD itemAt
   METHOD removeAt
   METHOD setContentsMargins
   METHOD widgetEvent
   METHOD getContentsMargins
   METHOD updateGeometry
   METHOD instantInvalidatePropagation
   METHOD setInstantInvalidatePropagation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
void activate ()
*/
$method=|void|activate|

/*
virtual int count () const = 0
*/
$method=|int|count|

/*
virtual void invalidate ()
*/
$method=|void|invalidate|

/*
bool isActivated () const
*/
$method=|bool|isActivated|

/*
virtual QGraphicsLayoutItem * itemAt ( int i ) const = 0
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_ITEMAT )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      QGraphicsLayoutItem * ptr = obj->itemAt ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
virtual void removeAt ( int index ) = 0
*/
$method=|void|removeAt|int

/*
void setContentsMargins ( qreal left, qreal top, qreal right, qreal bottom )
*/
$method=|void|setContentsMargins|qreal,qreal,qreal,qreal

/*
virtual void widgetEvent ( QEvent * e )
*/
$method=|void|widgetEvent|QEvent *

/*
virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_GETCONTENTSMARGINS )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qt5xhb_itemGetPtrStackSelfItem();
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
virtual void updateGeometry ()
*/
$method=|void|updateGeometry|

/*
static bool instantInvalidatePropagation ()
*/
$staticMethod=|bool|instantInvalidatePropagation|

/*
static void setInstantInvalidatePropagation ( bool enable )
*/
$staticMethod=|void|setInstantInvalidatePropagation|bool

#pragma ENDDUMP
