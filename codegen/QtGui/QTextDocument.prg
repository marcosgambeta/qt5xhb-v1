$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTTEXTDOCUMENTLAYOUT
REQUEST QCHAR
REQUEST QTEXTCURSOR
REQUEST QTEXTFRAME
REQUEST QTEXTOBJECT
REQUEST QTEXTBLOCK
REQUEST QSIZEF
REQUEST QFONT
REQUEST QVARIANT
REQUEST QTEXTOPTION
REQUEST QTEXTDOCUMENTPRIVATE
#endif

CLASS QTextDocument INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clone
   METHOD isEmpty
   METHOD clear
   METHOD setUndoRedoEnabled
   METHOD isUndoRedoEnabled
   METHOD isUndoAvailable
   METHOD isRedoAvailable
   METHOD availableUndoSteps
   METHOD availableRedoSteps
   METHOD revision
   METHOD setDocumentLayout
   METHOD documentLayout
   METHOD setMetaInformation
   METHOD metaInformation
   METHOD toHtml
   METHOD setHtml
   METHOD toPlainText
   METHOD setPlainText
   METHOD characterAt
   METHOD find
   METHOD frameAt
   METHOD rootFrame
   METHOD object
   METHOD objectForFormat
   METHOD findBlock
   METHOD findBlockByNumber
   METHOD findBlockByLineNumber
   METHOD begin
   METHOD end
   METHOD firstBlock
   METHOD lastBlock
   METHOD setPageSize
   METHOD pageSize
   METHOD setDefaultFont
   METHOD defaultFont
   METHOD pageCount
   METHOD isModified
   METHOD print
   METHOD resource
   METHOD addResource
   METHOD markContentsDirty
   METHOD setUseDesignMetrics
   METHOD useDesignMetrics
   METHOD drawContents
   METHOD setTextWidth
   METHOD textWidth
   METHOD idealWidth
   METHOD indentWidth
   METHOD setIndentWidth
   METHOD documentMargin
   METHOD setDocumentMargin
   METHOD adjustSize
   METHOD size
   METHOD blockCount
   METHOD lineCount
   METHOD characterCount
   METHOD setDefaultStyleSheet
   METHOD defaultStyleSheet
   METHOD clearUndoRedoStacks
   METHOD maximumBlockCount
   METHOD setMaximumBlockCount
   METHOD defaultTextOption
   METHOD setDefaultTextOption
   METHOD defaultCursorMoveStyle
   METHOD setDefaultCursorMoveStyle
   METHOD undo
   METHOD redo
   METHOD appendUndoItem
   METHOD setModified
   METHOD docHandle

   METHOD onContentsChange
   METHOD onContentsChanged
   METHOD onUndoAvailable
   METHOD onRedoAvailable
   METHOD onUndoCommandAdded
   METHOD onModificationChanged
   METHOD onCursorPositionChanged
   METHOD onBlockCountChanged
   METHOD onDocumentLayoutChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QTextOption>
#include <QTextCursor>
#include <QTextBlock>

/*
QTextDocument(QObject *parent = 0)
*/
$internalConstructor=|new1|QObject *=0

/*
QTextDocument(const QString &text, QObject *parent = 0)
*/
$internalConstructor=|new2|const QString &,QObject *=0

//[1]QTextDocument(QObject *parent = 0)
//[2]QTextDocument(const QString &text, QObject *parent = 0)

HB_FUNC_STATIC( QTEXTDOCUMENT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QTextDocument_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QTextDocument_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QTextDocument *clone(QObject *parent = 0) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_CLONE )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocument * ptr = obj->clone ( OPQOBJECT(1,0) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}

/*
bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
virtual void clear()
*/
$method=|void|clear|

/*
void setUndoRedoEnabled(bool enable)
*/
$method=|void|setUndoRedoEnabled|bool

/*
bool isUndoRedoEnabled() const
*/
$method=|bool|isUndoRedoEnabled|

/*
bool isUndoAvailable() const
*/
$method=|bool|isUndoAvailable|

/*
bool isRedoAvailable() const
*/
$method=|bool|isRedoAvailable|

/*
int availableUndoSteps() const
*/
$method=|int|availableUndoSteps|

/*
int availableRedoSteps() const
*/
$method=|int|availableRedoSteps|

/*
int revision() const
*/
$method=|int|revision|

/*
void setDocumentLayout(QAbstractTextDocumentLayout *layout)
*/
$method=|void|setDocumentLayout|QAbstractTextDocumentLayout *

