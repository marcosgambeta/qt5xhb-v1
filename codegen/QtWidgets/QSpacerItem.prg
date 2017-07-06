$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QSpacerItem INHERIT QLayoutItem

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD changeSize
   METHOD expandingDirections
   METHOD geometry
   METHOD isEmpty
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD spacerItem

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSpacerItem(int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum)
*/
HB_FUNC_STATIC( QSPACERITEM_NEW )
{
  int par3 = ISNIL(3)? (int) QSizePolicy::Minimum : hb_parni(3);
  int par4 = ISNIL(4)? (int) QSizePolicy::Minimum : hb_parni(4);
  QSpacerItem * o = new QSpacerItem ( PINT(1), PINT(2), (QSizePolicy::Policy) par3, (QSizePolicy::Policy) par4 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void changeSize(int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum)
*/
HB_FUNC_STATIC( QSPACERITEM_CHANGESIZE )
{
  QSpacerItem * obj = (QSpacerItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = ISNIL(3)? (int) QSizePolicy::Minimum : hb_parni(3);
    int par4 = ISNIL(4)? (int) QSizePolicy::Minimum : hb_parni(4);
    obj->changeSize ( PINT(1), PINT(2), (QSizePolicy::Policy) par3, (QSizePolicy::Policy) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual Qt::Orientations expandingDirections() const
*/
HB_FUNC_STATIC( QSPACERITEM_EXPANDINGDIRECTIONS )
{
  QSpacerItem * obj = (QSpacerItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->expandingDirections () );
  }
}


/*
virtual QRect geometry() const
*/
HB_FUNC_STATIC( QSPACERITEM_GEOMETRY )
{
  QSpacerItem * obj = (QSpacerItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual bool isEmpty() const
*/
HB_FUNC_STATIC( QSPACERITEM_ISEMPTY )
{
  QSpacerItem * obj = (QSpacerItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
virtual QSize maximumSize() const
*/
HB_FUNC_STATIC( QSPACERITEM_MAXIMUMSIZE )
{
  QSpacerItem * obj = (QSpacerItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize minimumSize() const
*/
HB_FUNC_STATIC( QSPACERITEM_MINIMUMSIZE )
{
  QSpacerItem * obj = (QSpacerItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void setGeometry(const QRect & r)
*/
HB_FUNC_STATIC( QSPACERITEM_SETGEOMETRY )
{
  QSpacerItem * obj = (QSpacerItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGeometry ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC( QSPACERITEM_SIZEHINT )
{
  QSpacerItem * obj = (QSpacerItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSpacerItem * spacerItem()
*/
HB_FUNC_STATIC( QSPACERITEM_SPACERITEM )
{
  QSpacerItem * obj = (QSpacerItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSpacerItem * ptr = obj->spacerItem ();
    _qt5xhb_createReturnClass ( ptr, "QSPACERITEM" );
  }
}



#pragma ENDDUMP
