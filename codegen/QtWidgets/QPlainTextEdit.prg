$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMENU
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTCURSOR
REQUEST QRECT
REQUEST QTEXTDOCUMENT
REQUEST QVARIANT
#endif

CLASS QPlainTextEdit INHERIT QAbstractScrollArea

   METHOD new
   METHOD delete
   METHOD anchorAt
   METHOD backgroundVisible
   METHOD blockCount
   METHOD canPaste
   METHOD centerOnScroll
   METHOD createStandardContextMenu
   METHOD currentCharFormat
   METHOD cursorForPosition
   METHOD cursorRect
   METHOD cursorWidth
   METHOD document
   METHOD documentTitle
   METHOD ensureCursorVisible
   METHOD find
   METHOD isReadOnly
   METHOD isUndoRedoEnabled
   METHOD lineWrapMode
   METHOD loadResource
   METHOD maximumBlockCount
   METHOD mergeCurrentCharFormat
   METHOD moveCursor
   METHOD overwriteMode
   METHOD print
   METHOD setBackgroundVisible
   METHOD setCenterOnScroll
   METHOD setCurrentCharFormat
   METHOD setCursorWidth
   METHOD setDocument
   METHOD setDocumentTitle
   METHOD setLineWrapMode
   METHOD setMaximumBlockCount
   METHOD setOverwriteMode
   METHOD setReadOnly
   METHOD setTabChangesFocus
   METHOD setTabStopWidth
   METHOD setTextCursor
   METHOD setTextInteractionFlags
   METHOD setUndoRedoEnabled
   METHOD setWordWrapMode
   METHOD tabChangesFocus
   METHOD tabStopWidth
   METHOD textCursor
   METHOD textInteractionFlags
   METHOD toPlainText
   METHOD wordWrapMode
   METHOD appendHtml
   METHOD appendPlainText
   METHOD centerCursor
   METHOD clear
   METHOD copy
   METHOD cut
   METHOD insertPlainText
   METHOD paste
   METHOD redo
   METHOD selectAll
   METHOD setPlainText
   METHOD undo

   METHOD onBlockCountChanged
   METHOD onCopyAvailable
   METHOD onCursorPositionChanged
   METHOD onModificationChanged
   METHOD onRedoAvailable
   METHOD onSelectionChanged
   METHOD onTextChanged
   METHOD onUndoAvailable
   METHOD onUpdateRequest

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QPrinter>

/*
QPlainTextEdit ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
QPlainTextEdit ( const QString & text, QWidget * parent = 0 )
*/
$internalConstructor=|new2|const QString &,QWidget *=0

//[1]QPlainTextEdit ( QWidget * parent = 0 )
//[2]QPlainTextEdit ( const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QPLAINTEXTEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QPlainTextEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QPlainTextEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString anchorAt ( const QPoint & pos ) const
*/
$method=|QString|anchorAt|const QPoint &

/*
bool backgroundVisible () const
*/
$method=|bool|backgroundVisible|

/*
int blockCount () const
*/
$method=|int|blockCount|

/*
bool canPaste () const
*/
$method=|bool|canPaste|

/*
bool centerOnScroll () const
*/
$method=|bool|centerOnScroll|

/*
QMenu * createStandardContextMenu ()
*/
$method=|QMenu *|createStandardContextMenu|

/*
QTextCharFormat currentCharFormat () const
*/
$method=|QTextCharFormat|currentCharFormat|

/*
QTextCursor cursorForPosition ( const QPoint & pos ) const
*/
$method=|QTextCursor|cursorForPosition|const QPoint &

/*
QRect cursorRect ( const QTextCursor & cursor ) const
*/
$internalMethod=|QRect|cursorRect,cursorRect1|const QTextCursor &

/*
QRect cursorRect () const
*/
$internalMethod=|QRect|cursorRect,cursorRect2|

//[1]QRect cursorRect ( const QTextCursor & cursor ) const
//[2]QRect cursorRect () const

