$header

#include "hbclass.ch"

CLASS QXmlErrorHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD error
   METHOD errorString
   METHOD fatalError
   METHOD warning

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
virtual bool error ( const QXmlParseException & exception ) = 0
*/
HB_FUNC_STATIC( QXMLERRORHANDLER_ERROR )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->error ( *PQXMLPARSEEXCEPTION(1) ) );
  }
}


/*
virtual QString errorString () const = 0
*/
HB_FUNC_STATIC( QXMLERRORHANDLER_ERRORSTRING )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
virtual bool fatalError ( const QXmlParseException & exception ) = 0
*/
HB_FUNC_STATIC( QXMLERRORHANDLER_FATALERROR )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->fatalError ( *PQXMLPARSEEXCEPTION(1) ) );
  }
}


/*
virtual bool warning ( const QXmlParseException & exception ) = 0
*/
HB_FUNC_STATIC( QXMLERRORHANDLER_WARNING )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->warning ( *PQXMLPARSEEXCEPTION(1) ) );
  }
}



$extraMethods

#pragma ENDDUMP
