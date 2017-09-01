$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QIODevice INHERIT QObject

   METHOD delete
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD errorString
   METHOD getChar
   METHOD isOpen
   METHOD isReadable
   METHOD isSequential
   METHOD isTextModeEnabled
   METHOD isWritable
   METHOD open
   METHOD openMode
   METHOD peek
   METHOD pos
   METHOD putChar
   METHOD read
   METHOD readAll
   METHOD readLine
   METHOD reset
   METHOD seek
   METHOD setTextModeEnabled
   METHOD size
   METHOD ungetChar
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD write

   METHOD onAboutToClose
   METHOD onBytesWritten
   METHOD onReadChannelFinished
   METHOD onReadyRead

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

%% TODO: is abstract ?
%%//[1]QIODevice ()
%%//[2]QIODevice ( QObject * parent )

%%//HB_FUNC_STATIC( QIODEVICE_NEW )
%%//{
%%//  if( ISNUMPAR(0) )
%%//  {
%%//    HB_FUNC_EXEC( QIODEVICE_NEW1 );
%%//  }
%%//  else if( ISNUMPAR(1) && ISOBJECT(1) )
%%//  {
%%//    HB_FUNC_EXEC( QIODEVICE_NEW2 );
%%//  }
%%//}

$deleteMethod

/*
virtual bool atEnd () const
*/
$method=|bool|atEnd|

/*
virtual qint64 bytesAvailable () const
*/
$method=|qint64|bytesAvailable|

/*
virtual qint64 bytesToWrite () const
*/
$method=|qint64|bytesToWrite|

/*
virtual bool canReadLine () const
*/
$method=|bool|canReadLine|

/*
virtual void close ()
*/
$method=|void|close|

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
bool getChar ( char * c ) // TODO: revisar e implementar corretamente(?)
*/
$method=|bool|getChar|char *

/*
bool isOpen () const
*/
$method=|bool|isOpen|

/*
bool isReadable () const
*/
$method=|bool|isReadable|

/*
virtual bool isSequential () const
*/
$method=|bool|isSequential|

/*
bool isTextModeEnabled () const
*/
$method=|bool|isTextModeEnabled|

/*
bool isWritable () const
*/
$method=|bool|isWritable|

/*
virtual bool open ( OpenMode mode )
*/
$method=|bool|open|QIODevice::OpenMode

/*
OpenMode openMode () const
*/
$method=|QIODevice::OpenMode|openMode|

/*
qint64 peek ( char * data, qint64 maxSize )
*/
%% TODO: corrigir
$internalMethod=|qint64|peek,peek1|char *,qint64

/*
QByteArray peek ( qint64 maxSize )
*/
$internalMethod=|QByteArray|peek,peek2|qint64

//[1]qint64 peek ( char * data, qint64 maxSize )
//[2]QByteArray peek ( qint64 maxSize )

HB_FUNC_STATIC( QIODEVICE_PEEK )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QIODevice_peek1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QIODevice_peek2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual qint64 pos () const
*/
$method=|qint64|pos|

/*
bool putChar ( char c )
*/
$method=|bool|putChar|char

/*
qint64 read ( char * data, qint64 maxSize )
*/
%% TODO: corrigir
$internalMethod=|qint64|read,read1|char *,qint64

/*
QByteArray read ( qint64 maxSize )
*/
$internalMethod=|QByteArray|read,read2|qint64

//[1]qint64 read ( char * data, qint64 maxSize )
//[2]QByteArray read ( qint64 maxSize )

HB_FUNC_STATIC( QIODEVICE_READ )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QIODevice_read1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QIODevice_read2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray readAll ()
*/
$method=|QByteArray|readAll|

/*
qint64 readLine ( char * data, qint64 maxSize )
*/
%% TODO: corrigir
$internalMethod=|qint64|readLine,readLine1|char *,qint64

/*
QByteArray readLine ( qint64 maxSize = 0 )
*/
$internalMethod=|QByteArray|readLine,readLine2|qint64=0

//[1]qint64 readLine ( char * data, qint64 maxSize )
//[2]QByteArray readLine ( qint64 maxSize = 0 )

HB_FUNC_STATIC( QIODEVICE_READLINE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QIODevice_readLine1();
  }
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QIODevice_readLine2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual bool reset ()
*/
$method=|bool|reset|

/*
virtual bool seek ( qint64 pos )
*/
$method=|bool|seek|qint64

/*
void setTextModeEnabled ( bool enabled )
*/
$method=|void|setTextModeEnabled|bool

/*
virtual qint64 size () const
*/
$method=|qint64|size|

/*
void ungetChar ( char c )
*/
$method=|void|ungetChar|char

/*
virtual bool waitForBytesWritten ( int msecs )
*/
$method=|bool|waitForBytesWritten|int

/*
virtual bool waitForReadyRead ( int msecs )
*/
$method=|bool|waitForReadyRead|int

/*
qint64 write ( const char * data, qint64 maxSize )
*/
$internalMethod=|qint64|write,write1|const char *,qint64

/*
qint64 write ( const char * data )
*/
$internalMethod=|qint64|write,write2|const char *

/*
qint64 write ( const QByteArray & byteArray )
*/
$internalMethod=|qint64|write,write3|const QByteArray &

//[1]qint64 write ( const char * data, qint64 maxSize )
//[2]qint64 write ( const char * data )
//[3]qint64 write ( const QByteArray & byteArray )

HB_FUNC_STATIC( QIODEVICE_WRITE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QIODevice_write1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QIODevice_write2();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QIODevice_write3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
