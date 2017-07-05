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
void QXmlStreamWriter_new1 ()
{
  QXmlStreamWriter * o = new QXmlStreamWriter ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamWriter(QIODevice * device)
*/
void QXmlStreamWriter_new2 ()
{
  QXmlStreamWriter * o = new QXmlStreamWriter ( PQIODEVICE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamWriter(QByteArray * array)
*/
void QXmlStreamWriter_new3 ()
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  QXmlStreamWriter * o = new QXmlStreamWriter ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamWriter(QString * string)
*/
void QXmlStreamWriter_new4 ()
{
  QXmlStreamWriter * o = new QXmlStreamWriter ();
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QXmlStreamWriter()
//[2]QXmlStreamWriter(QIODevice * device)
//[3]QXmlStreamWriter(QByteArray * array)
//[4]QXmlStreamWriter(QString * string)

HB_FUNC_STATIC( QXMLSTREAMWRITER_NEW )
{
  if( ISNUMPAR(0) )
  {
    void QXmlStreamWriter_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    void QXmlStreamWriter_new2();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    void QXmlStreamWriter_new3();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    void QXmlStreamWriter_new4();
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
HB_FUNC_STATIC( QXMLSTREAMWRITER_CODEC )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextCodec * ptr = obj->codec ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTCODEC" );
  }
}

/*
QIODevice * device() const
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_DEVICE )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIODevice * ptr = obj->device ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}

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
void QXmlStreamWriter_setCodec1 ()
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextCodec * par1 = (QTextCodec *) _qt5xhb_itemGetPtr(1);
    obj->setCodec ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCodec(const char * codecName)
*/
void QXmlStreamWriter_setCodec2 ()
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setCodec ( PCONSTCHAR(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
void QXmlStreamWriter_writeAttribute1 ()
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->writeAttribute ( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeAttribute(const QString & qualifiedName, const QString & value)
*/
void QXmlStreamWriter_writeAttribute2 ()
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->writeAttribute ( PQSTRING(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeAttribute(const QXmlStreamAttribute & attribute)
*/
void QXmlStreamWriter_writeAttribute3 ()
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->writeAttribute ( *PQXMLSTREAMATTRIBUTE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
void QXmlStreamWriter_writeEmptyElement1 ()
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->writeEmptyElement ( PQSTRING(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeEmptyElement(const QString & qualifiedName)
*/
void QXmlStreamWriter_writeEmptyElement2 ()
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->writeEmptyElement ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITENAMESPACE )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTCHAR(2) )
    {
      obj->writeNamespace ( PQSTRING(1), OPQSTRING(2,QString()) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeProcessingInstruction(const QString & target, const QString & data = QString())
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEPROCESSINGINSTRUCTION )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTCHAR(2) )
    {
      obj->writeProcessingInstruction ( PQSTRING(1), OPQSTRING(2,QString()) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeStartDocument(const QString & version)
*/
void QXmlStreamWriter_writeStartDocument1 ()
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->writeStartDocument ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeStartDocument(const QString & version, bool standalone)
*/
void QXmlStreamWriter_writeStartDocument2 ()
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->writeStartDocument ( PQSTRING(1), PBOOL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeStartDocument()
*/
void QXmlStreamWriter_writeStartDocument3 ()
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->writeStartDocument ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
void QXmlStreamWriter_writeStartElement1 ()
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->writeStartElement ( PQSTRING(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeStartElement(const QString & qualifiedName)
*/
void QXmlStreamWriter_writeStartElement2 ()
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->writeStartElement ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
void QXmlStreamWriter_writeTextElement1 ()
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->writeTextElement ( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeTextElement(const QString & qualifiedName, const QString & text)
*/
void QXmlStreamWriter_writeTextElement2 ()
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->writeTextElement ( PQSTRING(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
