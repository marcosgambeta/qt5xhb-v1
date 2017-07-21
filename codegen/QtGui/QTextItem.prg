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

/*
qreal descent() const
*/
$method=|qreal|descent|

/*
qreal ascent() const
*/
$method=|qreal|ascent|

/*
qreal width() const
*/
$method=|qreal|width|

/*
RenderFlags renderFlags() const
*/
HB_FUNC_STATIC( QTEXTITEM_RENDERFLAGS )
{
  QTextItem * obj = (QTextItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->renderFlags () );
  }
}

/*
QString text() const
*/
$method=|QString|text|

/*
QFont font() const
*/
$method=|QFont|font|

$extraMethods

#pragma ENDDUMP
