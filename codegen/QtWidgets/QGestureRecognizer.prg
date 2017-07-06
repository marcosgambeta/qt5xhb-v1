$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGESTURE
#endif

CLASS QGestureRecognizer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD recognize
   METHOD reset
   METHOD registerRecognizer
   METHOD unregisterRecognizer

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
virtual QGesture * create(QObject * target)
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_CREATE )
{
  QGestureRecognizer * obj = (QGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGesture * ptr = obj->create ( PQOBJECT(1) );
    _qt5xhb_createReturnClass ( ptr, "QGESTURE" );
  }
}


/*
virtual Result recognize(QGesture * gesture, QObject * watched, QEvent * event) = 0
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_RECOGNIZE )
{
  QGestureRecognizer * obj = (QGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->recognize ( PQGESTURE(1), PQOBJECT(2), PQEVENT(3) ) );
  }
}


/*
virtual void reset(QGesture * gesture)
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_RESET )
{
  QGestureRecognizer * obj = (QGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset ( PQGESTURE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static Qt::GestureType registerRecognizer(QGestureRecognizer * recognizer)
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_REGISTERRECOGNIZER )
{
  hb_retni( QGestureRecognizer::registerRecognizer ( PQGESTURERECOGNIZER(1) ) );
}


/*
static void unregisterRecognizer(Qt::GestureType type)
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_UNREGISTERRECOGNIZER )
{
  QGestureRecognizer::unregisterRecognizer ( (Qt::GestureType) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
