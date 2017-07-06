$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QQmlIncubator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD forceCompletion
   METHOD incubationMode
   METHOD isError
   METHOD isLoading
   METHOD isNull
   METHOD isReady
   METHOD object
   METHOD status

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
QQmlIncubator(IncubationMode mode = Asynchronous)
*/
HB_FUNC_STATIC( QQMLINCUBATOR_NEW )
{
  int par1 = ISNIL(1)? (int) QQmlIncubator::Asynchronous : hb_parni(1);
  QQmlIncubator * o = new QQmlIncubator ( (QQmlIncubator::IncubationMode) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void clear()
*/
HB_FUNC_STATIC( QQMLINCUBATOR_CLEAR )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void forceCompletion()
*/
HB_FUNC_STATIC( QQMLINCUBATOR_FORCECOMPLETION )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->forceCompletion ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
IncubationMode incubationMode() const
*/
HB_FUNC_STATIC( QQMLINCUBATOR_INCUBATIONMODE )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->incubationMode () );
  }
}


/*
bool isError() const
*/
HB_FUNC_STATIC( QQMLINCUBATOR_ISERROR )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isError () );
  }
}


/*
bool isLoading() const
*/
HB_FUNC_STATIC( QQMLINCUBATOR_ISLOADING )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isLoading () );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QQMLINCUBATOR_ISNULL )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
bool isReady() const
*/
HB_FUNC_STATIC( QQMLINCUBATOR_ISREADY )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isReady () );
  }
}


/*
QObject * object() const
*/
HB_FUNC_STATIC( QQMLINCUBATOR_OBJECT )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->object ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
Status status() const
*/
HB_FUNC_STATIC( QQMLINCUBATOR_STATUS )
{
  QQmlIncubator * obj = (QQmlIncubator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status () );
  }
}



$extraMethods

#pragma ENDDUMP
