$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTSTRING
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptValueIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD flags
   METHOD hasNext
   METHOD hasPrevious
   METHOD name
   METHOD next
   METHOD previous
   METHOD remove
   METHOD scriptName
   METHOD setValue
   METHOD toBack
   METHOD toFront
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

#include <QScriptString>

/*
QScriptValueIterator(const QScriptValue & object)
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_NEW )
{
  QScriptValueIterator * o = new QScriptValueIterator ( *PQSCRIPTVALUE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QScriptValue::PropertyFlags flags() const
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_FLAGS )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->flags () );
  }
}


/*
bool hasNext() const
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_HASNEXT )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasNext () );
  }
}


/*
bool hasPrevious() const
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_HASPREVIOUS )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasPrevious () );
  }
}


/*
QString name() const
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_NAME )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
void next()
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_NEXT )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->next ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void previous()
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_PREVIOUS )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->previous ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void remove()
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_REMOVE )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->remove ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScriptString scriptName() const
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_SCRIPTNAME )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptString * ptr = new QScriptString( obj->scriptName () );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTSTRING" );
  }
}


/*
void setValue(const QScriptValue & value)
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_SETVALUE )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setValue ( *PQSCRIPTVALUE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void toBack()
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_TOBACK )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->toBack ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void toFront()
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_TOFRONT )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->toFront ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScriptValue value() const
*/
HB_FUNC_STATIC( QSCRIPTVALUEITERATOR_VALUE )
{
  QScriptValueIterator * obj = (QScriptValueIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->value () );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}



$extraMethods

#pragma ENDDUMP
