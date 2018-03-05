%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=virtual bool atEnd () const
$virtualMethod=|bool|atEnd|

$prototype=virtual qint64 bytesAvailable () const
$virtualMethod=|qint64|bytesAvailable|

$prototype=virtual qint64 bytesToWrite () const
$virtualMethod=|qint64|bytesToWrite|

$prototype=virtual bool canReadLine () const
$virtualMethod=|bool|canReadLine|

$prototype=virtual void close ()
$virtualMethod=|void|close|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=bool getChar ( char * c ) // TODO: revisar e implementar corretamente(?)
$method=|bool|getChar|char *

$prototype=bool isOpen () const
$method=|bool|isOpen|

$prototype=bool isReadable () const
$method=|bool|isReadable|

$prototype=virtual bool isSequential () const
$virtualMethod=|bool|isSequential|

$prototype=bool isTextModeEnabled () const
$method=|bool|isTextModeEnabled|

$prototype=bool isWritable () const
$method=|bool|isWritable|

$prototype=virtual bool open ( OpenMode mode )
$virtualMethod=|bool|open|QIODevice::OpenMode

$prototype=OpenMode openMode () const
$method=|QIODevice::OpenMode|openMode|

$prototype=qint64 peek ( char * data, qint64 maxSize )
%% TODO: corrigir
$internalMethod=|qint64|peek,peek1|char *,qint64

$prototype=QByteArray peek ( qint64 maxSize )
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

$prototype=virtual qint64 pos () const
$virtualMethod=|qint64|pos|

$prototype=bool putChar ( char c )
$method=|bool|putChar|char

$prototype=qint64 read ( char * data, qint64 maxSize )
%% TODO: corrigir
$internalMethod=|qint64|read,read1|char *,qint64

$prototype=QByteArray read ( qint64 maxSize )
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

$prototype=QByteArray readAll ()
$method=|QByteArray|readAll|

$prototype=qint64 readLine ( char * data, qint64 maxSize )
%% TODO: corrigir
$internalMethod=|qint64|readLine,readLine1|char *,qint64

$prototype=QByteArray readLine ( qint64 maxSize = 0 )
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

$prototype=virtual bool reset ()
$virtualMethod=|bool|reset|

$prototype=virtual bool seek ( qint64 pos )
$virtualMethod=|bool|seek|qint64

$prototype=void setTextModeEnabled ( bool enabled )
$method=|void|setTextModeEnabled|bool

$prototype=virtual qint64 size () const
$virtualMethod=|qint64|size|

$prototype=void ungetChar ( char c )
$method=|void|ungetChar|char

$prototype=virtual bool waitForBytesWritten ( int msecs )
$virtualMethod=|bool|waitForBytesWritten|int

$prototype=virtual bool waitForReadyRead ( int msecs )
$virtualMethod=|bool|waitForReadyRead|int

$prototype=qint64 write ( const char * data, qint64 maxSize )
$internalMethod=|qint64|write,write1|const char *,qint64

$prototype=qint64 write ( const char * data )
$internalMethod=|qint64|write,write2|const char *

$prototype=qint64 write ( const QByteArray & byteArray )
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

$connectSignalFunction

$signalMethod=|aboutToClose()
$signalMethod=|bytesWritten(qint64)
$signalMethod=|readChannelFinished()
$signalMethod=|readyRead()

#pragma ENDDUMP
