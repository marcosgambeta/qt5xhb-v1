%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTDOCUMENT
#endif

CLASS QSyntaxHighlighter INHERIT QObject

   METHOD new
   METHOD delete
   METHOD setDocument
   METHOD document
   METHOD rehighlight
   METHOD rehighlightBlock

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSyntaxHighlighter(QObject *parent)
$internalConstructor=|new1|QObject *

$prototype=QSyntaxHighlighter(QTextDocument *parent)
$internalConstructor=|new2|QTextDocument *

//[1]QSyntaxHighlighter(QObject *parent)
//[2]QSyntaxHighlighter(QTextDocument *parent)

HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_NEW )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QSyntaxHighlighter_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    QSyntaxHighlighter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setDocument(QTextDocument *doc)
$method=|void|setDocument|QTextDocument *

$prototype=QTextDocument *document() const
$method=|QTextDocument *|document|

$prototype=void rehighlight()
$method=|void|rehighlight|

$prototype=void rehighlightBlock(const QTextBlock &block)
$method=|void|rehighlightBlock|const QTextBlock &

#pragma ENDDUMP
