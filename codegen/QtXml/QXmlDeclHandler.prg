$header

#include "hbclass.ch"

CLASS QXmlDeclHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD attributeDecl
   METHOD errorString
   METHOD externalEntityDecl
   METHOD internalEntityDecl

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
virtual bool attributeDecl ( const QString & eName, const QString & aName, const QString & type, const QString & valueDefault, const QString & value ) = 0
*/
HB_FUNC_STATIC( QXMLDECLHANDLER_ATTRIBUTEDECL )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->attributeDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5) ) );
  }
}


/*
virtual QString errorString () const = 0
*/
HB_FUNC_STATIC( QXMLDECLHANDLER_ERRORSTRING )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
virtual bool externalEntityDecl ( const QString & name, const QString & publicId, const QString & systemId ) = 0
*/
HB_FUNC_STATIC( QXMLDECLHANDLER_EXTERNALENTITYDECL )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->externalEntityDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
  }
}


/*
virtual bool internalEntityDecl ( const QString & name, const QString & value ) = 0
*/
HB_FUNC_STATIC( QXMLDECLHANDLER_INTERNALENTITYDECL )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->internalEntityDecl ( PQSTRING(1), PQSTRING(2) ) );
  }
}



$extraMethods

#pragma ENDDUMP
