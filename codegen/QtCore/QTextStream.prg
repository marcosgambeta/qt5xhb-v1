$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTCODEC
REQUEST QLOCALE
REQUEST QIODEVICE
REQUEST QSTRING
REQUEST QCHAR
#endif

CLASS QTextStream

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setCodec
   METHOD codec
   METHOD setAutoDetectUnicode
   METHOD autoDetectUnicode
   METHOD setGenerateByteOrderMark
   METHOD generateByteOrderMark
   METHOD setLocale
   METHOD locale
   METHOD setDevice
   METHOD device
   METHOD setString
   METHOD string
   METHOD status
   METHOD setStatus
   METHOD resetStatus
   METHOD atEnd
   METHOD reset
   METHOD flush
   METHOD seek
   METHOD pos
   METHOD skipWhiteSpace
   METHOD readLine
   METHOD readAll
   METHOD read
   METHOD setFieldAlignment
   METHOD fieldAlignment
   METHOD setPadChar
   METHOD padChar
   METHOD setFieldWidth
   METHOD fieldWidth
   METHOD setNumberFlags
   METHOD numberFlags
   METHOD setIntegerBase
   METHOD integerBase
   METHOD setRealNumberNotation
   METHOD realNumberNotation
   METHOD setRealNumberPrecision
   METHOD realNumberPrecision

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
QTextStream()
*/
void QTextStream_new1 ()
{
  QTextStream * o = new QTextStream ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextStream(QIODevice *device)
*/
void QTextStream_new2 ()
{
  QTextStream * o = new QTextStream ( PQIODEVICE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextStream(FILE *fileHandle, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
*/
void QTextStream_new3 ()
{
  FILE * par1 = (FILE *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QIODevice::ReadWrite : hb_parni(2);
  QTextStream * o = new QTextStream ( par1, (QIODevice::OpenMode) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextStream(QString *string, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
*/
void QTextStream_new4 ()
{
  QString * par1 = NULL;
  int par2 = ISNIL(2)? (int) QIODevice::ReadWrite : hb_parni(2);
  QTextStream * o = new QTextStream ( par1, (QIODevice::OpenMode) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextStream(QByteArray *array, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
*/
void QTextStream_new5 ()
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QIODevice::ReadWrite : hb_parni(2);
  QTextStream * o = new QTextStream ( par1, (QIODevice::OpenMode) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextStream(const QByteArray &array, QIODevice::OpenMode openMode = QIODevice::ReadOnly)
*/
void QTextStream_new6 ()
{
  int par2 = ISNIL(2)? (int) QIODevice::ReadOnly : hb_parni(2);
  QTextStream * o = new QTextStream ( *PQBYTEARRAY(1), (QIODevice::OpenMode) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTextStream()
//[2]QTextStream(QIODevice *device)
//[3]QTextStream(FILE *fileHandle, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
//[4]QTextStream(QString *string, QIODevice::OpenMode openMode = QIODevice::ReadWrite) // TODO: revisar implementacao
//[5]QTextStream(QByteArray *array, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
//[6]QTextStream(const QByteArray &array, QIODevice::OpenMode openMode = QIODevice::ReadOnly)

HB_FUNC_STATIC( QTEXTSTREAM_NEW ) // TODO: revisar casos [5] e [6]
{
  if( ISNUMPAR(0) )
  {
    QTextStream_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QTextStream_new2();
  }
  else if( ISBETWEEN(1,2) && ISPOINTER(1) && ISOPTNUM(2) )
  {
    QTextStream_new3();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QTextStream_new4();
  }
  //else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTNUM(2) )
  //{
  //  QTextStream_new5();
  //}
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTNUM(2) )
  {
    QTextStream_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void setCodec(QTextCodec *codec)
*/
$internalMethod=|void|setCodec,setCodec1|QTextCodec *

/*
void setCodec(const char *codecName)
*/
$internalMethod=|void|setCodec,setCodec2|const char *

//[1]void setCodec(QTextCodec *codec)
//[2]void setCodec(const char *codecName)

HB_FUNC_STATIC( QTEXTSTREAM_SETCODEC )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    QTextStream_setCodec1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextStream_setCodec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextCodec *codec() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_CODEC )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextCodec * ptr = obj->codec ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTCODEC" );
  }
}

/*
void setAutoDetectUnicode(bool enabled)
*/
$method=|void|setAutoDetectUnicode|bool

/*
bool autoDetectUnicode() const
*/
$method=|bool|autoDetectUnicode|

/*
void setGenerateByteOrderMark(bool generate)
*/
$method=|void|setGenerateByteOrderMark|bool

/*
bool generateByteOrderMark() const
*/
$method=|bool|generateByteOrderMark|

/*
void setLocale(const QLocale &locale)
*/
$method=|void|setLocale|const QLocale &

/*
QLocale locale() const
*/
$method=|QLocale|locale|

/*
void setDevice(QIODevice *device)
*/
$method=|void|setDevice|QIODevice *
}

/*
QIODevice *device() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_DEVICE )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIODevice * ptr = obj->device ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}

/*
void setString(QString *string, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
*/
HB_FUNC_STATIC( QTEXTSTREAM_SETSTRING )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) )
    {
      QString par1 = hb_parc(1);
      int par2 = ISNIL(2)? (int) QIODevice::ReadWrite : hb_parni(2);
      obj->setString ( &par1, (QIODevice::OpenMode) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString *string() const
*/
HB_FUNC_STATIC( QTEXTSTREAM_STRING )
{
  QTextStream * obj = (QTextStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString * ptr = obj->string ();
    _qt5xhb_createReturnClass ( ptr, "QSTRING" );
  }
}

/*
Status status() const
*/
$method=|QTextStream::Status|status|

/*
void setStatus(Status status)
*/
$method=|void|setStatus|QTextStream::Status

/*
void resetStatus()
*/
$method=|void|resetStatus|

/*
bool atEnd() const
*/
$method=|bool|atEnd|

/*
void reset()
*/
$method=|void|reset|

/*
void flush()
*/
$method=|void|flush|

/*
bool seek(qint64 pos)
*/
$method=|bool|seek|qint64

/*
qint64 pos() const
*/
$method=|qint64|pos|

/*
void skipWhiteSpace()
*/
$method=|void|skipWhiteSpace|

/*
QString readLine(qint64 maxlen = 0)
*/
$method=|QString|readLine|qint64=0

/*
QString readAll()
*/
$method=|QString|readAll|

/*
QString read(qint64 maxlen)
*/
$method=|QString|read|qint64

/*
void setFieldAlignment(FieldAlignment alignment)
*/
$method=|void|setFieldAlignment|QTextStream::FieldAlignment

/*
FieldAlignment fieldAlignment() const
*/
$method=|QTextStream::FieldAlignment|fieldAlignment|

/*
void setPadChar(QChar ch)
*/
$method=|void|setPadChar|QChar

/*
QChar padChar() const
*/
$method=|QChar|padChar|

/*
void setFieldWidth(int width)
*/
$method=|void|setFieldWidth|int

/*
int fieldWidth() const
*/
$method=|int|fieldWidth|

/*
void setNumberFlags(NumberFlags flags)
*/
$method=|void|setNumberFlags|QTextStream::NumberFlags

/*
NumberFlags numberFlags() const
*/
$method=|QTextStream::NumberFlags|numberFlags|

/*
void setIntegerBase(int base)
*/
$method=|void|setIntegerBase|int

/*
int integerBase() const
*/
$method=|int|integerBase|

/*
void setRealNumberNotation(RealNumberNotation notation)
*/
$method=|void|setRealNumberNotation|QTextStream::RealNumberNotation

/*
RealNumberNotation realNumberNotation() const
*/
$method=|QTextStream::RealNumberNotation|realNumberNotation|

/*
void setRealNumberPrecision(int precision)
*/
$method=|void|setRealNumberPrecision|int

/*
int realNumberPrecision() const
*/
$method=|int|realNumberPrecision|

$extraMethods

#pragma ENDDUMP
