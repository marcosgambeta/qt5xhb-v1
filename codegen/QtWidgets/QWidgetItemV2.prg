$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QWidgetItemV2 INHERIT QWidgetItem

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD sizeHint
   METHOD minimumSize
   METHOD maximumSize
   METHOD heightForWidth

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QWidgetItemV2(QWidget *widget)
*/
HB_FUNC_STATIC( QWIDGETITEMV2_NEW )
{
  QWidgetItemV2 * o = new QWidgetItemV2 ( PQWIDGET(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QSize sizeHint() const
*/
HB_FUNC_STATIC( QWIDGETITEMV2_SIZEHINT )
{
  QWidgetItemV2 * obj = (QWidgetItemV2 *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QSize minimumSize() const
*/
HB_FUNC_STATIC( QWIDGETITEMV2_MINIMUMSIZE )
{
  QWidgetItemV2 * obj = (QWidgetItemV2 *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QSize maximumSize() const
*/
HB_FUNC_STATIC( QWIDGETITEMV2_MAXIMUMSIZE )
{
  QWidgetItemV2 * obj = (QWidgetItemV2 *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
int heightForWidth(int width) const
*/
HB_FUNC_STATIC( QWIDGETITEMV2_HEIGHTFORWIDTH )
{
  QWidgetItemV2 * obj = (QWidgetItemV2 *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->heightForWidth ( PINT(1) ) );
  }
}



#pragma ENDDUMP
