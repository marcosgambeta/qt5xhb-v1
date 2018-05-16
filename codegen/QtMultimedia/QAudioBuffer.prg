%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
#endif

$beginClass

   METHOD new
   METHOD delete

   METHOD byteCount
%%   METHOD constData
   METHOD data
   METHOD duration
   METHOD format
   METHOD frameCount
   METHOD isValid
   METHOD sampleCount
   METHOD startTime

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAudioBuffer()
$internalConstructor=|new1|

$prototype=QAudioBuffer(QAbstractAudioBuffer *provider)
%% TODO: not present in the documentation

$prototype=QAudioBuffer(const QAudioBuffer & other)
$internalConstructor=|new2|const QAudioBuffer &

$prototype=QAudioBuffer(const QByteArray & data, const QAudioFormat & format, qint64 startTime = -1)
$internalConstructor=|new3|const QByteArray &,const QAudioFormat &,qint64=-1

$prototype=QAudioBuffer(int numFrames, const QAudioFormat & format, qint64 startTime = -1)
$internalConstructor=|new4|int,const QAudioFormat &,qint64=-1

//[1]QAudioBuffer()
%% QAudioBuffer(QAbstractAudioBuffer *provider)
//[2]QAudioBuffer(const QAudioBuffer & other)
//[3]QAudioBuffer(const QByteArray & data, const QAudioFormat & format, qint64 startTime = -1)
//[4]QAudioBuffer(int numFrames, const QAudioFormat & format, qint64 startTime = -1)

HB_FUNC_STATIC( QAUDIOBUFFER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAudioBuffer_new1();
  }
  else if( ISNUMPAR(1) && ISQAUDIOBUFFER(1) )
  {
    QAudioBuffer_new2();
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && ISQAUDIOFORMAT(2) && ISOPTNUM(3) )
  {
    QAudioBuffer_new3();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQAUDIOFORMAT(2) && ISOPTNUM(3) )
  {
    QAudioBuffer_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QAudioBuffer()
$deleteMethod

$prototype=int byteCount() const
$method=|int|byteCount|

$prototype=const void* constData() const
%% TODO: implementar
%% $method=|const void *|constData|

$prototype=const void* data() const

$prototype=void * data()
$method=|void *|data|

$prototype=qint64 duration() const
$method=|qint64|duration|

$prototype=QAudioFormat format() const
$method=|QAudioFormat|format|

$prototype=int frameCount() const
$method=|int|frameCount|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=int sampleCount() const
$method=|int|sampleCount|

$prototype=qint64 startTime() const
$method=|qint64|startTime|

$extraMethods

#pragma ENDDUMP
