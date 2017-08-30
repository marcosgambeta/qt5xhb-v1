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

/*
QTextCursor()
*/
$internalConstructor=|new1|

/*
QTextCursor(QTextDocument *document)
*/
$internalConstructor=|new2|QTextDocument *

/*
QTextCursor(QTextDocumentPrivate *p, int pos)
*/
$internalConstructor=|new3|QTextDocumentPrivate *,int

/*
QTextCursor(QTextFrame *frame)
*/
$internalConstructor=|new4|QTextFrame *

/*
QTextCursor(const QTextBlock &block)
*/
$internalConstructor=|new5|const QTextBlock &

/*
QTextCursor(QTextCursorPrivate *d)
*/
$internalConstructor=|new6|QTextCursorPrivate *

/*
QTextCursor(const QTextCursor &cursor)
*/
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

/*
void swap(QTextCursor &other)
*/
$method=|void|swap|QTextCursor &

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
void setPosition(int pos, MoveMode mode = MoveAnchor)
*/
$method=|void|setPosition|int,QTextCursor::MoveMode=QTextCursor::MoveAnchor

/*
int position() const
*/
$method=|int|position|

/*
int positionInBlock() const
*/
$method=|int|positionInBlock|

/*
int anchor() const
*/
$method=|int|anchor|

/*
void insertText(const QString &text)
*/
$internalMethod=|void|insertText,insertText1|const QString &

/*
void insertText(const QString &text, const QTextCharFormat &format)
*/
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

/*
bool movePosition(MoveOperation op, MoveMode = MoveAnchor, int n = 1)
*/
$method=|bool|movePosition|QTextCursor::MoveOperation,QTextCursor::MoveMode=QTextCursor::MoveAnchor,int=1

/*
bool visualNavigation() const
*/
$method=|bool|visualNavigation|

/*
void setVisualNavigation(bool b)
*/
$method=|void|setVisualNavigation|bool

/*
void setVerticalMovementX(int x)
*/
$method=|void|setVerticalMovementX|int

/*
int verticalMovementX() const
*/
$method=|int|verticalMovementX|

/*
void setKeepPositionOnInsert(bool b)
*/
$method=|void|setKeepPositionOnInsert|bool

/*
bool keepPositionOnInsert() const
*/
$method=|bool|keepPositionOnInsert|

/*
void deleteChar()
*/
$method=|void|deleteChar|

/*
void deletePreviousChar()
*/
$method=|void|deletePreviousChar|

/*
void select(SelectionType selection)
*/
$method=|void|select|QTextCursor::SelectionType

/*
bool hasSelection() const
*/
$method=|bool|hasSelection|

/*
bool hasComplexSelection() const
*/
$method=|bool|hasComplexSelection|

/*
void removeSelectedText()
*/
$method=|void|removeSelectedText|

/*
void clearSelection()
*/
$method=|void|clearSelection|

/*
int selectionStart() const
*/
$method=|int|selectionStart|

/*
int selectionEnd() const
*/
$method=|int|selectionEnd|

/*
QString selectedText() const
*/
$method=|QString|selectedText|

/*
QTextDocumentFragment selection() const
*/
$method=|QTextDocumentFragment|selection|

/*
void selectedTableCells(int *firstRow, int *numRows, int *firstColumn, int *numColumns) const
*/
$method=|void|selectedTableCells|int *,int *,int *,int *

/*
QTextBlock block() const
*/
$method=|QTextBlock|block|

/*
QTextCharFormat charFormat() const
*/
$method=|QTextCharFormat|charFormat|

/*
void setCharFormat(const QTextCharFormat &format)
*/
$method=|void|setCharFormat|const QTextCharFormat &

/*
void mergeCharFormat(const QTextCharFormat &modifier)
*/
$method=|void|mergeCharFormat|const QTextCharFormat &

/*
QTextBlockFormat blockFormat() const
*/
$method=|QTextBlockFormat|blockFormat|