HB_FUNC_STATIC( QPLAINTEXTEDIT_CURSORRECT )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QPlainTextEdit_cursorRect1();
  }
  else if( ISNUMPAR(0) )
  {
    QPlainTextEdit_cursorRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int cursorWidth () const
*/
$method=|int|cursorWidth|

/*
QTextDocument * document () const
*/
$method=|QTextDocument *|document|

/*
QString documentTitle () const
*/
$method=|QString|documentTitle|

/*
void ensureCursorVisible ()
*/
$method=|void|ensureCursorVisible|

/*
bool find ( const QString & exp, QTextDocument::FindFlags options = 0 )
*/
$method=|bool|find|const QString &,QTextDocument::FindFlags=0

/*
bool isReadOnly () const
*/
$method=|bool|isReadOnly|

/*
bool isUndoRedoEnabled () const
*/
$method=|bool|isUndoRedoEnabled|

/*
LineWrapMode lineWrapMode () const
*/
$method=|QPlainTextEdit::LineWrapMode|lineWrapMode|

/*
virtual QVariant loadResource ( int type, const QUrl & name )
*/
$method=|QVariant|loadResource|int,const QUrl &

/*
int maximumBlockCount () const
*/
$method=|int|maximumBlockCount|

/*
void mergeCurrentCharFormat ( const QTextCharFormat & modifier )
*/
$method=|void|mergeCurrentCharFormat|const QTextCharFormat &

/*
void moveCursor ( QTextCursor::MoveOperation operation, QTextCursor::MoveMode mode = QTextCursor::MoveAnchor )
*/
$method=|void|moveCursor|QTextCursor::MoveOperation,QTextCursor::MoveMode=QTextCursor::MoveAnchor

/*
bool overwriteMode () const
*/
$method=|bool|overwriteMode|

/*
void print ( QPrinter * printer ) const
*/
$method=|void|print|QPrinter *

/*
void setBackgroundVisible ( bool visible )
*/
$method=|void|setBackgroundVisible|bool

/*
void setCenterOnScroll ( bool enabled )
*/
$method=|void|setCenterOnScroll|bool

/*
void setCurrentCharFormat ( const QTextCharFormat & format )
*/
$method=|void|setCurrentCharFormat|const QTextCharFormat &

/*
void setCursorWidth ( int width )
*/
$method=|void|setCursorWidth|int

/*
void setDocument ( QTextDocument * document )
*/
$method=|void|setDocument|QTextDocument *

/*
void setDocumentTitle ( const QString & title )
*/
$method=|void|setDocumentTitle|const QString &

/*
void setLineWrapMode ( LineWrapMode mode )
*/
$method=|void|setLineWrapMode|QPlainTextEdit::LineWrapMode

/*
void setMaximumBlockCount ( int maximum )
*/
$method=|void|setMaximumBlockCount|int

/*
void setOverwriteMode ( bool overwrite )
*/
$method=|void|setOverwriteMode|bool

/*
void setReadOnly ( bool ro )
*/
$method=|void|setReadOnly|bool

/*
void setTabChangesFocus ( bool b )
*/
$method=|void|setTabChangesFocus|bool

/*
void setTabStopWidth ( int width )
*/
$method=|void|setTabStopWidth|int

/*
void setTextCursor ( const QTextCursor & cursor )
*/
$method=|void|setTextCursor|const QTextCursor &

/*
void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
*/
$method=|void|setTextInteractionFlags|Qt::TextInteractionFlags

/*
void setUndoRedoEnabled ( bool enable )
*/
$method=|void|setUndoRedoEnabled|bool

/*
void setWordWrapMode ( QTextOption::WrapMode policy )
*/
$method=|void|setWordWrapMode|QTextOption::WrapMode

/*
bool tabChangesFocus () const
*/
$method=|bool|tabChangesFocus|

/*
int tabStopWidth () const
*/
$method=|int|tabStopWidth|

/*
QTextCursor textCursor () const
*/
$method=|QTextCursor|textCursor|

/*
Qt::TextInteractionFlags textInteractionFlags () const
*/
$method=|Qt::TextInteractionFlags|textInteractionFlags|

/*
QString toPlainText () const
*/
$method=|QString|toPlainText|

/*
QTextOption::WrapMode wordWrapMode () const
*/
$method=|QTextOption::WrapMode|wordWrapMode|

/*
void appendHtml ( const QString & html )
*/
$method=|void|appendHtml|const QString &

/*
void appendPlainText ( const QString & text )
*/
$method=|void|appendPlainText|const QString &

/*
void centerCursor ()
*/
$method=|void|centerCursor|

/*
void clear ()
*/
$method=|void|clear|

/*
void copy ()
*/
$method=|void|copy|

/*
void cut ()
*/
$method=|void|cut|

/*
void insertPlainText ( const QString & text )
*/
$method=|void|insertPlainText|const QString &

/*
void paste ()
*/
$method=|void|paste|

/*
void redo ()
*/
$method=|void|redo|

/*
void selectAll ()
*/
$method=|void|selectAll|

/*
void setPlainText ( const QString & text )
*/
$method=|void|setPlainText|const QString &

/*
void undo ()
*/
$method=|void|undo|

#pragma ENDDUMP
