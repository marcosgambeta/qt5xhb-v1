$header

#include "hbclass.ch"

CLASS QXmlDTDHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD errorString
   METHOD notationDecl
   METHOD unparsedEntityDecl

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
HB_FUNC_STATIC( QXMLDTDHANDLER_ERRORSTRING )
{
  QXmlDTDHandler * obj = (QXmlDTDHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
virtual bool notationDecl ( const QString & name, const QString & publicId, const QString & systemId ) = 0
*/
HB_FUNC_STATIC( QXMLDTDHANDLER_NOTATIONDECL )
{
  QXmlDTDHandler * obj = (QXmlDTDHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->notationDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
  }
}


/*
virtual bool unparsedEntityDecl ( const QString & name, const QString & publicId, const QString & systemId, const QString & notationName ) = 0
*/
HB_FUNC_STATIC( QXMLDTDHANDLER_UNPARSEDENTITYDECL )
{
  QXmlDTDHandler * obj = (QXmlDTDHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->unparsedEntityDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4) ) );
  }
}



$extraMethods

#pragma ENDDUMP
