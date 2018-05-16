%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QTEXTDOCUMENT
REQUEST QSIZEF
REQUEST QTEXTOBJECTINTERFACE
REQUEST QPAINTDEVICE
#endif

$beginClassFrom=QObject

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QString anchorAt ( const QPointF & position ) const
$method=|QString|anchorAt|const QPointF &

$prototype=virtual QRectF blockBoundingRect ( const QTextBlock & block ) const = 0
$virtualMethod=|QRectF|blockBoundingRect|const QTextBlock &

$prototype=QTextDocument * document () const
$method=|QTextDocument *|document|

$prototype=virtual QSizeF documentSize () const = 0
$virtualMethod=|QSizeF|documentSize|

$prototype=virtual QRectF frameBoundingRect ( QTextFrame * frame ) const = 0
$virtualMethod=|QRectF|frameBoundingRect|QTextFrame *

$prototype=QTextObjectInterface * handlerForObject ( int objectType ) const
$method=|QTextObjectInterface *|handlerForObject|int

$prototype=virtual int hitTest ( const QPointF & point, Qt::HitTestAccuracy accuracy ) const = 0
$virtualMethod=|int|hitTest|const QPointF &,Qt::HitTestAccuracy

$prototype=virtual int pageCount () const = 0
$virtualMethod=|int|pageCount|

$prototype=QPaintDevice * paintDevice () const
$method=|QPaintDevice *|paintDevice|

$prototype=void registerHandler ( int objectType, QObject * component )
$method=|void|registerHandler|int,QObject *

$prototype=void setPaintDevice ( QPaintDevice * device )
$method=|void|setPaintDevice|QPaintDevice *

$beginSignals
$signal=|documentSizeChanged(QSizeF)
$signal=|pageCountChanged(int)
$signal=|update(QRectF)
$signal=|updateBlock(QTextBlock)
$endSignals

#pragma ENDDUMP
