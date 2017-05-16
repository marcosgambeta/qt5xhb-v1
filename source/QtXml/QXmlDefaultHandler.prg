/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QXmlDefaultHandler INHERIT QXmlContentHandler,QXmlErrorHandler,QXmlDTDHandler,QXmlEntityResolver,QXmlLexicalHandler,QXmlDeclHandler

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD attributeDecl
   METHOD characters
   METHOD comment
   METHOD endCDATA
   METHOD endDTD
   METHOD endDocument
   METHOD endElement
   METHOD endEntity
   METHOD endPrefixMapping
   METHOD error
   METHOD errorString
   METHOD externalEntityDecl
   METHOD fatalError
   METHOD ignorableWhitespace
   METHOD internalEntityDecl
   METHOD notationDecl
   METHOD processingInstruction
   METHOD setDocumentLocator
   METHOD skippedEntity
   METHOD startCDATA
   METHOD startDTD
   METHOD startDocument
   METHOD startElement
   METHOD startEntity
   METHOD startPrefixMapping
   METHOD unparsedEntityDecl
   METHOD warning

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlDefaultHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXmlDefaultHandler>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlDefaultHandler>
#endif

/*
QXmlDefaultHandler ()
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_NEW )
{
  QXmlDefaultHandler * o = new QXmlDefaultHandler ();
  _qt5xhb_storePointerAndFlag( o, true );
}


HB_FUNC_STATIC( QXMLDEFAULTHANDLER_DELETE )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool attributeDecl ( const QString & eName, const QString & aName, const QString & type, const QString & valueDefault, const QString & value )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ATTRIBUTEDECL )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->attributeDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5) ) );
  }
}


/*
virtual bool characters ( const QString & ch )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_CHARACTERS )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->characters ( PQSTRING(1) ) );
  }
}


/*
virtual bool comment ( const QString & ch )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_COMMENT )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->comment ( PQSTRING(1) ) );
  }
}


/*
virtual bool endCDATA ()
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ENDCDATA )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->endCDATA () );
  }
}


/*
virtual bool endDTD ()
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ENDDTD )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->endDTD () );
  }
}


/*
virtual bool endDocument ()
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ENDDOCUMENT )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->endDocument () );
  }
}


/*
virtual bool endElement ( const QString & namespaceURI, const QString & localName, const QString & qName )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ENDELEMENT )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->endElement ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
  }
}


/*
virtual bool endEntity ( const QString & name )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ENDENTITY )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->endEntity ( PQSTRING(1) ) );
  }
}


/*
virtual bool endPrefixMapping ( const QString & prefix )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ENDPREFIXMAPPING )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->endPrefixMapping ( PQSTRING(1) ) );
  }
}


/*
virtual bool error ( const QXmlParseException & exception )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ERROR )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlParseException  * par1 = (QXmlParseException  *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->error ( *par1 ) );
  }
}


/*
virtual QString errorString () const
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ERRORSTRING )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->errorString () ) );
  }
}


/*
virtual bool externalEntityDecl ( const QString & name, const QString & publicId, const QString & systemId )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_EXTERNALENTITYDECL )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->externalEntityDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
  }
}


/*
virtual bool fatalError ( const QXmlParseException & exception )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_FATALERROR )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlParseException * par1 = (QXmlParseException *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->fatalError ( *par1 ) );
  }
}


/*
virtual bool ignorableWhitespace ( const QString & ch )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_IGNORABLEWHITESPACE )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->ignorableWhitespace ( PQSTRING(1) ) );
  }
}


/*
virtual bool internalEntityDecl ( const QString & name, const QString & value )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_INTERNALENTITYDECL )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->internalEntityDecl ( PQSTRING(1), PQSTRING(2) ) );
  }
}


/*
virtual bool notationDecl ( const QString & name, const QString & publicId, const QString & systemId )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_NOTATIONDECL )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->notationDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
  }
}


/*
virtual bool processingInstruction ( const QString & target, const QString & data )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_PROCESSINGINSTRUCTION )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->processingInstruction ( PQSTRING(1), PQSTRING(2) ) );
  }
}



/*
virtual void setDocumentLocator ( QXmlLocator * locator )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_SETDOCUMENTLOCATOR )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlLocator * par1 = (QXmlLocator *) _qt5xhb_itemGetPtr(1);
    obj->setDocumentLocator ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool skippedEntity ( const QString & name )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_SKIPPEDENTITY )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->skippedEntity ( PQSTRING(1) ) );
  }
}


/*
virtual bool startCDATA ()
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_STARTCDATA )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->startCDATA () );
  }
}


/*
virtual bool startDTD ( const QString & name, const QString & publicId, const QString & systemId )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_STARTDTD )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->startDTD ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
  }
}


/*
virtual bool startDocument ()
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_STARTDOCUMENT )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->startDocument () );
  }
}


/*
virtual bool startElement ( const QString & namespaceURI, const QString & localName, const QString & qName, const QXmlAttributes & atts )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_STARTELEMENT )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlAttributes * par4 = (QXmlAttributes *) _qt5xhb_itemGetPtr(4);
    hb_retl( obj->startElement ( PQSTRING(1), PQSTRING(2), PQSTRING(3), *par4 ) );
  }
}


/*
virtual bool startEntity ( const QString & name )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_STARTENTITY )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->startEntity ( PQSTRING(1) ) );
  }
}


/*
virtual bool startPrefixMapping ( const QString & prefix, const QString & uri )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_STARTPREFIXMAPPING )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->startPrefixMapping ( PQSTRING(1), PQSTRING(2) ) );
  }
}


/*
virtual bool unparsedEntityDecl ( const QString & name, const QString & publicId, const QString & systemId, const QString & notationName )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_UNPARSEDENTITYDECL )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->unparsedEntityDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4) ) );
  }
}


/*
virtual bool warning ( const QXmlParseException & exception )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_WARNING )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlParseException * par1 = (QXmlParseException *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->warning ( *par1 ) );
  }
}



#pragma ENDDUMP
