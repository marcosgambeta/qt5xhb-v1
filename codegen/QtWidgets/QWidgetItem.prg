$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QWidgetItem INHERIT QLayoutItem

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD controlTypes
   METHOD expandingDirections
   METHOD geometry
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD isEmpty
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD widget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QWidgetItem(QWidget * widget)
*/
HB_FUNC_STATIC( QWIDGETITEM_NEW )
{
  QWidgetItem * o = new QWidgetItem ( PQWIDGET(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
virtual QSizePolicy::ControlTypes controlTypes() const
*/
HB_FUNC_STATIC( QWIDGETITEM_CONTROLTYPES )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->controlTypes () );
  }
}


/*
virtual Qt::Orientations expandingDirections() const
*/
HB_FUNC_STATIC( QWIDGETITEM_EXPANDINGDIRECTIONS )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->expandingDirections () );
  }
}


/*
virtual QRect geometry() const
*/
HB_FUNC_STATIC( QWIDGETITEM_GEOMETRY )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual bool hasHeightForWidth() const
*/
HB_FUNC_STATIC( QWIDGETITEM_HASHEIGHTFORWIDTH )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasHeightForWidth () );
  }
}


/*
virtual int heightForWidth(int w) const
*/
HB_FUNC_STATIC( QWIDGETITEM_HEIGHTFORWIDTH )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->heightForWidth ( PINT(1) ) );
  }
}


/*
virtual bool isEmpty() const
*/
HB_FUNC_STATIC( QWIDGETITEM_ISEMPTY )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
virtual QSize maximumSize() const
*/
HB_FUNC_STATIC( QWIDGETITEM_MAXIMUMSIZE )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize minimumSize() const
*/
HB_FUNC_STATIC( QWIDGETITEM_MINIMUMSIZE )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void setGeometry(const QRect & rect)
*/
HB_FUNC_STATIC( QWIDGETITEM_SETGEOMETRY )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGeometry ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC( QWIDGETITEM_SIZEHINT )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QWidget * widget()
*/
HB_FUNC_STATIC( QWIDGETITEM_WIDGET )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->widget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}



#pragma ENDDUMP
