$header

#include "hbclass.ch"

CLASS QDeclarativeParserStatus

   DATA pointer
   DATA self_destruction INIT .F.

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

/*
virtual void classBegin () = 0
*/
HB_FUNC_STATIC( QDECLARATIVEPARSERSTATUS_CLASSBEGIN )
{
  QDeclarativeParserStatus * obj = (QDeclarativeParserStatus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->classBegin ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void componentComplete () = 0
*/
HB_FUNC_STATIC( QDECLARATIVEPARSERSTATUS_COMPONENTCOMPLETE )
{
  QDeclarativeParserStatus * obj = (QDeclarativeParserStatus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->componentComplete ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
