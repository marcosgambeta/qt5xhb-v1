/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QTEXTCODEC
REQUEST QIODEVICE
#endif

CLASS QXmlStreamWriter

   DATA pointer
   DATA class_id INIT Class_Id_QXmlStreamWriter
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD autoFormatting
   METHOD autoFormattingIndent
   METHOD codec
   METHOD device
   METHOD hasError
   METHOD setAutoFormatting
   METHOD setAutoFormattingIndent
   METHOD setCodec1
   METHOD setCodec2
   METHOD setCodec
   METHOD setDevice
   METHOD writeAttribute1
   METHOD writeAttribute2
   METHOD writeAttribute3
   METHOD writeAttribute
   METHOD writeAttributes
   METHOD writeCDATA
   METHOD writeCharacters
   METHOD writeComment
   METHOD writeCurrentToken
   METHOD writeDTD
   METHOD writeDefaultNamespace
   METHOD writeEmptyElement1
   METHOD writeEmptyElement2
   METHOD writeEmptyElement
   METHOD writeEndDocument
   METHOD writeEndElement
   METHOD writeEntityReference
   METHOD writeNamespace
   METHOD writeProcessingInstruction
   METHOD writeStartDocument1
   METHOD writeStartDocument2
   METHOD writeStartDocument3
   METHOD writeStartDocument
   METHOD writeStartElement1
   METHOD writeStartElement2
   METHOD writeStartElement
   METHOD writeTextElement1
   METHOD writeTextElement2
   METHOD writeTextElement
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlStreamWriter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QXmlStreamWriter>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QXmlStreamWriter>
#endif
#endif

