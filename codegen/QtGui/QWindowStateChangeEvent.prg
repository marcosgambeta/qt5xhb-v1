$header

#include "hbclass.ch"

CLASS QWindowStateChangeEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD oldState
   METHOD isOverride

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWindowStateChangeEvent(Qt::WindowStates aOldState, bool isOverride = false)
$constructor=|new|Qt::WindowStates,bool=false

$deleteMethod

$prototype=Qt::WindowStates oldState() const
$method=|Qt::WindowStates|oldState|

$prototype=bool isOverride() const
$method=|bool|isOverride|

#pragma ENDDUMP
