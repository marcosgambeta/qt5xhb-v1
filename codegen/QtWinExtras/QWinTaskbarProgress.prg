%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QWinTaskbarProgress INHERIT QObject

   METHOD new
   METHOD delete
   METHOD value
   METHOD setValue
   METHOD minimum
   METHOD setMinimum
   METHOD maximum
   METHOD setMaximum
   METHOD isVisible
   METHOD setVisible
   METHOD isPaused
   METHOD setPaused
   METHOD isStopped
   METHOD setRange
   METHOD reset
   METHOD show
   METHOD hide
   METHOD pause
   METHOD resume
   METHOD stop

   METHOD onValueChanged
   METHOD onMinimumChanged
   METHOD onMaximumChanged
   METHOD onVisibilityChanged
   METHOD onPausedChanged
   METHOD onStoppedChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=explicit QWinTaskbarProgress(QObject *parent = 0)
$constructor=5,2,0|new|QObject *=0

$deleteMethod=5,2,0

$prototype=int value() const
$method=5,2,0|int|value|

$prototype=void setValue(int value)
$method=5,2,0|void|setValue|int

$prototype=int minimum() const
$method=5,2,0|int|minimum|

$prototype=void setMinimum(int minimum)
$method=5,2,0|void|setMinimum|int

$prototype=int maximum() const
$method=5,2,0|int|maximum|

$prototype=void setMaximum(int maximum)
$method=5,2,0|void|setMaximum|int

$prototype=bool isVisible() const
$method=5,2,0|bool|isVisible|

$prototype=void setVisible(bool visible)
$method=5,2,0|void|setVisible|bool

$prototype=bool isPaused() const
$method=5,2,0|bool|isPaused|

$prototype=void setPaused(bool paused)
$method=5,2,0|void|setPaused|bool

$prototype=bool isStopped() const
$method=5,2,0|bool|isStopped|

$prototype=void setRange(int minimum, int maximum)
$method=5,2,0|void|setRange|int,int

$prototype=void reset()
$method=5,2,0|void|reset|

$prototype=void show()
$method=5,2,0|void|show|

$prototype=void hide()
$method=5,2,0|void|hide|

$prototype=void pause()
$method=5,2,0|void|pause|

$prototype=void resume()
$method=5,2,0|void|resume|

$prototype=void stop()
$method=5,2,0|void|stop|

$beginSignals
$signalMethod=5,2,0|valueChanged(int)
$signalMethod=5,2,0|minimumChanged(int)
$signalMethod=5,2,0|maximumChanged(int)
$signalMethod=5,2,0|visibilityChanged(bool)
$signalMethod=5,2,0|pausedChanged(bool)
$signalMethod=5,2,0|stoppedChanged(bool)
$endSignals

#pragma ENDDUMP
