$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QLAYOUT
REQUEST QSIZE
REQUEST QSPACERITEM
REQUEST QWIDGET
#endif

CLASS QLayoutItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD alignment
   METHOD controlTypes
   METHOD expandingDirections
   METHOD geometry
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD isEmpty
   METHOD layout
   METHOD maximumSize
   METHOD minimumHeightForWidth
   METHOD minimumSize
   METHOD setAlignment
   METHOD setGeometry
   METHOD sizeHint
   METHOD spacerItem
   METHOD widget

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
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QLAYOUTITEM_ALIGNMENT )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->alignment () );
  }
}

/*
QSizePolicy::ControlTypes controlTypes () const
*/
HB_FUNC_STATIC( QLAYOUTITEM_CONTROLTYPES )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->controlTypes () );
  }
}

/*
virtual Qt::Orientations expandingDirections () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_EXPANDINGDIRECTIONS )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->expandingDirections () );
  }
}

/*
virtual QRect geometry () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_GEOMETRY )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
virtual bool hasHeightForWidth () const
*/
HB_FUNC_STATIC( QLAYOUTITEM_HASHEIGHTFORWIDTH )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasHeightForWidth () );
  }
}

/*
virtual int heightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QLAYOUTITEM_HEIGHTFORWIDTH )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->heightForWidth ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QLAYOUTITEM_INVALIDATE )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->invalidate ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isEmpty () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_ISEMPTY )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
virtual QLayout * layout ()
*/
HB_FUNC_STATIC( QLAYOUTITEM_LAYOUT )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLayout * ptr = obj->layout ();
    _qt5xhb_createReturnClass ( ptr, "QLAYOUT" );
  }
}

/*
virtual QSize maximumSize () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_MAXIMUMSIZE )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual int minimumHeightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QLAYOUTITEM_MINIMUMHEIGHTFORWIDTH )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->minimumHeightForWidth ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QSize minimumSize () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_MINIMUMSIZE )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QLAYOUTITEM_SETALIGNMENT )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setAlignment ( (Qt::Alignment) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setGeometry ( const QRect & r ) = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_SETGEOMETRY )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setGeometry ( *PQRECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize sizeHint () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_SIZEHINT )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSpacerItem * spacerItem ()
*/
HB_FUNC_STATIC( QLAYOUTITEM_SPACERITEM )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSpacerItem * ptr = obj->spacerItem ();
    _qt5xhb_createReturnClass ( ptr, "QSPACERITEM" );
  }
}

/*
virtual QWidget * widget ()
*/
HB_FUNC_STATIC( QLAYOUTITEM_WIDGET )
{
  QLayoutItem * obj = (QLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->widget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

$extraMethods

#pragma ENDDUMP
