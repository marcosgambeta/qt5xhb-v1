$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QPOINTF
REQUEST QPAINTERPATH
REQUEST QREGION
REQUEST QFONT
REQUEST QPAINTER
REQUEST QPEN
REQUEST QTRANSFORM
#endif

CLASS QPaintEngineState

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD backgroundBrush
   METHOD backgroundMode
   METHOD brush
   METHOD brushNeedsResolving
   METHOD brushOrigin
   METHOD clipOperation
   METHOD clipPath
   METHOD clipRegion
   METHOD compositionMode
   METHOD font
   METHOD isClipEnabled
   METHOD opacity
   METHOD painter
   METHOD pen
   METHOD penNeedsResolving
   METHOD renderHints
   METHOD state
   METHOD transform

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

/*
QBrush backgroundBrush () const
*/
$method=|QBrush|backgroundBrush|

/*
Qt::BGMode backgroundMode () const
*/
$method=|Qt::BGMode|backgroundMode|

/*
QBrush brush () const
*/
$method=|QBrush|brush|

/*
bool brushNeedsResolving () const
*/
$method=|bool|brushNeedsResolving|

/*
QPointF brushOrigin () const
*/
$method=|QPointF|brushOrigin|

/*
Qt::ClipOperation clipOperation () const
*/
$method=|Qt::ClipOperation|clipOperation|

/*
QPainterPath clipPath () const
*/
$method=|QPainterPath|clipPath|

/*
QRegion clipRegion () const
*/
$method=|QRegion|clipRegion|

/*
QPainter::CompositionMode compositionMode () const
*/
$method=|QPainter::CompositionMode|compositionMode|

/*
QFont font () const
*/
$method=|QFont|font|

/*
bool isClipEnabled () const
*/
$method=|bool|isClipEnabled|

/*
qreal opacity () const
*/
$method=|qreal|opacity|

/*
QPainter * painter () const
*/
$method=|QPainter *|painter|

/*
QPen pen () const
*/
$method=|QPen|pen|

/*
bool penNeedsResolving () const
*/
$method=|bool|penNeedsResolving|

/*
QPainter::RenderHints renderHints () const
*/
$method=|QPainter::RenderHints|renderHints|

/*
QPaintEngine::DirtyFlags state () const
*/
$method=|QPaintEngine::DirtyFlags|state|

/*
QTransform transform () const
*/
$method=|QTransform|transform|

$extraMethods

#pragma ENDDUMP