/*
void setBlockFormat(const QTextBlockFormat &format)
*/
$method=|void|setBlockFormat|const QTextBlockFormat &

/*
void mergeBlockFormat(const QTextBlockFormat &modifier)
*/
$method=|void|mergeBlockFormat|const QTextBlockFormat &

/*
QTextCharFormat blockCharFormat() const
*/
$method=|QTextCharFormat|blockCharFormat|

/*
void setBlockCharFormat(const QTextCharFormat &format)
*/
$method=|void|setBlockCharFormat|const QTextCharFormat &

/*
void mergeBlockCharFormat(const QTextCharFormat &modifier)
*/
$method=|void|mergeBlockCharFormat|const QTextCharFormat &

/*
bool atBlockStart() const
*/
$method=|bool|atBlockStart|

/*
bool atBlockEnd() const
*/
$method=|bool|atBlockEnd|

/*
bool atStart() const
*/
$method=|bool|atStart|

/*
bool atEnd() const
*/
$method=|bool|atEnd|

/*
void insertBlock()
*/
$internalMethod=|void|insertBlock,insertBlock1|

/*
void insertBlock(const QTextBlockFormat &format)
*/
$internalMethod=|void|insertBlock,insertBlock2|const QTextBlockFormat &

/*
void insertBlock(const QTextBlockFormat &format, const QTextCharFormat &charFormat)
*/
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

/*
QTextList *insertList(const QTextListFormat &format)
*/
$internalMethod=|QTextList *|insertList,insertList1|const QTextListFormat &

/*
QTextList *insertList(QTextListFormat::Style style)
*/
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

/*
QTextList *createList(const QTextListFormat &format)
*/
$internalMethod=|QTextList *|createList,createList1|const QTextListFormat &

/*
QTextList *createList(QTextListFormat::Style style)
*/
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

/*
QTextList *currentList() const
*/
$method=|QTextList *|currentList|

/*
QTextTable *insertTable(int rows, int cols, const QTextTableFormat &format)
*/
$internalMethod=|QTextTable *|insertTable,insertTable1|int,int,const QTextTableFormat &

/*
QTextTable *insertTable(int rows, int cols)
*/
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

/*
QTextTable *currentTable() const
*/
$method=|QTextTable *|currentTable|

/*
QTextFrame *insertFrame(const QTextFrameFormat &format)
*/
$method=|QTextFrame *|insertFrame|const QTextFrameFormat &

/*
QTextFrame *currentFrame() const
*/
$method=|QTextFrame *|currentFrame|

/*
void insertFragment(const QTextDocumentFragment &fragment)
*/
$method=|void|insertFragment|const QTextDocumentFragment &

/*
void insertHtml(const QString &html)
*/
$method=|void|insertHtml|const QString &

/*
void insertImage(const QTextImageFormat &format, QTextFrameFormat::Position alignment)
*/
$internalMethod=|void|insertImage,insertImage1|const QTextImageFormat &,QTextFrameFormat::Position

/*
void insertImage(const QTextImageFormat &format)
*/
$internalMethod=|void|insertImage,insertImage2|const QTextImageFormat &

/*
void insertImage(const QString &name)
*/
$internalMethod=|void|insertImage,insertImage3|const QString &

/*
void insertImage(const QImage &image, const QString &name = QString())
*/
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

/*
void beginEditBlock()
*/
$method=|void|beginEditBlock|

/*
void joinPreviousEditBlock()
*/
$method=|void|joinPreviousEditBlock|

/*
void endEditBlock()
*/
$method=|void|endEditBlock|

/*
bool isCopyOf(const QTextCursor &other) const
*/
$method=|bool|isCopyOf|const QTextCursor &

/*
int blockNumber() const
*/
$method=|int|blockNumber|

/*
int columnNumber() const
*/
$method=|int|columnNumber|

/*
QTextDocument *document() const
*/
$method=|QTextDocument *|document|

$extraMethods

#pragma ENDDUMP