/*
QAbstractTextDocumentLayout *documentLayout() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DOCUMENTLAYOUT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractTextDocumentLayout * ptr = obj->documentLayout ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTTEXTDOCUMENTLAYOUT" );
  }
}

/*
void setMetaInformation(MetaInformation info, const QString &)
*/
$method=|void|setMetaInformation|QTextDocument::MetaInformation,const QString &

/*
QString metaInformation(MetaInformation info) const
*/
$method=|QString|metaInformation|QTextDocument::MetaInformation

/*
QString toHtml(const QByteArray &encoding = QByteArray()) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_TOHTML )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(1);
    RQSTRING( obj->toHtml ( par1 ) );
  }
}

/*
void setHtml(const QString &html)
*/
$method=|void|setHtml|const QString &

/*
QString toPlainText() const
*/
$method=|QString|toPlainText|

/*
void setPlainText(const QString &text)
*/
$method=|void|setPlainText|const QString &

/*
QChar characterAt(int pos) const
*/
$method=|QChar|characterAt|int

/*
QTextCursor find(const QString &subString, int from = 0, FindFlags options = 0) const
*/
$internalMethod=|QTextCursor|find,find1|const QString &,int=0,QTextDocument::FindFlags=0

/*
QTextCursor find(const QString &subString, const QTextCursor &from, FindFlags options = 0) const
*/
$internalMethod=|QTextCursor|find,find2|const QString &,const QTextCursor &,QTextDocument::FindFlags=0

/*
QTextCursor find(const QRegExp &expr, int from = 0, FindFlags options = 0) const
*/
$internalMethod=|QTextCursor|find,find3|const QRegExp &,int=0,QTextDocument::FindFlags=0

/*
QTextCursor find(const QRegExp &expr, const QTextCursor &from, FindFlags options = 0) const
*/
$method=|QTextCursor|find,find4|const QRegExp &,const QTextCursor &,QTextDocument::FindFlags=0

//[1]QTextCursor find(const QString &subString, int from = 0, FindFlags options = 0) const
//[2]QTextCursor find(const QString &subString, const QTextCursor &from, FindFlags options = 0) const
//[3]QTextCursor find(const QRegExp &expr, int from = 0, FindFlags options = 0) const
//[4]QTextCursor find(const QRegExp &expr, const QTextCursor &from, FindFlags options = 0) const

