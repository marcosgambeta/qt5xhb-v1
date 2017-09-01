$header

#include "hbclass.ch"

CLASS QWinTaskbarProgress INHERIT QObject

   DATA self_destruction INIT .F.

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

/*
explicit QWinTaskbarProgress(QObject *parent = 0)
*/
$constructor=5,2,0|new|QObject *=0

$deleteMethod=5,2,0

/*
int value() const
*/
$method=5,2,0|int|value|

/*
void setValue(int value)
*/
$method=5,2,0|void|setValue|int

/*
int minimum() const
*/
$method=5,2,0|int|minimum|

/*
void setMinimum(int minimum)
*/
$method=5,2,0|void|setMinimum|int

/*
int maximum() const
*/
$method=5,2,0|int|maximum|

/*
void setMaximum(int maximum)
*/
$method=5,2,0|void|setMaximum|int

/*
bool isVisible() const
*/
$method=5,2,0|bool|isVisible|

/*
void setVisible(bool visible)
*/
$method=5,2,0|void|setVisible|bool

/*
bool isPaused() const
*/
$method=5,2,0|bool|isPaused|

/*
void setPaused(bool paused)
*/
$method=5,2,0|void|setPaused|bool

/*
bool isStopped() const
*/
$method=5,2,0|bool|isStopped|

/*
void setRange(int minimum, int maximum)
*/
$method=5,2,0|void|setRange|int,int

/*
void reset()
*/
$method=5,2,0|void|reset|

/*
void show()
*/
$method=5,2,0|void|show|

/*
void hide()
*/
$method=5,2,0|void|hide|

/*
void pause()
*/
$method=5,2,0|void|pause|

/*
void resume()
*/
$method=5,2,0|void|resume|

/*
void stop()
*/
$method=5,2,0|void|stop|

#pragma ENDDUMP
