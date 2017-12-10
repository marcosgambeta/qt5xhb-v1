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

   METHOD new
   METHOD delete
   METHOD setFormat
   METHOD format
   METHOD setDevice
   METHOD device
   METHOD setFileName
   METHOD fileName
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

$prototype=QTextDocumentWriter()
$internalConstructor=|new1|

$prototype=QTextDocumentWriter(QIODevice *device, const QByteArray &format)
$internalConstructor=|new2|QIODevice *,const QByteArray &

$prototype=QTextDocumentWriter(const QString &fileName, const QByteArray &format = QByteArray())
$internalConstructor=|new3|const QString &,const QByteArray &=QByteArray()

//[1]QTextDocumentWriter()
//[2]QTextDocumentWriter(QIODevice *device, const QByteArray &format)
//[3]QTextDocumentWriter(const QString &fileName, const QByteArray &format = QByteArray())

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextDocumentWriter_new1();
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISQBYTEARRAY(2) )
  {
    QTextDocumentWriter_new2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQBYTEARRAY(2) )
  {
    QTextDocumentWriter_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setFormat (const QByteArray &format)
$method=|void|setFormat|const QByteArray &

$prototype=QByteArray format () const
$method=|QByteArray|format|

$prototype=void setDevice (QIODevice *device)
$method=|void|setDevice|QIODevice *

$prototype=QIODevice *device () const
$method=|QIODevice *|device|

$prototype=void setFileName (const QString &fileName)
$method=|void|setFileName|const QString &

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=bool write(const QTextDocument *document)
$internalMethod=|bool|write,write1|const QTextDocument *

$prototype=bool write(const QTextDocumentFragment &fragment)
f$internalMethod=|bool|write,write2|const QTextDocumentFragment &

//[1]bool write(const QTextDocument *document)
//[2]bool write(const QTextDocumentFragment &fragment)

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_WRITE )
{
  if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    QTextDocumentWriter_write1();
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    QTextDocumentWriter_write2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setCodec(QTextCodec *codec)
$method=|void|setCodec|QTextCodec *

$prototype=QTextCodec *codec() const
$method=|QTextCodec *|codec|

$extraMethods

#pragma ENDDUMP
