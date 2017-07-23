$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTCODEC
REQUEST QIODEVICE
#endif

CLASS QXmlStreamWriter

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD autoFormatting
   METHOD autoFormattingIndent
   METHOD codec
   METHOD device
   METHOD hasError
   METHOD setAutoFormatting
   METHOD setAutoFormattingIndent
   METHOD setCodec
   METHOD setDevice
   METHOD writeAttribute
   METHOD writeAttributes
   METHOD writeCDATA
   METHOD writeCharacters
   METHOD writeComment
   METHOD writeCurrentToken
   METHOD writeDTD
   METHOD writeDefaultNamespace
   METHOD writeEmptyElement
   METHOD writeEndDocument
   METHOD writeEndElement
   METHOD writeEntityReference
   METHOD writeNamespace
   METHOD writeProcessingInstruction
   METHOD writeStartDocument
   METHOD writeStartElement
   METHOD writeTextElement

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
QXmlStreamWriter()
*/
$internalConstructor=|new1|

/*
QXmlStreamWriter(QIODevice * device)
*/
$internalConstructor=|new2|QIODevice *

/*
QXmlStreamWriter(QByteArray * array)
*/
$internalConstructor=|new3|QByteArray *

/*
QXmlStreamWriter(QString * string)
*/
$internalConstructor=|new4|QString *

//[1]QXmlStreamWriter()
//[2]QXmlStreamWriter(QIODevice * device)
//[3]QXmlStreamWriter(QByteArray * array)
//[4]QXmlStreamWriter(QString * string)

HB_FUNC_STATIC( QXMLSTREAMWRITER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamWriter_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QXmlStreamWriter_new2();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QXmlStreamWriter_new3();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamWriter_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool autoFormatting() const
*/
$method=|bool|autoFormatting|

/*
int autoFormattingIndent() const
*/
$method=|int|autoFormattingIndent|

/*
QTextCodec * codec() const
*/
$method=|QTextCodec *|codec|

/*
QIODevice * device() const
*/
$method=|QIODevice *|device|

/*
bool hasError() const
*/
$method=|bool|hasError|

/*
void setAutoFormatting(bool enable)
*/
$method=|void|setAutoFormatting|bool

/*
void setAutoFormattingIndent(int spacesOrTabs)
*/
$method=|void|setAutoFormattingIndent|int

/*
void setCodec(QTextCodec * codec)
*/
$internalMethod=|void|setCodec,setCodec1|QTextCodec *

/*
void setCodec(const char * codecName)
*/
$internalMethod=|void|setCodec,setCodec2|const char *

//[1]void setCodec(QTextCodec * codec)
//[2]void setCodec(const char * codecName)

HB_FUNC_STATIC( QXMLSTREAMWRITER_SETCODEC )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    QXmlStreamWriter_setCodec1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamWriter_setCodec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setDevice(QIODevice * device)
*/
$method=|void|setDevice|QIODevice *

/*
void writeAttribute(const QString & namespaceUri, const QString & name, const QString & value)
*/
$internalMethod=|void|writeAttribute,writeAttribute1|const QString &,const QString &,const QString &

/*
void writeAttribute(const QString & qualifiedName, const QString & value)
*/
$internalMethod=|void|writeAttribute,writeAttribute2|const QString &,const QString &

/*
void writeAttribute(const QXmlStreamAttribute & attribute)
*/
$internalMethod=|void|writeAttribute,writeAttribute3|const QXmlStreamAttribute &

//[1]void writeAttribute(const QString & namespaceUri, const QString & name, const QString & value)
//[2]void writeAttribute(const QString & qualifiedName, const QString & value)
//[3]void writeAttribute(const QXmlStreamAttribute & attribute)

HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEATTRIBUTE )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QXmlStreamWriter_writeAttribute1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamWriter_writeAttribute2();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTE(1) )
  {
    QXmlStreamWriter_writeAttribute3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void writeAttributes(const QXmlStreamAttributes & attributes)
*/
$method=|void|writeAttributes|const QXmlStreamAttributes &

/*
void writeCDATA(const QString & text)
*/
$method=|void|writeCDATA|const QString &

/*
void writeCharacters(const QString & text)
*/
$method=|void|writeCharacters|const QString &

/*
void writeComment(const QString & text)
*/
$method=|void|writeComment|const QString &

/*
void writeCurrentToken(const QXmlStreamReader & reader)
*/
$method=|void|writeCurrentToken|const QXmlStreamReader &

/*
void writeDTD(const QString & dtd)
*/
$method=|void|writeDTD|const QString &

/*
void writeDefaultNamespace(const QString & namespaceUri)
*/
$method=|void|writeDefaultNamespace|const QString &

/*
void writeEmptyElement(const QString & namespaceUri, const QString & name)
*/
$internalMethod=|void|writeEmptyElement,writeEmptyElement1|const QString &,const QString &

/*
void writeEmptyElement(const QString & qualifiedName)
*/
$internalMethod=|void|writeEmptyElement,writeEmptyElement2|const QString &

//[1]void writeEmptyElement(const QString & namespaceUri, const QString & name)
//[2]void writeEmptyElement(const QString & qualifiedName)

HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEEMPTYELEMENT )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamWriter_writeEmptyElement1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamWriter_writeEmptyElement2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void writeEndDocument()
*/
$method=|void|writeEndDocument|

