%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractTextDocumentLayout

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPlainTextDocumentLayout ( QTextDocument * document )
$constructor=|new|QTextDocument *

$deleteMethod

$prototype=int cursorWidth () const
$method=|int|cursorWidth|

$prototype=void ensureBlockLayout ( const QTextBlock & block ) const
$method=|void|ensureBlockLayout|const QTextBlock &

$prototype=void requestUpdate ()
$method=|void|requestUpdate|

$prototype=void setCursorWidth ( int width )
$method=|void|setCursorWidth|int

$prototype=virtual QRectF blockBoundingRect ( const QTextBlock & block ) const
$virtualMethod=|QRectF|blockBoundingRect|const QTextBlock &

$prototype=virtual QSizeF documentSize () const
$virtualMethod=|QSizeF|documentSize|

$prototype=virtual QRectF frameBoundingRect ( QTextFrame * ) const
$virtualMethod=|QRectF|frameBoundingRect|QTextFrame *

$prototype=virtual int hitTest ( const QPointF &, Qt::HitTestAccuracy ) const
$virtualMethod=|int|hitTest|const QPointF &,Qt::HitTestAccuracy

$prototype=virtual int pageCount () const
$virtualMethod=|int|pageCount|

#pragma ENDDUMP
