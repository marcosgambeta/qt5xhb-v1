%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAudioFormat ()
$internalConstructor=|new1|

$prototype=QAudioFormat ( const QAudioFormat & other )
$internalConstructor=|new2|const QAudioFormat &

/*
[1]QAudioFormat ()
[2]QAudioFormat ( const QAudioFormat & other )
*/

HB_FUNC_STATIC( QAUDIOFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAudioFormat_new1();
  }
  else if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
  {
    QAudioFormat_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QAudioFormat()
$deleteMethod

$prototype=QAudioFormat::Endian byteOrder () const
$method=|QAudioFormat::Endian|byteOrder|

$prototype=int channelCount () const
$method=|int|channelCount|

$prototype=QString codec () const
$method=|QString|codec|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=int sampleRate () const
$method=|int|sampleRate|

$prototype=int sampleSize () const
$method=|int|sampleSize|

$prototype=QAudioFormat::SampleType sampleType () const
$method=|QAudioFormat::SampleType|sampleType|

$prototype=void setByteOrder ( QAudioFormat::Endian byteOrder )
$method=|void|setByteOrder|QAudioFormat::Endian

$prototype=void setChannelCount ( int channelCount )
$method=|void|setChannelCount|int

$prototype=void setCodec ( const QString & codec )
$method=|void|setCodec|const QString &

$prototype=void setSampleRate ( int sampleRate )
$method=|void|setSampleRate|int

$prototype=void setSampleSize ( int sampleSize )
$method=|void|setSampleSize|int

$prototype=void setSampleType ( QAudioFormat::SampleType sampleType )
$method=|void|setSampleType|QAudioFormat::SampleType

$prototype=qint32 bytesForDuration(qint64 duration) const
$method=|qint32|bytesForDuration|qint64

$prototype=qint64 durationForBytes(qint32 byteCount) const
$method=|qint64|durationForBytes|qint32

$prototype=qint32 bytesForFrames(qint32 frameCount) const
$method=|qint32|bytesForFrames|qint32

$prototype=qint32 framesForBytes(qint32 byteCount) const
$method=|qint32|framesForBytes|qint32

$prototype=qint32 framesForDuration(qint64 duration) const
$method=|qint32|framesForDuration|qint64

$prototype=qint64 durationForFrames(qint32 frameCount) const
$method=|qint64|durationForFrames|qint32

$prototype=int bytesPerFrame() const
$method=|int|bytesPerFrame|

$extraMethods

#pragma ENDDUMP
