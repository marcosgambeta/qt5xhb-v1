%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextDocument>
#include <QtGui/QTextList>

$prototype=QTextBlock(QTextDocumentPrivate *priv, int b)
%% TODO: implementar ?
%% $internalConstructor=|new1|QTextDocumentPrivate *,int

$prototype=QTextBlock()
$internalConstructor=|new2|

$prototype=QTextBlock(const QTextBlock &o)
$internalConstructor=|new3|const QTextBlock &

//[1]QTextBlock(QTextDocumentPrivate *priv, int b)
//[2]QTextBlock()
//[3]QTextBlock(const QTextBlock &o)

HB_FUNC_STATIC( QTEXTBLOCK_NEW )
{
%%  if( ISNUMPAR(2) && ISOBJECT(1) && ISNUM(2) )
%%  {
%%    QTextBlock_new1();
%%  }
%%  else if( ISNUMPAR(0) )
  if( ISNUMPAR(0) )
  {
    QTextBlock_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
  {
    QTextBlock_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=int position() const
$method=|int|position|

$prototype=int length() const
$method=|int|length|

$prototype=bool contains(int position) const
$method=|bool|contains|int

$prototype=QTextLayout *layout() const
$method=|QTextLayout *|layout|

$prototype=void clearLayout()
$method=|void|clearLayout|

$prototype=QTextBlockFormat blockFormat() const
$method=|QTextBlockFormat|blockFormat|

$prototype=int blockFormatIndex() const
$method=|int|blockFormatIndex|

$prototype=QTextCharFormat charFormat() const
$method=|QTextCharFormat|charFormat|

$prototype=int charFormatIndex() const
$method=|int|charFormatIndex|

$prototype=Qt::LayoutDirection textDirection() const
$method=|Qt::LayoutDirection|textDirection|

$prototype=QString text() const
$method=|QString|text|

$prototype=const QTextDocument *document() const
$method=|const QTextDocument *|document|

$prototype=QTextList *textList() const
$method=|QTextList *|textList|

$prototype=QTextBlockUserData *userData() const
$method=|QTextBlockUserData *|userData|

$prototype=void setUserData(QTextBlockUserData *data)
$method=|void|setUserData|QTextBlockUserData *

$prototype=int userState() const
$method=|int|userState|

$prototype=void setUserState(int state)
$method=|void|setUserState|int

$prototype=int revision() const
$method=|int|revision|

$prototype=void setRevision(int rev)
$method=|void|setRevision|int

$prototype=bool isVisible() const
$method=|bool|isVisible|

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

$prototype=int blockNumber() const
$method=|int|blockNumber|

$prototype=int firstLineNumber() const
$method=|int|firstLineNumber|

$prototype=void setLineCount(int count)
$method=|void|setLineCount|int

$prototype=int lineCount() const
$method=|int|lineCount|

$prototype=QTextBlock next() const
$method=|QTextBlock|next|

$prototype=QTextBlock previous() const
$method=|QTextBlock|previous|

$prototype=QTextDocumentPrivate *docHandle() const
%% TODO: implementar ?
%% $method=|QTextDocumentPrivate *|docHandle|

$prototype=int fragmentIndex() const
$method=|int|fragmentIndex|

$extraMethods

#pragma ENDDUMP
