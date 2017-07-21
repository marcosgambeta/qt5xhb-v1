$header

#include "hbclass.ch"

CLASS QEvent

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD accept
   METHOD ignore
   METHOD isAccepted
   METHOD setAccepted
   METHOD spontaneous
   METHOD type
   METHOD registerEventType

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

/*
QEvent ( Type type )
*/
$constructor=|new|QEvent::Type

$deleteMethod

/*
void accept ()
*/
$method=|void|accept|

/*
void ignore ()
*/
$method=|void|ignore|

/*
bool isAccepted () const
*/
$method=|bool|isAccepted|

/*
void setAccepted ( bool accepted )
*/
$method=|void|setAccepted|bool

/*
bool spontaneous () const
*/
$method=|bool|spontaneous|

/*
Type type () const
*/
$method=|QEvent::Type|type|

/*
static int registerEventType ( int hint = -1 )
*/
$staticMethod=|int|registerEventType|int=-1

$extraMethods

#pragma ENDDUMP
