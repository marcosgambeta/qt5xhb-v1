$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QTEXTFORMAT
#endif

CLASS QTextInlineObject

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD rect
   METHOD width
   METHOD ascent
   METHOD descent
   METHOD height
   METHOD textDirection
   METHOD setWidth
   METHOD setAscent
   METHOD setDescent
   METHOD textPosition
   METHOD formatIndex
   METHOD format

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
QTextInlineObject(int i, QTextEngine *e)
*/
%% TODO: classe QTextEngine
$internalConstructor=|new1|int,QTextEngine *

/*
QTextInlineObject()
*/
$internalConstructor=|new2|

//[1]QTextInlineObject(int i, QTextEngine *e)
//[2]QTextInlineObject()

HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISOBJECT(2) )
  {
    QTextInlineObject_new1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextInlineObject_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
QRectF rect() const
*/
$method=|QRectF|rect|

/*
qreal width() const
*/
$method=|qreal|width|

/*
qreal ascent() const
*/
$method=|qreal|ascent|

/*
qreal descent() const
*/
$method=|qreal|descent|

/*
qreal height() const
*/
$method=|qreal|height|

/*
Qt::LayoutDirection textDirection() const
*/
$method=|Qt::LayoutDirection|textDirection|

/*
void setWidth(qreal w)
*/
$method=|void|setWidth|qreal

/*
void setAscent(qreal a)
*/
$method=|void|setAscent|qreal

/*
void setDescent(qreal d)
*/
$method=|void|setDescent|qreal

/*
int textPosition() const
*/
$method=|int|textPosition|

/*
int formatIndex() const
*/
$method=|int|formatIndex|

/*
QTextFormat format() const
*/
$method=|QTextFormat|format|

$extraMethods

#pragma ENDDUMP
