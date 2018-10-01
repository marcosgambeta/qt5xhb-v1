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

$prototype=QTextStream()
$internalConstructor=|new1|

$prototype=QTextStream(QIODevice *device)
$internalConstructor=|new2|QIODevice *

$prototype=QTextStream(FILE *fileHandle, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
$internalConstructor=|new3|FILE *,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=QTextStream(QString *string, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
$internalConstructor=|new4|QString *,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=QTextStream(QByteArray *array, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
$internalConstructor=|new5|QByteArray *,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=QTextStream(const QByteArray &array, QIODevice::OpenMode openMode = QIODevice::ReadOnly)
$internalConstructor=|new6|const QByteArray &,QIODevice::OpenMode=QIODevice::ReadOnly

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

$prototype=void setCodec(QTextCodec *codec)
$internalMethod=|void|setCodec,setCodec1|QTextCodec *

$prototype=void setCodec(const char *codecName)
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
$addMethod=setCodec

$prototype=QTextCodec *codec() const
$method=|QTextCodec *|codec|

$prototype=void setAutoDetectUnicode(bool enabled)
$method=|void|setAutoDetectUnicode|bool

$prototype=bool autoDetectUnicode() const
$method=|bool|autoDetectUnicode|

$prototype=void setGenerateByteOrderMark(bool generate)
$method=|void|setGenerateByteOrderMark|bool

$prototype=bool generateByteOrderMark() const
$method=|bool|generateByteOrderMark|

$prototype=void setLocale(const QLocale &locale)
$method=|void|setLocale|const QLocale &

$prototype=QLocale locale() const
$method=|QLocale|locale|

$prototype=void setDevice(QIODevice *device)
$method=|void|setDevice|QIODevice *

$prototype=QIODevice *device() const
$method=|QIODevice *|device|

$prototype=void setString(QString *string, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
$method=|void|setString|QString *,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=QString *string() const
$method=|QString *|string|

$prototype=Status status() const
$method=|QTextStream::Status|status|

$prototype=void setStatus(Status status)
$method=|void|setStatus|QTextStream::Status

$prototype=void resetStatus()
$method=|void|resetStatus|

$prototype=bool atEnd() const
$method=|bool|atEnd|

$prototype=void reset()
$method=|void|reset|

$prototype=void flush()
$method=|void|flush|

$prototype=bool seek(qint64 pos)
$method=|bool|seek|qint64

$prototype=qint64 pos() const
$method=|qint64|pos|

$prototype=void skipWhiteSpace()
$method=|void|skipWhiteSpace|

$prototype=QString readLine(qint64 maxlen = 0)
$method=|QString|readLine|qint64=0

$prototype=QString readAll()
$method=|QString|readAll|

$prototype=QString read(qint64 maxlen)
$method=|QString|read|qint64

$prototype=void setFieldAlignment(FieldAlignment alignment)
$method=|void|setFieldAlignment|QTextStream::FieldAlignment

$prototype=FieldAlignment fieldAlignment() const
$method=|QTextStream::FieldAlignment|fieldAlignment|

$prototype=void setPadChar(QChar ch)
$method=|void|setPadChar|QChar

$prototype=QChar padChar() const
$method=|QChar|padChar|

$prototype=void setFieldWidth(int width)
$method=|void|setFieldWidth|int

$prototype=int fieldWidth() const
$method=|int|fieldWidth|

$prototype=void setNumberFlags(NumberFlags flags)
$method=|void|setNumberFlags|QTextStream::NumberFlags

$prototype=NumberFlags numberFlags() const
$method=|QTextStream::NumberFlags|numberFlags|

$prototype=void setIntegerBase(int base)
$method=|void|setIntegerBase|int

$prototype=int integerBase() const
$method=|int|integerBase|

$prototype=void setRealNumberNotation(RealNumberNotation notation)
$method=|void|setRealNumberNotation|QTextStream::RealNumberNotation

$prototype=RealNumberNotation realNumberNotation() const
$method=|QTextStream::RealNumberNotation|realNumberNotation|

$prototype=void setRealNumberPrecision(int precision)
$method=|void|setRealNumberPrecision|int

$prototype=int realNumberPrecision() const
$method=|int|realNumberPrecision|

$extraMethods

#pragma ENDDUMP
