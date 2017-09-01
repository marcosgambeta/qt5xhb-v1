$header

#include "hbclass.ch"

CLASS QAudioProbe INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD setSource1
   METHOD setSource2
   METHOD setSource

   METHOD onAudioBufferProbed
   METHOD onFlush

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAudioProbe(QObject * parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
bool isActive() const
*/
$method=|bool|isActive|

/*
bool setSource(QMediaObject * source)
*/
$method=|bool|setSource,setSource1|QMediaObject *

/*
bool setSource(QMediaRecorder * mediaRecorder)
*/
$method=|bool|setSource,setSource2|QMediaRecorder *

//[1]bool setSource(QMediaObject * source)
//[2]bool setSource(QMediaRecorder * mediaRecorder)

HB_FUNC_STATIC( QAUDIOPROBE_SETSOURCE )
{
  if( ISNUMPAR(1) && ISQMEDIAOBJECT(1) )
  {
    HB_FUNC_EXEC( QAUDIOPROBE_SETSOURCE1 );
  }
  else if( ISNUMPAR(1) && ISQMEDIARECORDER(1) )
  {
    HB_FUNC_EXEC( QAUDIOPROBE_SETSOURCE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