/*
QXmlStreamWriter()
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlStreamWriter * o = new QXmlStreamWriter (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamWriter *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QXmlStreamWriter(QIODevice * device)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
  QXmlStreamWriter * o = new QXmlStreamWriter ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamWriter *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QXmlStreamWriter(QByteArray * array)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  QXmlStreamWriter * o = new QXmlStreamWriter ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamWriter *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QXmlStreamWriter(QString * string)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlStreamWriter * o = new QXmlStreamWriter (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamWriter *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QXmlStreamWriter()
//[2]QXmlStreamWriter(QIODevice * device)
//[3]QXmlStreamWriter(QByteArray * array)
//[4]QXmlStreamWriter(QString * string)

HB_FUNC_STATIC( QXMLSTREAMWRITER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_NEW3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSTREAMWRITER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlStreamWriter * obj = (QXmlStreamWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
bool autoFormatting() const
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_AUTOFORMATTING )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->autoFormatting (  ) );
  }
}


/*
int autoFormattingIndent() const
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_AUTOFORMATTINGINDENT )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->autoFormattingIndent (  ) );
  }
}


/*
QTextCodec * codec() const
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_CODEC )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCodec * ptr = obj->codec (  );
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
    QIODevice * ptr = obj->device (  );
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
bool hasError() const
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_HASERROR )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasError (  ) );
  }
}


/*
void setAutoFormatting(bool enable)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_SETAUTOFORMATTING )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoFormatting ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoFormattingIndent(int spacesOrTabs)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_SETAUTOFORMATTINGINDENT )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoFormattingIndent ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCodec(QTextCodec * codec)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_SETCODEC1 )
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
HB_FUNC_STATIC( QXMLSTREAMWRITER_SETCODEC2 )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    obj->setCodec (  (const char *) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setCodec(QTextCodec * codec)
//[2]void setCodec(const char * codecName)

HB_FUNC_STATIC( QXMLSTREAMWRITER_SETCODEC )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_SETCODEC1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_SETCODEC2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setDevice(QIODevice * device)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_SETDEVICE )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    obj->setDevice ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void writeAttribute(const QString & namespaceUri, const QString & name, const QString & value)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEATTRIBUTE1 )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    obj->writeAttribute ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeAttribute(const QString & qualifiedName, const QString & value)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEATTRIBUTE2 )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->writeAttribute ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeAttribute(const QXmlStreamAttribute & attribute)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEATTRIBUTE3 )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlStreamAttribute * par1 = (QXmlStreamAttribute *) _qt5xhb_itemGetPtr(1);
    obj->writeAttribute ( *par1 );
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
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITEATTRIBUTE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITEATTRIBUTE2 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTE(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITEATTRIBUTE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void writeAttributes(const QXmlStreamAttributes & attributes)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEATTRIBUTES )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlStreamAttributes * par1 = (QXmlStreamAttributes *) _qt5xhb_itemGetPtr(1);
    obj->writeAttributes ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void writeCDATA(const QString & text)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITECDATA )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->writeCDATA ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void writeCharacters(const QString & text)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITECHARACTERS )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->writeCharacters ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void writeComment(const QString & text)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITECOMMENT )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->writeComment ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void writeCurrentToken(const QXmlStreamReader & reader)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITECURRENTTOKEN )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlStreamReader * par1 = (QXmlStreamReader *) _qt5xhb_itemGetPtr(1);
    obj->writeCurrentToken ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void writeDTD(const QString & dtd)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEDTD )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->writeDTD ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void writeDefaultNamespace(const QString & namespaceUri)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEDEFAULTNAMESPACE )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->writeDefaultNamespace ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void writeEmptyElement(const QString & namespaceUri, const QString & name)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEEMPTYELEMENT1 )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->writeEmptyElement ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeEmptyElement(const QString & qualifiedName)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEEMPTYELEMENT2 )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->writeEmptyElement ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void writeEmptyElement(const QString & namespaceUri, const QString & name)
//[2]void writeEmptyElement(const QString & qualifiedName)

HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEEMPTYELEMENT )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITEEMPTYELEMENT1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITEEMPTYELEMENT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void writeEndDocument()
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEENDDOCUMENT )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->writeEndDocument (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void writeEndElement()
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEENDELEMENT )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->writeEndElement (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void writeEntityReference(const QString & name)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEENTITYREFERENCE )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->writeEntityReference ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void writeNamespace(const QString & namespaceUri, const QString & prefix = QString())
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITENAMESPACE )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    obj->writeNamespace ( par1, par2 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    obj->writeProcessingInstruction ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void writeStartDocument(const QString & version)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITESTARTDOCUMENT1 )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->writeStartDocument ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeStartDocument(const QString & version, bool standalone)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITESTARTDOCUMENT2 )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->writeStartDocument ( par1, (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeStartDocument()
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITESTARTDOCUMENT3 )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->writeStartDocument (  );
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
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITESTARTDOCUMENT1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISLOG(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITESTARTDOCUMENT2 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITESTARTDOCUMENT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void writeStartElement(const QString & namespaceUri, const QString & name)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITESTARTELEMENT1 )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->writeStartElement ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeStartElement(const QString & qualifiedName)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITESTARTELEMENT2 )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->writeStartElement ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void writeStartElement(const QString & namespaceUri, const QString & name)
//[2]void writeStartElement(const QString & qualifiedName)

HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITESTARTELEMENT )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITESTARTELEMENT1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITESTARTELEMENT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void writeTextElement(const QString & namespaceUri, const QString & name, const QString & text)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITETEXTELEMENT1 )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    obj->writeTextElement ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeTextElement(const QString & qualifiedName, const QString & text)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITETEXTELEMENT2 )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->writeTextElement ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void writeTextElement(const QString & namespaceUri, const QString & name, const QString & text)
//[2]void writeTextElement(const QString & qualifiedName, const QString & text)

HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITETEXTELEMENT )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITETEXTELEMENT1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITETEXTELEMENT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


HB_FUNC_STATIC( QXMLSTREAMWRITER_NEWFROM )
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

HB_FUNC_STATIC( QXMLSTREAMWRITER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLSTREAMWRITER_NEWFROM );
}

HB_FUNC_STATIC( QXMLSTREAMWRITER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLSTREAMWRITER_NEWFROM );
}

HB_FUNC_STATIC( QXMLSTREAMWRITER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLSTREAMWRITER_SETSELFDESTRUCTION )
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