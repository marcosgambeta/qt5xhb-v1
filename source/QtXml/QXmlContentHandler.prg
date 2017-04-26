/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QXmlContentHandler

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD characters
   METHOD endDocument
   METHOD endElement
   METHOD endPrefixMapping
   METHOD errorString
   METHOD ignorableWhitespace
   METHOD processingInstruction
   METHOD setDocumentLocator
   METHOD skippedEntity
   METHOD startDocument
   METHOD startElement
   METHOD startPrefixMapping

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlContentHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXmlContentHandler>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlContentHandler>
#endif

HB_FUNC_STATIC( QXMLCONTENTHANDLER_DELETE )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool characters ( const QString & ch ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_CHARACTERS )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->characters ( par1 ) );
  }
}


/*
virtual bool endDocument () = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_ENDDOCUMENT )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->endDocument (  ) );
  }
}


/*
virtual bool endElement ( const QString & namespaceURI, const QString & localName, const QString & qName ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_ENDELEMENT )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    hb_retl( obj->endElement ( par1, par2, par3 ) );
  }
}


/*
virtual bool endPrefixMapping ( const QString & prefix ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_ENDPREFIXMAPPING )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->endPrefixMapping ( par1 ) );
  }
}


/*
virtual QString errorString () const = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_ERRORSTRING )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
virtual bool ignorableWhitespace ( const QString & ch ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_IGNORABLEWHITESPACE )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->ignorableWhitespace ( par1 ) );
  }
}


/*
virtual bool processingInstruction ( const QString & target, const QString & data ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_PROCESSINGINSTRUCTION )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->processingInstruction ( par1, par2 ) );
  }
}


/*
virtual void setDocumentLocator ( QXmlLocator * locator ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_SETDOCUMENTLOCATOR )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlLocator * par1 = (QXmlLocator *) _qt5xhb_itemGetPtr(1);
    obj->setDocumentLocator ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool skippedEntity ( const QString & name ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_SKIPPEDENTITY )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->skippedEntity ( par1 ) );
  }
}


/*
virtual bool startDocument () = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_STARTDOCUMENT )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->startDocument (  ) );
  }
}


/*
virtual bool startElement ( const QString & namespaceURI, const QString & localName, const QString & qName, const QXmlAttributes & atts ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_STARTELEMENT )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    QXmlAttributes * par4 = (QXmlAttributes *) _qt5xhb_itemGetPtr(4);
    hb_retl( obj->startElement ( par1, par2, par3, *par4 ) );
  }
}


/*
virtual bool startPrefixMapping ( const QString & prefix, const QString & uri ) = 0
*/
HB_FUNC_STATIC( QXMLCONTENTHANDLER_STARTPREFIXMAPPING )
{
  QXmlContentHandler * obj = (QXmlContentHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->startPrefixMapping ( par1, par2 ) );
  }
}



HB_FUNC_STATIC( QXMLCONTENTHANDLER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QXMLCONTENTHANDLER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLCONTENTHANDLER_NEWFROM );
}

HB_FUNC_STATIC( QXMLCONTENTHANDLER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLCONTENTHANDLER_NEWFROM );
}

HB_FUNC_STATIC( QXMLCONTENTHANDLER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLCONTENTHANDLER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
