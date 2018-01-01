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

CLASS QBuffer INHERIT QIODevice

   METHOD new
   METHOD delete
   METHOD buffer1
   METHOD buffer2
   METHOD buffer
   METHOD data
   METHOD setBuffer
   METHOD setData
   METHOD atEnd
   METHOD canReadLine
   METHOD close
   METHOD open
   METHOD pos
   METHOD seek
   METHOD size

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QBuffer ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QBuffer ( QByteArray * byteArray, QObject * parent = 0 )
$internalConstructor=|new2|QByteArray *,QObject *=0

//[1]QBuffer ( QObject * parent = 0 )
//[2]QBuffer ( QByteArray * byteArray, QObject * parent = 0 )

HB_FUNC_STATIC( QBUFFER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBuffer_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTQOBJECT(2) )
  {
    QBuffer_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QByteArray & buffer ()
$method=|QByteArray &|buffer,buffer1|

$prototype=const QByteArray & buffer () const
$method=|const QByteArray &|buffer,buffer2|

//[1]QByteArray & buffer ()
//[2]const QByteArray & buffer () const

// TODO: verificar se [2] é realmente necessário

HB_FUNC_STATIC( QBUFFER_BUFFER )
{
  HB_FUNC_EXEC( QBUFFER_BUFFER1 );
}

$prototype=const QByteArray & data () const
$method=|const QByteArray &|data|

$prototype=void setBuffer ( QByteArray * byteArray )
$method=|void|setBuffer|QByteArray *

$prototype=void setData ( const QByteArray & data )
$internalMethod=|void|setData,setData1|const QByteArray &

$prototype=void setData ( const char * data, int size )
$internalMethod=|void|setData,setData2|const char *,int

//[1]void setData ( const QByteArray & data )
//[2]void setData ( const char * data, int size )

HB_FUNC_STATIC( QBUFFER_SETDATA )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QBuffer_setData1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QBuffer_setData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual bool atEnd () const
$virtualMethod=|bool|atEnd|

$prototype=virtual bool canReadLine () const
$virtualMethod=|bool|canReadLine|

$prototype=virtual void close ()
$virtualMethod=|void|close|

$prototype=virtual bool open ( OpenMode flags )
$virtualMethod=|bool|open|QBuffer::OpenMode

$prototype=virtual qint64 pos () const
$virtualMethod=|qint64|pos|

$prototype=virtual bool seek ( qint64 pos )
$virtualMethod=|bool|seek|qint64

$prototype=virtual qint64 size () const
$virtualMethod=|qint64|size|

#pragma ENDDUMP
