%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTDOCUMENTFRAGMENT
REQUEST QTEXTBLOCK
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTBLOCKFORMAT
REQUEST QTEXTLIST
REQUEST QTEXTTABLE
REQUEST QTEXTFRAME
REQUEST QTEXTDOCUMENT
#endif

CLASS QTextCursor

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isNull
   METHOD setPosition
   METHOD position
   METHOD positionInBlock
   METHOD anchor
   METHOD insertText
   METHOD movePosition
   METHOD visualNavigation
   METHOD setVisualNavigation
   METHOD setVerticalMovementX
   METHOD verticalMovementX
   METHOD setKeepPositionOnInsert
   METHOD keepPositionOnInsert
   METHOD deleteChar
   METHOD deletePreviousChar
   METHOD select
   METHOD hasSelection
   METHOD hasComplexSelection
   METHOD removeSelectedText
   METHOD clearSelection
   METHOD selectionStart
   METHOD selectionEnd
   METHOD selectedText
   METHOD selection
   METHOD selectedTableCells
   METHOD block
   METHOD charFormat
   METHOD setCharFormat
   METHOD mergeCharFormat
   METHOD blockFormat
   METHOD setBlockFormat
   METHOD mergeBlockFormat
   METHOD blockCharFormat
   METHOD setBlockCharFormat
   METHOD mergeBlockCharFormat
   METHOD atBlockStart
   METHOD atBlockEnd
   METHOD atStart
   METHOD atEnd
   METHOD insertBlock
   METHOD insertList
   METHOD createList
   METHOD currentList
   METHOD insertTable
   METHOD currentTable
   METHOD insertFrame
   METHOD currentFrame
   METHOD insertFragment
   METHOD insertHtml
   METHOD insertImage
   METHOD beginEditBlock
   METHOD joinPreviousEditBlock
   METHOD endEditBlock
   METHOD isCopyOf
   METHOD blockNumber
   METHOD columnNumber
   METHOD document

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

#include <QTextDocumentFragment>
#include <QTextBlock>

$prototype=QTextCursor()
$internalConstructor=|new1|

$prototype=QTextCursor(QTextDocument *document)
$internalConstructor=|new2|QTextDocument *

$prototype=QTextCursor(QTextDocumentPrivate *p, int pos)
$internalConstructor=|new3|QTextDocumentPrivate *,int

$prototype=QTextCursor(QTextFrame *frame)
$internalConstructor=|new4|QTextFrame *

$prototype=QTextCursor(const QTextBlock &block)
$internalConstructor=|new5|const QTextBlock &

$prototype=QTextCursor(QTextCursorPrivate *d)
$internalConstructor=|new6|QTextCursorPrivate *

$prototype=QTextCursor(const QTextCursor &cursor)
$internalConstructor=|new7|const QTextCursor &

//[1]QTextCursor()
//[2]QTextCursor(QTextDocument *document)
//[3]QTextCursor(QTextDocumentPrivate *p, int pos)
//[4]QTextCursor(QTextFrame *frame)
//[5]QTextCursor(const QTextBlock &block)
//[6]QTextCursor(QTextCursorPrivate *d)
//[7]QTextCursor(const QTextCursor &cursor)

