$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QXMLITEM
#endif

CLASS QXmlResultItems

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD current
   METHOD hasError
   METHOD next

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

#include <QXmlItem>

/*
QXmlResultItems ()
*/
HB_FUNC_STATIC( QXMLRESULTITEMS_NEW )
{
  QXmlResultItems * o = new QXmlResultItems ();
  _qt5xhb_storePointerAndFlag( o, true );
}

$deleteMethod

/*
QXmlItem current () const
*/
HB_FUNC_STATIC( QXMLRESULTITEMS_CURRENT )
{
  QXmlResultItems * obj = (QXmlResultItems *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlItem * ptr = new QXmlItem( obj->current () );
    _qt5xhb_createReturnClass ( ptr, "QXMLITEM", true );
  }
}


/*
bool hasError () const
*/
HB_FUNC_STATIC( QXMLRESULTITEMS_HASERROR )
{
  QXmlResultItems * obj = (QXmlResultItems *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasError () );
  }
}


/*
QXmlItem next ()
*/
HB_FUNC_STATIC( QXMLRESULTITEMS_NEXT )
{
  QXmlResultItems * obj = (QXmlResultItems *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlItem * ptr = new QXmlItem( obj->next () );
    _qt5xhb_createReturnClass ( ptr, "QXMLITEM", true );
  }
}



$extraMethods

#pragma ENDDUMP
