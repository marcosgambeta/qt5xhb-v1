%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

%% TODO: class under #ifndef QT_NO_SYNTAXHIGHLIGHTER

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextDocument>

$prototype=explicit QSyntaxHighlighter(QObject *parent)
%% TODO: abstract
%% $internalConstructor=|new1|QObject *

$prototype=explicit QSyntaxHighlighter(QTextDocument *parent)
%% TODO: abstract
%% $internalConstructor=|new2|QTextDocument *

%% /*
%% [1]explicit QSyntaxHighlighter(QObject *parent)
%% [2]explicit QSyntaxHighlighter(QTextDocument *parent)
%% */

%% HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_NEW )
%% {
%%   if( ISNUMPAR(1) && ISQOBJECT(1) )
%%   {
%%     QSyntaxHighlighter_new1();
%%   }
%%   else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
%%   {
%%     QSyntaxHighlighter_new2();
%%   }
%%   else
%%   {
%%     hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%   }
%% }

$prototype=virtual ~QSyntaxHighlighter()
$deleteMethod

$prototype=void setDocument(QTextDocument *doc)
$method=|void|setDocument|QTextDocument *

$prototype=QTextDocument *document() const
$method=|QTextDocument *|document|

$prototype=void rehighlight()
$slotMethod=|void|rehighlight|

$prototype=void rehighlightBlock(const QTextBlock &block)
$slotMethod=|void|rehighlightBlock|const QTextBlock &

#pragma ENDDUMP
