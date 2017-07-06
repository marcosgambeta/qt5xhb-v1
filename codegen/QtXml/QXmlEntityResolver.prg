$header

#include "hbclass.ch"

CLASS QXmlEntityResolver

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD errorString

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
virtual QString errorString () const = 0
*/
HB_FUNC_STATIC( QXMLENTITYRESOLVER_ERRORSTRING )
{
  QXmlEntityResolver * obj = (QXmlEntityResolver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}




$extraMethods

#pragma ENDDUMP
