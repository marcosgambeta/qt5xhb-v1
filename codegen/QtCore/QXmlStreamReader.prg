$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QXMLSTREAMATTRIBUTES
REQUEST QIODEVICE
REQUEST QSTRINGREF
REQUEST QXMLSTREAMENTITYDECLARATIONS
REQUEST QXMLSTREAMENTITYRESOLVER
REQUEST QXMLSTREAMNAMESPACEDECLARATIONS
REQUEST QXMLSTREAMNOTATIONDECLARATIONS
#endif

CLASS QXmlStreamReader

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addData
   METHOD addExtraNamespaceDeclaration
   METHOD atEnd
   METHOD attributes
   METHOD characterOffset
   METHOD clear
   METHOD columnNumber
   METHOD device
   METHOD documentEncoding
   METHOD documentVersion
   METHOD dtdName
   METHOD dtdPublicId
   METHOD dtdSystemId
   METHOD entityDeclarations
   METHOD entityResolver
   METHOD error
   METHOD errorString
   METHOD hasError
   METHOD isCDATA
   METHOD isCharacters
   METHOD isComment
   METHOD isDTD
   METHOD isEndDocument
   METHOD isEndElement
   METHOD isEntityReference
   METHOD isProcessingInstruction
   METHOD isStandaloneDocument
   METHOD isStartDocument
   METHOD isStartElement
   METHOD isWhitespace
   METHOD lineNumber
   METHOD name
   METHOD namespaceDeclarations
   METHOD namespaceProcessing
   METHOD namespaceUri
   METHOD notationDeclarations
   METHOD prefix
   METHOD processingInstructionData
   METHOD processingInstructionTarget
   METHOD qualifiedName
   METHOD raiseError
   METHOD readElementText
   METHOD readNext
   METHOD readNextStartElement
   METHOD setDevice
   METHOD setEntityResolver
   METHOD setNamespaceProcessing
   METHOD skipCurrentElement
   METHOD text
   METHOD tokenString
   METHOD tokenType

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

