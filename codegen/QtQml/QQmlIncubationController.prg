$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQMLENGINE
#endif

CLASS QQmlIncubationController

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD engine
   METHOD incubateFor
   METHOD incubateWhile
   METHOD incubatingObjectCount

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
QQmlIncubationController()
*/
HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_NEW )
{
  QQmlIncubationController * o = new QQmlIncubationController ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QQmlEngine * engine() const
*/
HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_ENGINE )
{
  QQmlIncubationController * obj = (QQmlIncubationController *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlEngine * ptr = obj->engine ();
    _qt5xhb_createReturnClass ( ptr, "QQMLENGINE" );
  }
}


/*
void incubateFor(int msecs)
*/
HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_INCUBATEFOR )
{
  QQmlIncubationController * obj = (QQmlIncubationController *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->incubateFor ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void incubateWhile(volatile bool * flag, int msecs = 0)
*/
HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_INCUBATEWHILE )
{
  QQmlIncubationController * obj = (QQmlIncubationController *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    obj->incubateWhile ( &par1, OPINT(2,0) );
    hb_storl( par1, 1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int incubatingObjectCount() const
*/
HB_FUNC_STATIC( QQMLINCUBATIONCONTROLLER_INCUBATINGOBJECTCOUNT )
{
  QQmlIncubationController * obj = (QQmlIncubationController *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->incubatingObjectCount () );
  }
}



$extraMethods

#pragma ENDDUMP
