$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QIODEVICE
REQUEST QTEXTCODEC
#endif

CLASS QTextDocumentWriter

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD setFormat
   METHOD format
   METHOD setDevice
   METHOD device
   METHOD setFileName
   METHOD fileName
   METHOD write1
   METHOD write2
   METHOD write
   METHOD setCodec
   METHOD codec

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
QTextDocumentWriter()
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW1 )
{
  QTextDocumentWriter * o = new QTextDocumentWriter ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextDocumentWriter(QIODevice *device, const QByteArray &format)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW2 )
{
  QTextDocumentWriter * o = new QTextDocumentWriter ( PQIODEVICE(1), *PQBYTEARRAY(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextDocumentWriter(const QString &fileName, const QByteArray &format = QByteArray())
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW3 )
{
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(2);
  QTextDocumentWriter * o = new QTextDocumentWriter ( PQSTRING(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTextDocumentWriter()
//[2]QTextDocumentWriter(QIODevice *device, const QByteArray &format)
//[3]QTextDocumentWriter(const QString &fileName, const QByteArray &format = QByteArray())

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void setFormat (const QByteArray &format)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SETFORMAT )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFormat ( *PQBYTEARRAY(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QByteArray format () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_FORMAT )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
void setDevice (QIODevice *device)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SETDEVICE )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setDevice ( PQIODEVICE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIODevice *device () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_DEVICE )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIODevice * ptr = obj->device ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}

/*
void setFileName (const QString &fileName)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SETFILENAME )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFileName ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
bool write(const QTextDocument *document)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_WRITE1 )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QTextDocument * par1 = (const QTextDocument *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->write ( par1 ) );
  }
}

/*
bool write(const QTextDocumentFragment &fragment)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_WRITE2 )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->write ( *PQTEXTDOCUMENTFRAGMENT(1) ) );
  }
}

//[1]bool write(const QTextDocument *document)
//[2]bool write(const QTextDocumentFragment &fragment)

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_WRITE )
{
  if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_WRITE1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_WRITE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setCodec(QTextCodec *codec)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SETCODEC )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setCodec ( PQTEXTCODEC(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTextCodec *codec() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_CODEC )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextCodec * ptr = obj->codec ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTCODEC" );
  }
}

$extraMethods

#pragma ENDDUMP
