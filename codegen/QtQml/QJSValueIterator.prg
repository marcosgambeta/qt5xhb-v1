$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QJSVALUE
#endif

CLASS QJSValueIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD hasNext
   METHOD name
   METHOD next
   METHOD value

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

/*
QJSValueIterator(const QJSValue & object)
*/
HB_FUNC_STATIC( QJSVALUEITERATOR_NEW )
{
  QJSValueIterator * o = new QJSValueIterator ( *PQJSVALUE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool hasNext() const
*/
HB_FUNC_STATIC( QJSVALUEITERATOR_HASNEXT )
{
  QJSValueIterator * obj = (QJSValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasNext () );
  }
}


/*
QString name() const
*/
HB_FUNC_STATIC( QJSVALUEITERATOR_NAME )
{
  QJSValueIterator * obj = (QJSValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
bool next()
*/
HB_FUNC_STATIC( QJSVALUEITERATOR_NEXT )
{
  QJSValueIterator * obj = (QJSValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->next () );
  }
}


/*
QJSValue value() const
*/
HB_FUNC_STATIC( QJSVALUEITERATOR_VALUE )
{
  QJSValueIterator * obj = (QJSValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJSValue * ptr = new QJSValue( obj->value () );
    _qt5xhb_createReturnClass ( ptr, "QJSVALUE" );
  }
}



$extraMethods

#pragma ENDDUMP
