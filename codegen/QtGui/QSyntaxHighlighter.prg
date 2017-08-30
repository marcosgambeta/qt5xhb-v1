$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTDOCUMENT
#endif

CLASS QSyntaxHighlighter INHERIT QObject

   DATA self_destruction INIT .F.

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

/*
QSyntaxHighlighter(QObject *parent)
*/
$internalConstructor=|new1|QObject *

/*
QSyntaxHighlighter(QTextDocument *parent)
*/
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

/*
void setDocument(QTextDocument *doc)
*/
$method=|void|setDocument|QTextDocument *

/*
QTextDocument *document() const
*/
$method=|QTextDocument *|document|

/*
void rehighlight()
*/
$method=|void|rehighlight|

/*
void rehighlightBlock(const QTextBlock &block)
*/
$method=|void|rehighlightBlock|const QTextBlock &

#pragma ENDDUMP
