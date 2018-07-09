%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlStreamReader()
$internalConstructor=|new1|

$prototype=QXmlStreamReader(QIODevice * device)
$internalConstructor=|new2|QIODevice *

$prototype=QXmlStreamReader(const QByteArray & data)
$internalConstructor=|new3|const QByteArray &

$prototype=QXmlStreamReader(const QString & data)
$internalConstructor=|new4|const QString &

// TODO: conflito entre [4] e [5]
//[1]QXmlStreamReader()
//[2]QXmlStreamReader(QIODevice * device)
//[3]QXmlStreamReader(const QByteArray & data)
//[4]QXmlStreamReader(const QString & data)
//[5]QXmlStreamReader(const char * data) // INFO: nao implementado

HB_FUNC_STATIC( QXMLSTREAMREADER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamReader_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QXmlStreamReader_new2();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QXmlStreamReader_new3();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamReader_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addData(const QByteArray & data)
$internalMethod=|void|addData,addData1|const QByteArray &

$prototype=void addData(const QString & data)
$internalMethod=|void|addData,addData2|const QString &

$prototype=void addData(const char * data)
$internalMethod=|void|addData,addData3|const char *

// TODO: conflito entre [2] e [3]
//[1]void addData(const QByteArray & data)
//[2]void addData(const QString & data)
//[3]void addData(const char * data)

HB_FUNC_STATIC( QXMLSTREAMREADER_ADDDATA )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QXmlStreamReader_addData1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamReader_addData2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamReader_addData3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void addExtraNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & extraNamespaceDeclaration)
$method=|void|addExtraNamespaceDeclaration|const QXmlStreamNamespaceDeclaration &

$prototype=bool atEnd() const
$method=|bool|atEnd|

$prototype=QXmlStreamAttributes attributes() const
$method=|QXmlStreamAttributes|attributes|

$prototype=qint64 characterOffset() const
$method=|qint64|characterOffset|

$prototype=void clear()
$method=|void|clear|

$prototype=qint64 columnNumber() const
$method=|qint64|columnNumber|

$prototype=QIODevice * device() const
$method=|QIODevice *|device|

$prototype=QStringRef documentEncoding() const
$method=|QStringRef|documentEncoding|

$prototype=QStringRef documentVersion() const
$method=|QStringRef|documentVersion|

$prototype=QStringRef dtdName() const
$method=|QStringRef|dtdName|

$prototype=QStringRef dtdPublicId() const
$method=|QStringRef|dtdPublicId|

$prototype=QStringRef dtdSystemId() const
$method=|QStringRef|dtdSystemId|

$prototype=QXmlStreamEntityDeclarations entityDeclarations() const
$method=|QXmlStreamEntityDeclarations|entityDeclarations|

$prototype=QXmlStreamEntityResolver * entityResolver() const
$method=|QXmlStreamEntityResolver *|entityResolver|

$prototype=Error error() const
$method=|QXmlStreamReader::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=bool hasError() const
$method=|bool|hasError|

$prototype=bool isCDATA() const
$method=|bool|isCDATA|

$prototype=bool isCharacters() const
$method=|bool|isCharacters|

$prototype=bool isComment() const
$method=|bool|isComment|

$prototype=bool isDTD() const
$method=|bool|isDTD|

$prototype=bool isEndDocument() const
$method=|bool|isEndDocument|

$prototype=bool isEndElement() const
$method=|bool|isEndElement|

$prototype=bool isEntityReference() const
$method=|bool|isEntityReference|

$prototype=bool isProcessingInstruction() const
$method=|bool|isProcessingInstruction|

$prototype=bool isStandaloneDocument() const
$method=|bool|isStandaloneDocument|

$prototype=bool isStartDocument() const
$method=|bool|isStartDocument|

$prototype=bool isStartElement() const
$method=|bool|isStartElement|

$prototype=bool isWhitespace() const
$method=|bool|isWhitespace|

$prototype=qint64 lineNumber() const
$method=|qint64|lineNumber|

$prototype=QStringRef name() const
$method=|QStringRef|name|

$prototype=QXmlStreamNamespaceDeclarations namespaceDeclarations() const
$method=|QXmlStreamNamespaceDeclarations|namespaceDeclarations|

$prototype=bool namespaceProcessing() const
$method=|bool|namespaceProcessing|

$prototype=QStringRef namespaceUri() const
$method=|QStringRef|namespaceUri|

$prototype=QXmlStreamNotationDeclarations notationDeclarations() const
$method=|QXmlStreamNotationDeclarations|notationDeclarations|

$prototype=QStringRef prefix() const
$method=|QStringRef|prefix|

$prototype=QStringRef processingInstructionData() const
$method=|QStringRef|processingInstructionData|

$prototype=QStringRef processingInstructionTarget() const
$method=|QStringRef|processingInstructionTarget|

$prototype=QStringRef qualifiedName() const
$method=|QStringRef|qualifiedName|

$prototype=void raiseError(const QString & message = QString())
$method=|void|raiseError|const QString &=QString()

$prototype=QString readElementText(ReadElementTextBehaviour behaviour = ErrorOnUnexpectedElement)
$method=|QString|readElementText|QXmlStreamReader::ReadElementTextBehaviour=QXmlStreamReader::ErrorOnUnexpectedElement

$prototype=TokenType readNext()
$method=|QXmlStreamReader::TokenType|readNext|

$prototype=bool readNextStartElement()
$method=|bool|readNextStartElement|

$prototype=void setDevice(QIODevice * device)
$method=|void|setDevice|QIODevice *

$prototype=void setEntityResolver(QXmlStreamEntityResolver * resolver)
$method=|void|setEntityResolver|QXmlStreamEntityResolver *

$prototype=void setNamespaceProcessing(bool)
$method=|void|setNamespaceProcessing|bool

$prototype=void skipCurrentElement()
$method=|void|skipCurrentElement|

$prototype=QStringRef text() const
$method=|QStringRef|text|

$prototype=QString tokenString() const
$method=|QString|tokenString|

$prototype=TokenType tokenType() const
$method=|QXmlStreamReader::TokenType|tokenType|

$extraMethods

#pragma ENDDUMP
