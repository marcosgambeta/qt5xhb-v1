%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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
   METHOD play

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSound(const QString& filename, QObject* parent = Q_NULLPTR)
$constructor=|new|const QString &,QObject *=0

$prototype=~QSound()
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
$slotMethod=|void|stop|

$prototype=void play()
$internalSlotMethod=|void|play,play1|

$prototype=static void play(const QString& filename)
$internalStaticMethod=|void|play,play2|const QString &

//[1]void play()
//[2]static void play(const QString& filename)

HB_FUNC_STATIC( QSOUND_PLAY )
{
  if( ISNUMPAR(0) )
  {
    QSound_play1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSound_play2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void deleteOnComplete() (slot) (private)

#pragma ENDDUMP
