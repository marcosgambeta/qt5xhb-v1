$header

#include "hbclass.ch"

CLASS QQmlParserStatus

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD classBegin
   METHOD componentComplete

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
virtual void classBegin() = 0
*/
HB_FUNC_STATIC( QQMLPARSERSTATUS_CLASSBEGIN )
{
  QQmlParserStatus * obj = (QQmlParserStatus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->classBegin ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void componentComplete() = 0
*/
HB_FUNC_STATIC( QQMLPARSERSTATUS_COMPONENTCOMPLETE )
{
  QQmlParserStatus * obj = (QQmlParserStatus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->componentComplete ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



$extraMethods

#pragma ENDDUMP
