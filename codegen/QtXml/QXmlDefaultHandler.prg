%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QXmlContentHandler,QXmlErrorHandler,QXmlDTDHandler,QXmlEntityResolver,QXmlLexicalHandler,QXmlDeclHandler

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlDefaultHandler ()
$constructor=|new|

$deleteMethod

$prototype=virtual bool attributeDecl ( const QString & eName, const QString & aName, const QString & type, const QString & valueDefault, const QString & value )
$virtualMethod=|bool|attributeDecl|const QString &,const QString &,const QString &,const QString &,const QString &

$prototype=virtual bool characters ( const QString & ch )
$virtualMethod=|bool|characters|const QString &

$prototype=virtual bool comment ( const QString & ch )
$virtualMethod=|bool|comment|const QString &

$prototype=virtual bool endCDATA ()
$virtualMethod=|bool|endCDATA|

$prototype=virtual bool endDTD ()
$virtualMethod=|bool|endDTD|

$prototype=virtual bool endDocument ()
$virtualMethod=|bool|endDocument|

$prototype=virtual bool endElement ( const QString & namespaceURI, const QString & localName, const QString & qName )
$virtualMethod=|bool|endElement|const QString &,const QString &,const QString &

$prototype=virtual bool endEntity ( const QString & name )
$virtualMethod=|bool|endEntity|const QString &

$prototype=virtual bool endPrefixMapping ( const QString & prefix )
$virtualMethod=|bool|endPrefixMapping|const QString &

$prototype=virtual bool error ( const QXmlParseException & exception )
$virtualMethod=|bool|error|const QXmlParseException &

$prototype=virtual QString errorString () const
$virtualMethod=|QString|errorString|

$prototype=virtual bool externalEntityDecl ( const QString & name, const QString & publicId, const QString & systemId )
$virtualMethod=|bool|externalEntityDecl|const QString &,const QString &,const QString &

$prototype=virtual bool fatalError ( const QXmlParseException & exception )
$virtualMethod=|bool|fatalError|const QXmlParseException &

$prototype=virtual bool ignorableWhitespace ( const QString & ch )
$virtualMethod=|bool|ignorableWhitespace|const QString &

$prototype=virtual bool internalEntityDecl ( const QString & name, const QString & value )
$virtualMethod=|bool|internalEntityDecl|const QString &,const QString &

$prototype=virtual bool notationDecl ( const QString & name, const QString & publicId, const QString & systemId )
$virtualMethod=|bool|notationDecl|const QString &,const QString &,const QString &

$prototype=virtual bool processingInstruction ( const QString & target, const QString & data )
$virtualMethod=|bool|processingInstruction|const QString &,const QString &

$prototype=virtual void setDocumentLocator ( QXmlLocator * locator )
$virtualMethod=|void|setDocumentLocator|QXmlLocator *

$prototype=virtual bool skippedEntity ( const QString & name )
$virtualMethod=|bool|skippedEntity|const QString &

$prototype=virtual bool startCDATA ()
$virtualMethod=|bool|startCDATA|

$prototype=virtual bool startDTD ( const QString & name, const QString & publicId, const QString & systemId )
$virtualMethod=|bool|startDTD|const QString &,const QString &,const QString &

$prototype=virtual bool startDocument ()
$virtualMethod=|bool|startDocument|

$prototype=virtual bool startElement ( const QString & namespaceURI, const QString & localName, const QString & qName, const QXmlAttributes & atts )
$virtualMethod=|bool|startElement|const QString &,const QString &,const QString &,const QXmlAttributes &

$prototype=virtual bool startEntity ( const QString & name )
$virtualMethod=|bool|startEntity|const QString &

$prototype=virtual bool startPrefixMapping ( const QString & prefix, const QString & uri )
$virtualMethod=|bool|startPrefixMapping|const QString &,const QString &

$prototype=virtual bool unparsedEntityDecl ( const QString & name, const QString & publicId, const QString & systemId, const QString & notationName )
$virtualMethod=|bool|unparsedEntityDecl|const QString &,const QString &,const QString &,const QString &

$prototype=virtual bool warning ( const QXmlParseException & exception )
$virtualMethod=|bool|warning|const QXmlParseException &

#pragma ENDDUMP