/*
QXmlStreamReader()
*/
void QXmlStreamReader_new1 ()
{
  QXmlStreamReader * o = new QXmlStreamReader ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamReader(QIODevice * device)
*/
void QXmlStreamReader_new2 ()
{
  QXmlStreamReader * o = new QXmlStreamReader ( PQIODEVICE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamReader(const QByteArray & data)
*/
void QXmlStreamReader_new3 ()
{
  QXmlStreamReader * o = new QXmlStreamReader ( *PQBYTEARRAY(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamReader(const QString & data)
*/
void QXmlStreamReader_new4 ()
{
  QXmlStreamReader * o = new QXmlStreamReader ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

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

/*
void addData(const QByteArray & data)
*/
void QXmlStreamReader_addData1 ()
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addData ( *PQBYTEARRAY(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addData(const QString & data)
*/
void QXmlStreamReader_addData2 ()
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addData ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addData(const char * data)
*/
void QXmlStreamReader_addData3 ()
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addData ( PCONSTCHAR(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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

/*
void addExtraNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & extraNamespaceDeclaration)
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_ADDEXTRANAMESPACEDECLARATION )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQXMLSTREAMNAMESPACEDECLARATION(1) )
    {
      obj->addExtraNamespaceDeclaration ( *PQXMLSTREAMNAMESPACEDECLARATION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool atEnd() const
*/
$method=|bool|atEnd|

/*
QXmlStreamAttributes attributes() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_ATTRIBUTES )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QXmlStreamAttributes * ptr = new QXmlStreamAttributes( obj->attributes () );
    _qt5xhb_createReturnClass ( ptr, "QXMLSTREAMATTRIBUTES", true );
  }
}

/*
qint64 characterOffset() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_CHARACTEROFFSET )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->characterOffset () );
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_CLEAR )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qint64 columnNumber() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_COLUMNNUMBER )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->columnNumber () );
  }
}

/*
QIODevice * device() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_DEVICE )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIODevice * ptr = obj->device ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}

/*
QStringRef documentEncoding() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_DOCUMENTENCODING )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->documentEncoding () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef documentVersion() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_DOCUMENTVERSION )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->documentVersion () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef dtdName() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_DTDNAME )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->dtdName () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef dtdPublicId() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_DTDPUBLICID )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->dtdPublicId () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef dtdSystemId() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_DTDSYSTEMID )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->dtdSystemId () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QXmlStreamEntityDeclarations entityDeclarations() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_ENTITYDECLARATIONS )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QXmlStreamEntityDeclarations * ptr = new QXmlStreamEntityDeclarations( obj->entityDeclarations () );
    _qt5xhb_createReturnClass ( ptr, "QXMLSTREAMENTITYDECLARATIONS" );
  }
}

/*
QXmlStreamEntityResolver * entityResolver() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_ENTITYRESOLVER )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QXmlStreamEntityResolver * ptr = obj->entityResolver ();
    _qt5xhb_createReturnClass ( ptr, "QXMLSTREAMENTITYRESOLVER" );
  }
}

/*
Error error() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_ERROR )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->error () );
  }
}

/*
QString errorString() const
*/
$method=|QString|errorString|

/*
bool hasError() const
*/
$method=|bool|hasError|

/*
bool isCDATA() const
*/
$method=|bool|isCDATA|

/*
bool isCharacters() const
*/
$method=|bool|isCharacters|

/*
bool isComment() const
*/
$method=|bool|isComment|

/*
bool isDTD() const
*/
$method=|bool|isDTD|

/*
bool isEndDocument() const
*/
$method=|bool|isEndDocument|

/*
bool isEndElement() const
*/
$method=|bool|isEndElement|

/*
bool isEntityReference() const
*/
$method=|bool|isEntityReference|

/*
bool isProcessingInstruction() const
*/
$method=|bool|isProcessingInstruction|

/*
bool isStandaloneDocument() const
*/
$method=|bool|isStandaloneDocument|

/*
bool isStartDocument() const
*/
$method=|bool|isStartDocument|

/*
bool isStartElement() const
*/
$method=|bool|isStartElement|

/*
bool isWhitespace() const
*/
$method=|bool|isWhitespace|

/*
qint64 lineNumber() const
*/
$method=|qint64|lineNumber|

/*
QStringRef name() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_NAME )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->name () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QXmlStreamNamespaceDeclarations namespaceDeclarations() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_NAMESPACEDECLARATIONS )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QXmlStreamNamespaceDeclarations * ptr = new QXmlStreamNamespaceDeclarations( obj->namespaceDeclarations () );
    _qt5xhb_createReturnClass ( ptr, "QXMLSTREAMNAMESPACEDECLARATIONS" );
  }
}

/*
bool namespaceProcessing() const
*/
$method=|bool|namespaceProcessing|

/*
QStringRef namespaceUri() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_NAMESPACEURI )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->namespaceUri () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QXmlStreamNotationDeclarations notationDeclarations() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_NOTATIONDECLARATIONS )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QXmlStreamNotationDeclarations * ptr = new QXmlStreamNotationDeclarations( obj->notationDeclarations () );
    _qt5xhb_createReturnClass ( ptr, "QXMLSTREAMNOTATIONDECLARATIONS" );
  }
}

/*
QStringRef prefix() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_PREFIX )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->prefix () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef processingInstructionData() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_PROCESSINGINSTRUCTIONDATA )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->processingInstructionData () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef processingInstructionTarget() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_PROCESSINGINSTRUCTIONTARGET )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->processingInstructionTarget () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef qualifiedName() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_QUALIFIEDNAME )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->qualifiedName () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
void raiseError(const QString & message = QString())
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_RAISEERROR )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTCHAR(1) )
    {
      obj->raiseError ( OPQSTRING(1,QString()) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString readElementText(ReadElementTextBehaviour behaviour = ErrorOnUnexpectedElement)
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_READELEMENTTEXT )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QXmlStreamReader::ErrorOnUnexpectedElement : hb_parni(1);
      RQSTRING( obj->readElementText ( (QXmlStreamReader::ReadElementTextBehaviour) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
TokenType readNext()
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_READNEXT )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->readNext () );
  }
}

/*
bool readNextStartElement()
*/
$method=|bool|readNextStartElement|

/*
void setDevice(QIODevice * device)
*/
$method=|void|setDevice|QIODevice *

/*
void setEntityResolver(QXmlStreamEntityResolver * resolver)
*/
$method=|void|setEntityResolver|QXmlStreamEntityResolver *

/*
void setNamespaceProcessing(bool)
*/
$method=|void|setNamespaceProcessing|bool

/*
void skipCurrentElement()
*/
$method=|void|skipCurrentElement|

/*
QStringRef text() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_TEXT )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->text () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QString tokenString() const
*/
$method=|QString|tokenString|

/*
TokenType tokenType() const
*/
HB_FUNC_STATIC( QXMLSTREAMREADER_TOKENTYPE )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->tokenType () );
  }
}

$extraMethods

#pragma ENDDUMP