HB_FUNC_STATIC( QTEXTDOCUMENT_FIND )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QTextDocument_find1();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISQTEXTCURSOR(2) && ISOPTNUM(3) )
  {
    QTextDocument_find2();
  }
  else if( ISBETWEEN(1,3) && ISQREGEXP(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QTextDocument_find3();
  }
  else if( ISBETWEEN(2,3) && ISQREGEXP(1) && ISQTEXTCURSOR(2) && ISOPTNUM(3) )
  {
    QTextDocument_find4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextFrame *frameAt(int pos) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FRAMEAT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFrame * ptr = obj->frameAt ( PINT(1) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTFRAME" );
  }
}

/*
QTextFrame *rootFrame() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ROOTFRAME )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFrame * ptr = obj->rootFrame ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTFRAME" );
  }
}

/*
QTextObject *object(int objectIndex) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_OBJECT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextObject * ptr = obj->object ( PINT(1) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTOBJECT" );
  }
}

/*
QTextObject *objectForFormat(const QTextFormat &) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_OBJECTFORFORMAT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextObject * ptr = obj->objectForFormat ( *PQTEXTFORMAT(1) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTOBJECT" );
  }
}

/*
QTextBlock findBlock(int pos) const
*/
$method=|QTextBlock|findBlock|int

/*
QTextBlock findBlockByNumber(int blockNumber) const
*/
$method=|QTextBlock|findBlockByNumber|int

/*
QTextBlock findBlockByLineNumber(int blockNumber) const
*/
$method=|QTextBlock|findBlockByLineNumber|int

/*
QTextBlock begin() const
*/
$method=|QTextBlock|begin|

/*
QTextBlock end() const
*/
$method=|QTextBlock|end|

/*
QTextBlock firstBlock() const
*/
$method=|QTextBlock|firstBlock|

/*
QTextBlock lastBlock() const
*/
$method=|QTextBlock|lastBlock|

/*
void setPageSize(const QSizeF &size)
*/
$method=|void|setPageSize|const QSizeF &

/*
QSizeF pageSize() const
*/
$method=|QSizeF|pageSize|

/*
void setDefaultFont(const QFont &font)
*/
$method=|void|setDefaultFont|const QFont &

/*
QFont defaultFont() const
*/
$method=|QFont|defaultFont|

/*
int pageCount() const
*/
$method=|int|pageCount|

/*
bool isModified() const
*/
$method=|bool|isModified|

/*
void print(QPagedPaintDevice *printer) const
*/
$method=|void|print|QPagedPaintDevice *

/*
QVariant resource(int type, const QUrl &name) const
*/
$method=|QVariant|resource|int,const QUrl &

/*
void addResource(int type, const QUrl &name, const QVariant &resource)
*/
$method=|void|addResource|int,const QUrl &,const QVariant &

/*
void markContentsDirty(int from, int length)
*/
$method=|void|markContentsDirty|int,int

/*
void setUseDesignMetrics(bool b)
*/
$method=|void|setUseDesignMetrics|bool

/*
bool useDesignMetrics() const
*/
$method=|bool|useDesignMetrics|

/*
void drawContents(QPainter *painter, const QRectF &rect = QRectF())
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DRAWCONTENTS )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF par2 = ISNIL(2)? QRectF() : *(QRectF *) _qt5xhb_itemGetPtr(2);
    obj->drawContents ( PQPAINTER(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextWidth(qreal width)
*/
$method=|void|setTextWidth|qreal

/*
qreal textWidth() const
*/
$method=|qreal|textWidth|

/*
qreal idealWidth() const
*/
$method=|qreal|idealWidth|

/*
qreal indentWidth() const
*/
$method=|qreal|indentWidth|

/*
void setIndentWidth(qreal width)
*/
$method=|void|setIndentWidth|qreal

/*
qreal documentMargin() const
*/
$method=|qreal|documentMargin|

/*
void setDocumentMargin(qreal margin)
*/
$method=|void|setDocumentMargin|qreal

/*
void adjustSize()
*/
$method=|void|adjustSize|

/*
QSizeF size() const
*/
$method=|QSizeF|size|

/*
int blockCount() const
*/
$method=|int|blockCount|

/*
int lineCount() const
*/
$method=|int|lineCount|

/*
int characterCount() const
*/
$method=|int|characterCount|

/*
void setDefaultStyleSheet(const QString &sheet)
*/
$method=|void|setDefaultStyleSheet|const QString &

/*
QString defaultStyleSheet() const
*/
$method=|QString|defaultStyleSheet|

/*
void clearUndoRedoStacks(Stacks historyToClear = UndoAndRedoStacks)
*/
$method=|void|clearUndoRedoStacks|QTextDocument::Stacks=QTextDocument::UndoAndRedoStacks

/*
int maximumBlockCount() const
*/
$method=|int|maximumBlockCount|

/*
void setMaximumBlockCount(int maximum)
*/
$method=|void|setMaximumBlockCount|int

/*
QTextOption defaultTextOption() const
*/
$method=|QTextOption|defaultTextOption|

/*
void setDefaultTextOption(const QTextOption &option)
*/
$void|setDefaultTextOption|const QTextOption &

/*
Qt::CursorMoveStyle defaultCursorMoveStyle() const
*/
$method=|Qt::CursorMoveStyle|defaultCursorMoveStyle|

/*
void setDefaultCursorMoveStyle(Qt::CursorMoveStyle style)
*/
$method=|void|setDefaultCursorMoveStyle|Qt::CursorMoveStyle

/*
void undo(QTextCursor *cursor)
*/
$internalMethod=|void|undo,undo1|QTextCursor *

/*
void undo()
*/
$internalMethod=|void|undo,undo2|

//[1]void undo(QTextCursor *cursor)
//[2]void undo()

HB_FUNC_STATIC( QTEXTDOCUMENT_UNDO )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextDocument_undo1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextDocument_undo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void redo(QTextCursor *cursor)
*/
$internalMethod=|void|redo,redo1|QTextCursor *

/*
void redo()
*/
$internalMethod=|void|redo,redo2|

//[1]void redo(QTextCursor *cursor)
//[2]void redo()

HB_FUNC_STATIC( QTEXTDOCUMENT_REDO )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextDocument_redo1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextDocument_redo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void appendUndoItem(QAbstractUndoItem *)
*/
$method=|void|appendUndoItem|QAbstractUndoItem *

/*
void setModified(bool m = true)
*/
$method=|void|setModified|bool=true

/*
QTextDocumentPrivate *docHandle() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DOCHANDLE )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocumentPrivate * ptr = obj->docHandle ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENTPRIVATE" );
  }
}

#pragma ENDDUMP
