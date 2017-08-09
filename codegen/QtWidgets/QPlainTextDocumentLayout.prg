$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZEF
#endif

CLASS QPlainTextDocumentLayout INHERIT QAbstractTextDocumentLayout

   METHOD new
   METHOD delete
   METHOD cursorWidth
   METHOD ensureBlockLayout
   METHOD requestUpdate
   METHOD setCursorWidth
   METHOD blockBoundingRect
   METHOD documentSize
   METHOD frameBoundingRect
   METHOD hitTest
   METHOD pageCount

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QPlainTextDocumentLayout ( QTextDocument * document )
*/
$constructor=|new|QTextDocument *

$deleteMethod

/*
int cursorWidth () const
*/
$method=|int|cursorWidth|

/*
void ensureBlockLayout ( const QTextBlock & block ) const
*/
$method=|void|ensureBlockLayout|const QTextBlock &

/*
void requestUpdate ()
*/
$method=|void|requestUpdate|

/*
void setCursorWidth ( int width )
*/
$method=|void|setCursorWidth|int

/*
virtual QRectF blockBoundingRect ( const QTextBlock & block ) const
*/
$method=|QRectF|blockBoundingRect|const QTextBlock &

/*
virtual QSizeF documentSize () const
*/
$method=|QSizeF|documentSize|

/*
virtual QRectF frameBoundingRect ( QTextFrame * ) const
*/
$method=|QRectF|frameBoundingRect|QTextFrame *

/*
virtual int hitTest ( const QPointF &, Qt::HitTestAccuracy ) const
*/
$method=|int|hitTest|const QPointF &,Qt::HitTestAccuracy

/*
virtual int pageCount () const
*/
$method=|int|pageCount|

#pragma ENDDUMP
