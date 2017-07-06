$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QHelpContentItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD child
   METHOD childCount
   METHOD childPosition
   METHOD parent
   METHOD row
   METHOD title
   METHOD url

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

#include <QUrl>

$deleteMethod

/*
QHelpContentItem * child ( int row ) const
*/
HB_FUNC_STATIC( QHELPCONTENTITEM_CHILD )
{
  QHelpContentItem * obj = (QHelpContentItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpContentItem * ptr = obj->child ( PINT(1) );
    _qt5xhb_createReturnClass ( ptr, "QHELPCONTENTITEM" );
  }
}


/*
int childCount () const
*/
HB_FUNC_STATIC( QHELPCONTENTITEM_CHILDCOUNT )
{
  QHelpContentItem * obj = (QHelpContentItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->childCount () );
  }
}


/*
int childPosition ( QHelpContentItem * child ) const
*/
HB_FUNC_STATIC( QHELPCONTENTITEM_CHILDPOSITION )
{
  QHelpContentItem * obj = (QHelpContentItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpContentItem * par1 = (QHelpContentItem *) _qt5xhb_itemGetPtr(1);
    RINT( obj->childPosition ( par1 ) );
  }
}


/*
QHelpContentItem * parent () const
*/
HB_FUNC_STATIC( QHELPCONTENTITEM_PARENT )
{
  QHelpContentItem * obj = (QHelpContentItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpContentItem * ptr = obj->parent ();
    _qt5xhb_createReturnClass ( ptr, "QHELPCONTENTITEM" );
  }
}


/*
int row () const
*/
HB_FUNC_STATIC( QHELPCONTENTITEM_ROW )
{
  QHelpContentItem * obj = (QHelpContentItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->row () );
  }
}


/*
QString title () const
*/
HB_FUNC_STATIC( QHELPCONTENTITEM_TITLE )
{
  QHelpContentItem * obj = (QHelpContentItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->title () );
  }
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QHELPCONTENTITEM_URL )
{
  QHelpContentItem * obj = (QHelpContentItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}



$extraMethods

#pragma ENDDUMP
