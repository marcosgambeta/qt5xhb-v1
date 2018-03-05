%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QVideoProbe INHERIT QObject

   METHOD new
   METHOD delete

   METHOD isActive
   METHOD setSource

   METHOD onFlush
   METHOD onVideoFrameProbed

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QVideoProbe(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=~QVideoProbe()
$deleteMethod

$prototype=bool isActive() const
$method=|bool|isActive|

$prototype=bool setSource(QMediaObject * source)
$internalMethod=|bool|setSource,setSource1|QMediaObject *

$prototype=bool setSource(QMediaRecorder * source)
$internalMethod=|bool|setSource,setSource2|QMediaRecorder *

//[1]bool setSource(QMediaObject * source)
//[2]bool setSource(QMediaRecorder * mediaRecorder)

HB_FUNC_STATIC( QVIDEOPROBE_SETSOURCE )
{
  if( ISNUMPAR(1) && ISQMEDIAOBJECT(1) )
  {
    QVideoProbe_setSource1();
  }
  else if( ISNUMPAR(1) && ISQMEDIARECORDER(1) )
  {
    QVideoProbe_setSource2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$connectSignalFunction

$signalMethod=|flush()
$signalMethod=|videoFrameProbed(QVideoFrame)

#pragma ENDDUMP
