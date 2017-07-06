$header

#include "hbclass.ch"

CLASS QXmlLexicalHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD comment
   METHOD endCDATA
   METHOD endDTD
   METHOD endEntity
   METHOD errorString
   METHOD startCDATA
   METHOD startDTD
   METHOD startEntity

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
virtual bool comment ( const QString & ch ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_COMMENT )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->comment ( PQSTRING(1) ) );
  }
}


/*
virtual bool endCDATA () = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ENDCDATA )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->endCDATA () );
  }
}


/*
virtual bool endDTD () = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ENDDTD )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->endDTD () );
  }
}


/*
virtual bool endEntity ( const QString & name ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ENDENTITY )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->endEntity ( PQSTRING(1) ) );
  }
}


/*
virtual QString errorString () const = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ERRORSTRING )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
virtual bool startCDATA () = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_STARTCDATA )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->startCDATA () );
  }
}


/*
virtual bool startDTD ( const QString & name, const QString & publicId, const QString & systemId ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_STARTDTD )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->startDTD ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
  }
}


/*
virtual bool startEntity ( const QString & name ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_STARTENTITY )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->startEntity ( PQSTRING(1) ) );
  }
}



$extraMethods

#pragma ENDDUMP
