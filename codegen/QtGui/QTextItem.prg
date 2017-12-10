$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QTextItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD descent
   METHOD ascent
   METHOD width
   METHOD renderFlags
   METHOD text
   METHOD font

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

$deleteMethod

$prototype=qreal descent() const
$method=|qreal|descent|

$prototype=qreal ascent() const
$method=|qreal|ascent|

$prototype=qreal width() const
$method=|qreal|width|

$prototype=RenderFlags renderFlags() const
$method=|QTextItem::RenderFlags|renderFlags|

$prototype=QString text() const
$method=|QString|text|

$prototype=QFont font() const
$method=|QFont|font|

$extraMethods

#pragma ENDDUMP
