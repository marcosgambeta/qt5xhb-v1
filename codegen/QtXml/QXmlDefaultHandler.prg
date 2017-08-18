$header

#include "hbclass.ch"

CLASS QXmlDefaultHandler INHERIT QXmlContentHandler,QXmlErrorHandler,QXmlDTDHandler,QXmlEntityResolver,QXmlLexicalHandler,QXmlDeclHandler

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

$destructor

#pragma BEGINDUMP

$includes

/*
QXmlDefaultHandler ()
*/
$constructor=|new|

$deleteMethod

/*
virtual bool attributeDecl ( const QString & eName, const QString & aName, const QString & type, const QString & valueDefault, const QString & value )
*/
$virtualMethod=|bool|attributeDecl|const QString &,const QString &,const QString &,const QString &,const QString &

/*
virtual bool characters ( const QString & ch )
*/
$virtualMethod=|bool|characters|const QString &

/*
virtual bool comment ( const QString & ch )
*/
$virtualMethod=|bool|comment|const QString &

/*
virtual bool endCDATA ()
*/
$virtualMethod=|bool|endCDATA|

/*
virtual bool endDTD ()
*/
$virtualMethod=|bool|endDTD|

/*
virtual bool endDocument ()
*/
$virtualMethod=|bool|endDocument|

/*
virtual bool endElement ( const QString & namespaceURI, const QString & localName, const QString & qName )
*/
$virtualMethod=|bool|endElement|const QString &,const QString &,const QString &

/*
virtual bool endEntity ( const QString & name )
*/
$virtualMethod=|bool|endEntity|const QString &

/*
virtual bool endPrefixMapping ( const QString & prefix )
*/
$virtualMethod=|bool|endPrefixMapping|const QString &

/*
virtual bool error ( const QXmlParseException & exception )
*/
$virtualMethod=|bool|error|const QXmlParseException &

/*
virtual QString errorString () const
*/
$virtualMethod=|QString|errorString|

/*
virtual bool externalEntityDecl ( const QString & name, const QString & publicId, const QString & systemId )
*/
$virtualMethod=|bool|externalEntityDecl|const QString &,const QString &,const QString &

/*
virtual bool fatalError ( const QXmlParseException & exception )
*/
$virtualMethod=|bool|fatalError|const QXmlParseException &

/*
virtual bool ignorableWhitespace ( const QString & ch )
*/
$virtualMethod=|bool|ignorableWhitespace|const QString &

/*
virtual bool internalEntityDecl ( const QString & name, const QString & value )
*/
$virtualMethod=|bool|internalEntityDecl|const QString &,const QString &

/*
virtual bool notationDecl ( const QString & name, const QString & publicId, const QString & systemId )
*/
$virtualMethod=|bool|notationDecl|const QString &,const QString &,const QString &

/*
virtual bool processingInstruction ( const QString & target, const QString & data )
*/
$virtualMethod=|bool|processingInstruction|const QString &,const QString &

/*
virtual void setDocumentLocator ( QXmlLocator * locator )
*/
$virtualMethod=|void|setDocumentLocator|QXmlLocator *

/*
virtual bool skippedEntity ( const QString & name )
*/
$virtualMethod=|bool|skippedEntity|const QString &

/*
virtual bool startCDATA ()
*/
$virtualMethod=|bool|startCDATA|

/*
virtual bool startDTD ( const QString & name, const QString & publicId, const QString & systemId )
*/
$virtualMethod=|bool|startDTD|const QString &,const QString &,const QString &

/*
virtual bool startDocument ()
*/
$virtualMethod=|bool|startDocument|

/*
virtual bool startElement ( const QString & namespaceURI, const QString & localName, const QString & qName, const QXmlAttributes & atts )
*/
$virtualMethod=|bool|startElement|const QString &,const QString &,const QString &,const QXmlAttributes &

/*
virtual bool startEntity ( const QString & name )
*/
$virtualMethod=|bool|startEntity|const QString &

/*
virtual bool startPrefixMapping ( const QString & prefix, const QString & uri )
*/
$virtualMethod=|bool|startPrefixMapping|const QString &,const QString &

/*
virtual bool unparsedEntityDecl ( const QString & name, const QString & publicId, const QString & systemId, const QString & notationName )
*/
$virtualMethod=|bool|unparsedEntityDecl|const QString &,const QString &,const QString &,const QString &

/*
virtual bool warning ( const QXmlParseException & exception )
*/
$virtualMethod=|bool|warning|const QXmlParseException &

#pragma ENDDUMP
