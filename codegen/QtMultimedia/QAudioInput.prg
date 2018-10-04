%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

%%   METHOD onStateChanged
%%   METHOD onNotify

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAudioInput(const QAudioFormat &format = QAudioFormat(), QObject *parent = Q_NULLPTR)
$internalConstructor=|new1|const QAudioFormat &=QAudioFormat(),QObject *=0

$prototype=explicit QAudioInput(const QAudioDeviceInfo &audioDeviceInfo, const QAudioFormat &format = QAudioFormat(), QObject *parent = Q_NULLPTR)
$internalConstructor=|new2|const QAudioDeviceInfo &,const QAudioFormat &=QAudioFormat(),QObject *=0

//[1]explicit QAudioInput(const QAudioFormat &format = QAudioFormat(), QObject *parent = Q_NULLPTR)
//[2]explicit QAudioInput(const QAudioDeviceInfo &audioDeviceInfo, const QAudioFormat &format = QAudioFormat(), QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QAUDIOINPUT_NEW )
{
  if( ISBETWEEN(0,2) && (ISQAUDIOFORMAT(1)||ISNIL(1)) && ISOPTQOBJECT(2) )
  {
    QAudioInput_new1();
  }
  else if( ISBETWEEN(1,3) && ISQAUDIODEVICEINFO(1) && (ISQAUDIOFORMAT(2)||ISNIL(2)) && ISOPTQOBJECT(3) )
  {
    QAudioInput_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QAudioInput()
$deleteMethod

$prototype=int bufferSize () const
$method=|int|bufferSize|

$prototype=int bytesReady () const
$method=|int|bytesReady|

$prototype=qint64 elapsedUSecs () const
$method=|qint64|elapsedUSecs|

$prototype=QAudio::Error error () const
$method=|QAudio::Error|error|

$prototype=QAudioFormat format () const
$method=|QAudioFormat|format|

$prototype=int notifyInterval () const
$method=|int|notifyInterval|

$prototype=int periodSize () const
$method=|int|periodSize|

$prototype=qint64 processedUSecs () const
$method=|qint64|processedUSecs|

$prototype=void reset ()
$method=|void|reset|

$prototype=void resume ()
$method=|void|resume|

$prototype=void setBufferSize ( int bytes )
$method=|void|setBufferSize|int

$prototype=void setNotifyInterval ( int milliSeconds )
$method=|void|setNotifyInterval|int

$prototype=void start ( QIODevice * device )
$internalMethod=|void|start,start1|QIODevice *

$prototype=QIODevice * start ()
$internalMethod=|QIODevice *|start,start2|

//[1]void start ( QIODevice * device )
//[2]QIODevice * start ()

HB_FUNC_STATIC( QAUDIOINPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QAudioInput_start1();
  }
  else if( ISNUMPAR(0) )
  {
    QAudioInput_start2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=start

$prototype=QAudio::State state () const
$method=|QAudio::State|state|

$prototype=void stop ()
$method=|void|stop|

$prototype=void suspend ()
$method=|void|suspend|

$prototype=void setVolume(qreal volume)
$method=|void|setVolume|qreal

$prototype=qreal volume() const
$method=|qreal|volume|

#pragma ENDDUMP

%% Q_SIGNALS:
%% void stateChanged(QAudio::State);
%% void notify();