HB_FUNC_STATIC( QTEXTCURSOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextCursor_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    QTextCursor_new2();
  }
  else if( ISNUMPAR(2) && ISQTEXTDOCUMENTPRIVATE(1) && ISNUM(2) )
  {
    QTextCursor_new3();
  }
  else if( ISNUMPAR(1) && ISQTEXTFRAME(1) )
  {
    QTextCursor_new4();
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
  {
    QTextCursor_new5();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSORPRIVATE(1) )
  {
    QTextCursor_new6();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextCursor_new7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QTextCursor &other)
$method=|void|swap|QTextCursor &

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=void setPosition(int pos, MoveMode mode = MoveAnchor)
$method=|void|setPosition|int,QTextCursor::MoveMode=QTextCursor::MoveAnchor

$prototype=int position() const
$method=|int|position|

$prototype=int positionInBlock() const
$method=|int|positionInBlock|

$prototype=int anchor() const
$method=|int|anchor|

$prototype=void insertText(const QString &text)
$internalMethod=|void|insertText,insertText1|const QString &

$prototype=void insertText(const QString &text, const QTextCharFormat &format)
$internalMethod=|void|insertText,insertText2|const QString &,const QTextCharFormat &

//[1]void insertText(const QString &text)
//[2]void insertText(const QString &text, const QTextCharFormat &format)

HB_FUNC_STATIC( QTEXTCURSOR_INSERTTEXT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCursor_insertText1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQTEXTCHARFORMAT(2) )
  {
    QTextCursor_insertText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool movePosition(MoveOperation op, MoveMode = MoveAnchor, int n = 1)
$method=|bool|movePosition|QTextCursor::MoveOperation,QTextCursor::MoveMode=QTextCursor::MoveAnchor,int=1

$prototype=bool visualNavigation() const
$method=|bool|visualNavigation|

$prototype=void setVisualNavigation(bool b)
$method=|void|setVisualNavigation|bool

$prototype=void setVerticalMovementX(int x)
$method=|void|setVerticalMovementX|int

$prototype=int verticalMovementX() const
$method=|int|verticalMovementX|

$prototype=void setKeepPositionOnInsert(bool b)
$method=|void|setKeepPositionOnInsert|bool

$prototype=bool keepPositionOnInsert() const
$method=|bool|keepPositionOnInsert|

$prototype=void deleteChar()
$method=|void|deleteChar|

$prototype=void deletePreviousChar()
$method=|void|deletePreviousChar|

$prototype=void select(SelectionType selection)
$method=|void|select|QTextCursor::SelectionType

$prototype=bool hasSelection() const
$method=|bool|hasSelection|

$prototype=bool hasComplexSelection() const
$method=|bool|hasComplexSelection|

$prototype=void removeSelectedText()
$method=|void|removeSelectedText|

$prototype=void clearSelection()
$method=|void|clearSelection|

$prototype=int selectionStart() const
$method=|int|selectionStart|

$prototype=int selectionEnd() const
$method=|int|selectionEnd|

$prototype=QString selectedText() const
$method=|QString|selectedText|

$prototype=QTextDocumentFragment selection() const
$method=|QTextDocumentFragment|selection|

$prototype=void selectedTableCells(int *firstRow, int *numRows, int *firstColumn, int *numColumns) const
$method=|void|selectedTableCells|int *,int *,int *,int *

$prototype=QTextBlock block() const
$method=|QTextBlock|block|

$prototype=QTextCharFormat charFormat() const
$method=|QTextCharFormat|charFormat|

$prototype=void setCharFormat(const QTextCharFormat &format)
$method=|void|setCharFormat|const QTextCharFormat &

$prototype=void mergeCharFormat(const QTextCharFormat &modifier)
$method=|void|mergeCharFormat|const QTextCharFormat &

$prototype=QTextBlockFormat blockFormat() const
$method=|QTextBlockFormat|blockFormat|

$prototype=void setBlockFormat(const QTextBlockFormat &format)
$method=|void|setBlockFormat|const QTextBlockFormat &

$prototype=void mergeBlockFormat(const QTextBlockFormat &modifier)
$method=|void|mergeBlockFormat|const QTextBlockFormat &

$prototype=QTextCharFormat blockCharFormat() const
$method=|QTextCharFormat|blockCharFormat|

$prototype=void setBlockCharFormat(const QTextCharFormat &format)
$method=|void|setBlockCharFormat|const QTextCharFormat &

$prototype=void mergeBlockCharFormat(const QTextCharFormat &modifier)
$method=|void|mergeBlockCharFormat|const QTextCharFormat &

$prototype=bool atBlockStart() const
$method=|bool|atBlockStart|

$prototype=bool atBlockEnd() const
$method=|bool|atBlockEnd|

$prototype=bool atStart() const
$method=|bool|atStart|

$prototype=bool atEnd() const
$method=|bool|atEnd|

$prototype=void insertBlock()
$internalMethod=|void|insertBlock,insertBlock1|

$prototype=void insertBlock(const QTextBlockFormat &format)
$internalMethod=|void|insertBlock,insertBlock2|const QTextBlockFormat &

$prototype=void insertBlock(const QTextBlockFormat &format, const QTextCharFormat &charFormat)
$internalMethod=|void|insertBlock,insertBlock3|const QTextBlockFormat &,const QTextCharFormat &

//[1]void insertBlock()
//[2]void insertBlock(const QTextBlockFormat &format)
//[3]void insertBlock(const QTextBlockFormat &format, const QTextCharFormat &charFormat)

HB_FUNC_STATIC( QTEXTCURSOR_INSERTBLOCK )
{
  if( ISNUMPAR(0) )
  {
    QTextCursor_insertBlock1();
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCKFORMAT(1) )
  {
    QTextCursor_insertBlock2();
  }
  else if( ISNUMPAR(2) && ISQTEXTBLOCKFORMAT(1) && ISQTEXTCHARFORMAT(2) )
  {
    QTextCursor_insertBlock3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QTextList *insertList(const QTextListFormat &format)
$internalMethod=|QTextList *|insertList,insertList1|const QTextListFormat &

$prototype=QTextList *insertList(QTextListFormat::Style style)
$internalMethod=|QTextList *|insertList,insertList2|QTextListFormat::Style

//[1]QTextList *insertList(const QTextListFormat &format)
//[2]QTextList *insertList(QTextListFormat::Style style)

HB_FUNC_STATIC( QTEXTCURSOR_INSERTLIST )
{
  if( ISNUMPAR(1) && ISQTEXTLISTFORMAT(1) )
  {
    QTextCursor_insertList1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextCursor_insertList2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QTextList *createList(const QTextListFormat &format)
$internalMethod=|QTextList *|createList,createList1|const QTextListFormat &

$prototype=QTextList *createList(QTextListFormat::Style style)
$internalMethod=|QTextList *|createList,createList2|QTextListFormat::Style

//[1]QTextList *createList(const QTextListFormat &format)
//[2]QTextList *createList(QTextListFormat::Style style)

HB_FUNC_STATIC( QTEXTCURSOR_CREATELIST )
{
  if( ISNUMPAR(1) && ISQTEXTLISTFORMAT(1) )
  {
    QTextCursor_createList1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextCursor_createList2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QTextList *currentList() const
$method=|QTextList *|currentList|

$prototype=QTextTable *insertTable(int rows, int cols, const QTextTableFormat &format)
$internalMethod=|QTextTable *|insertTable,insertTable1|int,int,const QTextTableFormat &

$prototype=QTextTable *insertTable(int rows, int cols)
$internalMethod=|QTextTable *|insertTable,insertTable2|int,int

//[1]QTextTable *insertTable(int rows, int cols, const QTextTableFormat &format)
//[2]QTextTable *insertTable(int rows, int cols)

HB_FUNC_STATIC( QTEXTCURSOR_INSERTTABLE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQTEXTTABLEFORMAT(3) )
  {
    QTextCursor_insertTable1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextCursor_insertTable2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QTextTable *currentTable() const
$method=|QTextTable *|currentTable|

$prototype=QTextFrame *insertFrame(const QTextFrameFormat &format)
$method=|QTextFrame *|insertFrame|const QTextFrameFormat &

$prototype=QTextFrame *currentFrame() const
$method=|QTextFrame *|currentFrame|

$prototype=void insertFragment(const QTextDocumentFragment &fragment)
$method=|void|insertFragment|const QTextDocumentFragment &

$prototype=void insertHtml(const QString &html)
$method=|void|insertHtml|const QString &

$prototype=void insertImage(const QTextImageFormat &format, QTextFrameFormat::Position alignment)
$internalMethod=|void|insertImage,insertImage1|const QTextImageFormat &,QTextFrameFormat::Position

$prototype=void insertImage(const QTextImageFormat &format)
$internalMethod=|void|insertImage,insertImage2|const QTextImageFormat &

$prototype=void insertImage(const QString &name)
$internalMethod=|void|insertImage,insertImage3|const QString &

$prototype=void insertImage(const QImage &image, const QString &name = QString())
$internalMethod=|void|insertImage,insertImage4|const QImage &,const QString &=QString()

//[1]void insertImage(const QTextImageFormat &format, QTextFrameFormat::Position alignment)
//[2]void insertImage(const QTextImageFormat &format)
//[3]void insertImage(const QString &name)
//[4]void insertImage(const QImage &image, const QString &name = QString())

HB_FUNC_STATIC( QTEXTCURSOR_INSERTIMAGE )
{
  if( ISNUMPAR(2) && ISQTEXTIMAGEFORMAT(1) && ISNUM(2) )
  {
    QTextCursor_insertImage1();
  }
  else if( ISNUMPAR(1) && ISQTEXTIMAGEFORMAT(1) )
  {
    QTextCursor_insertImage2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCursor_insertImage3();
  }
  else if( ISBETWEEN(1,2) && ISQIMAGE(1) && ISOPTCHAR(2) )
  {
    QTextCursor_insertImage4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void beginEditBlock()
$method=|void|beginEditBlock|

$prototype=void joinPreviousEditBlock()
$method=|void|joinPreviousEditBlock|

$prototype=void endEditBlock()
$method=|void|endEditBlock|

$prototype=bool isCopyOf(const QTextCursor &other) const
$method=|bool|isCopyOf|const QTextCursor &

$prototype=int blockNumber() const
$method=|int|blockNumber|

$prototype=int columnNumber() const
$method=|int|columnNumber|

$prototype=QTextDocument *document() const
$method=|QTextDocument *|document|

$extraMethods

#pragma ENDDUMP
