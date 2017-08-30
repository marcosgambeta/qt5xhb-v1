$header

#include "hbclass.ch"

CLASS QWindowStateChangeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD oldState
   METHOD isOverride

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QWindowStateChangeEvent(Qt::WindowStates aOldState, bool isOverride = false)
*/
$constructor=|new|Qt::WindowStates,bool=false

$deleteMethod

/*
Qt::WindowStates oldState() const
*/
$method=|Qt::WindowStates|oldState|

/*
bool isOverride() const
*/
$method=|bool|isOverride|

#pragma ENDDUMP
