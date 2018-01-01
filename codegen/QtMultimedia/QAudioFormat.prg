%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAudioFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD byteOrder
   METHOD channelCount
   METHOD codec
   METHOD isValid
   METHOD sampleRate
   METHOD sampleSize
   METHOD sampleType
   METHOD setByteOrder
   METHOD setChannelCount
   METHOD setCodec
   METHOD setSampleRate
   METHOD setSampleSize
   METHOD setSampleType

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

$prototype=QAudioFormat ()
$constructor=|new1|

$prototype=QAudioFormat ( const QAudioFormat & other )
$constructor=|new2|const QAudioFormat &

//[1]QAudioFormat ()
//[2]QAudioFormat ( const QAudioFormat & other )

HB_FUNC_STATIC( QAUDIOFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIOFORMAT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
  {
    HB_FUNC_EXEC( QAUDIOFORMAT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

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

$prototype=void setChannelCount ( int channels )
$method=|void|setChannelCount|int

$prototype=void setCodec ( const QString & codec )
$method=|void|setCodec|const QString &

$prototype=void setSampleRate ( int samplerate )
$method=|void|setSampleRate|int

$prototype=void setSampleSize ( int sampleSize )
$method=|void|setSampleSize|int

$prototype=void setSampleType ( QAudioFormat::SampleType sampleType )
$method=|void|setSampleType|QAudioFormat::SampleType

$extraMethods

#pragma ENDDUMP
