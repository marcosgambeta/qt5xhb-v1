$header

#include "hbclass.ch"

CLASS QSound INHERIT QObject

   METHOD new
   METHOD delete
   METHOD loops
   METHOD loopsRemaining
   METHOD setLoops
   METHOD fileName
   METHOD isFinished
   METHOD stop
   METHOD play1
   METHOD play2
   METHOD play

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSound(const QString& filename, QObject* parent = 0)
$constructor=|new|const QString &,QObject *=0

$deleteMethod

$prototype=int loops() const
$method=|int|loops|

$prototype=int loopsRemaining() const
$method=|int|loopsRemaining|

$prototype=void setLoops(int)
$method=|void|setLoops|int

$prototype=QString fileName() const
$method=|QString|fileName|

$prototype=bool isFinished() const
$method=|bool|isFinished|

$prototype=void stop()
$method=|void|stop|

$prototype=void play()
$method=|void|play,play1|

$prototype=static void play(const QString& filename)
$staticMethod=|void|play,play2|const QString &

//[1]void play()
//[2]static void play(const QString& filename)

HB_FUNC_STATIC( QSOUND_PLAY )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSOUND_PLAY1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSOUND_PLAY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