/*
void writeEndElement()
*/
$method=|void|writeEndElement|

/*
void writeEntityReference(const QString & name)
*/
$method=|void|writeEntityReference|const QString &

/*
void writeNamespace(const QString & namespaceUri, const QString & prefix = QString())
*/
$method=|void|writeNamespace|const QString &,const QString &=QString()

/*
void writeProcessingInstruction(const QString & target, const QString & data = QString())
*/
$method=|void|writeProcessingInstruction|const QString &,const QString &=QString()

/*
void writeStartDocument(const QString & version)
*/
$internalMethod=|void|writeStartDocument,writeStartDocument1|const QString &

/*
void writeStartDocument(const QString & version, bool standalone)
*/
$internalMethod=|void|writeStartDocument,writeStartDocument2|const QString &,bool

/*
void writeStartDocument()
*/
$internalMethod=|void|writeStartDocument,writeStartDocument3|

//[1]void writeStartDocument(const QString & version)
//[2]void writeStartDocument(const QString & version, bool standalone)
//[3]void writeStartDocument()

HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITESTARTDOCUMENT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamWriter_writeStartDocument1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISLOG(2) )
  {
    QXmlStreamWriter_writeStartDocument2();
  }
  else if( ISNUMPAR(0) )
  {
    QXmlStreamWriter_writeStartDocument3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void writeStartElement(const QString & namespaceUri, const QString & name)
*/
$internalMethod=|void|writeStartElement,writeStartElement1|const QString &,const QString &

/*
void writeStartElement(const QString & qualifiedName)
*/
$internalMethod=|void|writeStartElement,writeStartElement2|const QString &

//[1]void writeStartElement(const QString & namespaceUri, const QString & name)
//[2]void writeStartElement(const QString & qualifiedName)

HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITESTARTELEMENT )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamWriter_writeStartElement1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamWriter_writeStartElement2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void writeTextElement(const QString & namespaceUri, const QString & name, const QString & text)
*/
$internalMethod=|void|writeTextElement,writeTextElement1|const QString &,const QString &,const QString &

/*
void writeTextElement(const QString & qualifiedName, const QString & text)
*/
$internalMethod=|void|writeTextElement,writeTextElement2|const QString &,const QString &

//[1]void writeTextElement(const QString & namespaceUri, const QString & name, const QString & text)
//[2]void writeTextElement(const QString & qualifiedName, const QString & text)

HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITETEXTELEMENT )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QXmlStreamWriter_writeTextElement1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamWriter_writeTextElement2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
