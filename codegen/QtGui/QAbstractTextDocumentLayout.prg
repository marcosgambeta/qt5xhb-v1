$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QTEXTDOCUMENT
REQUEST QSIZEF
REQUEST QTEXTOBJECTINTERFACE
REQUEST QPAINTDEVICE
#endif

CLASS QAbstractTextDocumentLayout INHERIT QObject

   METHOD delete
   METHOD anchorAt
   METHOD blockBoundingRect
   METHOD document
   METHOD documentSize
   METHOD frameBoundingRect
   METHOD handlerForObject
   METHOD hitTest
   METHOD pageCount
   METHOD paintDevice
   METHOD registerHandler
   METHOD setPaintDevice

   METHOD onDocumentSizeChanged
   METHOD onPageCountChanged
   METHOD onUpdate
   METHOD onUpdateBlock

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QString anchorAt ( const QPointF & position ) const
$method=|QString|anchorAt|const QPointF &

$prototype=virtual QRectF blockBoundingRect ( const QTextBlock & block ) const = 0
$method=|QRectF|blockBoundingRect|const QTextBlock &

$prototype=QTextDocument * document () const
$method=|QTextDocument *|document|

$prototype=virtual QSizeF documentSize () const = 0
$method=|QSizeF|documentSize|

$prototype=virtual QRectF frameBoundingRect ( QTextFrame * frame ) const = 0
$method=|QRectF|frameBoundingRect|QTextFrame *

$prototype=QTextObjectInterface * handlerForObject ( int objectType ) const
$method=|QTextObjectInterface *|handlerForObject|int

$prototype=virtual int hitTest ( const QPointF & point, Qt::HitTestAccuracy accuracy ) const = 0
$method=|int|hitTest|const QPointF &,Qt::HitTestAccuracy

$prototype=virtual int pageCount () const = 0
$method=|int|pageCount|

$prototype=QPaintDevice * paintDevice () const
$method=|QPaintDevice *|paintDevice|

$prototype=void registerHandler ( int objectType, QObject * component )
$method=|void|registerHandler|int,QObject *

$prototype=void setPaintDevice ( QPaintDevice * device )
$method=|void|setPaintDevice|QPaintDevice *

#pragma ENDDUMP
