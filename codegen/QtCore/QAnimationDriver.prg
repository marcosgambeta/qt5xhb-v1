$header

#include "hbclass.ch"

CLASS QAnimationDriver INHERIT QObject

   METHOD new
   METHOD delete
   METHOD advance
   METHOD install
   METHOD uninstall
   METHOD isRunning
   METHOD elapsed
   METHOD setStartTime
   METHOD startTime

   METHOD onStarted
   METHOD onStopped

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAnimationDriver(QObject *parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=virtual void advance()
$method=|void|advance|

$prototype=void install()
$method=|void|install|

$prototype=void uninstall()
$method=|void|uninstall|

$prototype=bool isRunning() const
$method=|bool|isRunning|

$prototype=virtual qint64 elapsed() const
$method=|qint64|elapsed|

$prototype=void setStartTime(qint64 startTime)
$method=|void|setStartTime|qint64

$prototype=qint64 startTime() const
$method=|qint64|startTime|

#pragma ENDDUMP
