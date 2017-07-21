$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMENU
REQUEST QTEXTCHARFORMAT
REQUEST QFONT
REQUEST QTEXTCURSOR
REQUEST QRECT
REQUEST QTEXTDOCUMENT
REQUEST QVARIANT
REQUEST QCOLOR
#endif

CLASS QTextEdit INHERIT QAbstractScrollArea

   METHOD new
   METHOD delete
   METHOD acceptRichText
   METHOD alignment
   METHOD anchorAt
   METHOD autoFormatting
   METHOD canPaste
   METHOD createStandardContextMenu
   METHOD currentCharFormat
   METHOD currentFont
   METHOD cursorForPosition
   METHOD cursorRect
   METHOD cursorWidth
   METHOD document
   METHOD documentTitle
   METHOD ensureCursorVisible
   METHOD find
   METHOD fontFamily
   METHOD fontItalic
   METHOD fontPointSize
   METHOD fontUnderline
   METHOD fontWeight
   METHOD isReadOnly
   METHOD isUndoRedoEnabled
   METHOD lineWrapColumnOrWidth
   METHOD lineWrapMode
   METHOD loadResource
   METHOD mergeCurrentCharFormat
   METHOD moveCursor
   METHOD overwriteMode
   METHOD print
   METHOD setAcceptRichText
   METHOD setAutoFormatting
   METHOD setCurrentCharFormat
   METHOD setCursorWidth
   METHOD setDocument
   METHOD setDocumentTitle
   METHOD setLineWrapColumnOrWidth
   METHOD setLineWrapMode
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
   METHOD textBackgroundColor
   METHOD textColor
   METHOD textCursor
   METHOD textInteractionFlags
   METHOD toHtml
   METHOD toPlainText
   METHOD wordWrapMode
   METHOD append
   METHOD clear
   METHOD copy
   METHOD cut
   METHOD insertHtml
   METHOD insertPlainText
   METHOD paste
   METHOD redo
   METHOD scrollToAnchor
   METHOD selectAll
   METHOD setAlignment
   METHOD setCurrentFont
   METHOD setFontFamily
   METHOD setFontItalic
   METHOD setFontPointSize
   METHOD setFontUnderline
   METHOD setFontWeight
   METHOD setHtml
   METHOD setPlainText
   METHOD setText
   METHOD setTextBackgroundColor
   METHOD setTextColor
   METHOD undo
   METHOD zoomIn
   METHOD zoomOut

   METHOD onCopyAvailable
   METHOD onCurrentCharFormatChanged
   METHOD onCursorPositionChanged
   METHOD onRedoAvailable
   METHOD onSelectionChanged
   METHOD onTextChanged
   METHOD onUndoAvailable

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QPrinter>

/*
QTextEdit ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
QTextEdit ( const QString & text, QWidget * parent = 0 )
*/
$internalConstructor=|new2|const QString &,QWidget *=0

//[1]QTextEdit ( QWidget * parent = 0 )
//[2]QTextEdit ( const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QTEXTEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QTextEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QTextEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool acceptRichText () const
*/
$method=|bool|acceptRichText|

/*
Qt::Alignment alignment () const
*/
$method=|Qt::Alignment|alignment|

/*
QString anchorAt ( const QPoint & pos ) const
*/
$method=|QString|anchorAt|const QPoint &

/*
AutoFormatting autoFormatting () const
*/
$method=|QTextEdit::AutoFormatting|autoFormatting|

/*
bool canPaste () const
*/
$method=|bool|canPaste|

/*
QMenu * createStandardContextMenu ()
*/
$internalMethod=|QMenu *|createStandardContextMenu,createStandardContextMenu1|

/*
QMenu * createStandardContextMenu ( const QPoint & position )
*/
$internalMethod=|QMenu *|createStandardContextMenu,createStandardContextMenu2|const QPoint &

//[1]QMenu * createStandardContextMenu ()
//[2]QMenu * createStandardContextMenu ( const QPoint & position )

HB_FUNC_STATIC( QTEXTEDIT_CREATESTANDARDCONTEXTMENU )
{
  if( ISNUMPAR(0) )
  {
    QTextEdit_createStandardContextMenu1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTextEdit_createStandardContextMenu2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextCharFormat currentCharFormat () const
*/
$method=|QTextCharFormat|currentCharFormat|

/*
QFont currentFont () const
*/
$method=|QFont|currentFont|

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

HB_FUNC_STATIC( QTEXTEDIT_CURSORRECT )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextEdit_cursorRect1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextEdit_cursorRect2();
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
QString fontFamily () const
*/
$method=|QString|fontFamily|

/*
bool fontItalic () const
*/
$method=|bool|fontItalic|

/*
qreal fontPointSize () const
*/
$method=|qreal|fontPointSize|

/*
bool fontUnderline () const
*/
$method=|bool|fontUnderline|

/*
int fontWeight () const
*/
$method=|int|fontWeight|

/*
bool isReadOnly () const
*/
$method=|bool|isReadOnly|

/*
bool isUndoRedoEnabled () const
*/
$method=|bool|isUndoRedoEnabled|

/*
int lineWrapColumnOrWidth () const
*/
$method=|int|lineWrapColumnOrWidth|

/*
LineWrapMode lineWrapMode () const
*/
$method=|QTextEdit::LineWrapMode|lineWrapMode|

/*
virtual QVariant loadResource ( int type, const QUrl & name )
*/
$method=|QVariant|loadResource|int,const QUrl &

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
void setAcceptRichText ( bool accept )
*/
$method=|void|setAcceptRichText|bool

/*
void setAutoFormatting ( AutoFormatting features )
*/
$method=|void|setAutoFormatting|QTextEdit::AutoFormatting

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
void setLineWrapColumnOrWidth ( int w )
*/
$method=|void|setLineWrapColumnOrWidth|int

/*
void setLineWrapMode ( LineWrapMode mode )
*/
$method=|void|setLineWrapMode|QTextEdit::LineWrapMode

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
QColor textBackgroundColor () const
*/
$method=|QColor|textBackgroundColor|

/*
QColor textColor () const
*/
$method=|QColor|textColor|

/*
QTextCursor textCursor () const
*/
$method=|QTextCursor|textCursor|

/*
Qt::TextInteractionFlags textInteractionFlags () const
*/
$method=|Qt::TextInteractionFlags|textInteractionFlags|

/*
QString toHtml () const
*/
$method=|QString|toHtml|

/*
QString toPlainText () const
*/
$method=|QString|toPlainText|

/*
QTextOption::WrapMode wordWrapMode () const
*/
$method=|QTextOption::WrapMode|wordWrapMode|

/*
void append ( const QString & text )
*/
$method=|void|append|const QString &

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
void insertHtml ( const QString & text )
*/
$method=|void|insertHtml|const QString &

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
void scrollToAnchor ( const QString & name )
*/
$method=|void|scrollToAnchor|const QString &

/*
void selectAll ()
*/
$method=|void|selectAll|

/*
void setAlignment ( Qt::Alignment a )
*/
$method=|void|setAlignment|Qt::Alignment

/*
void setCurrentFont ( const QFont & f )
*/
$method=|void|setCurrentFont|const QFont &

/*
void setFontFamily ( const QString & fontFamily )
*/
$method=|void|setFontFamily|const QString &

/*
void setFontItalic ( bool italic )
*/
$method=|void|setFontItalic|bool

/*
void setFontPointSize ( qreal s )
*/
$method=|void|setFontPointSize|qreal

/*
void setFontUnderline ( bool underline )
*/
$method=|void|setFontUnderline|bool

/*
void setFontWeight ( int weight )
*/
$method=|void|setFontWeight|int

/*
void setHtml ( const QString & text )
*/
$method=|void|setHtml|const QString &

/*
void setPlainText ( const QString & text )
*/
$method=|void|setPlainText|const QString &

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
void setTextBackgroundColor ( const QColor & c )
*/
$method=|void|setTextBackgroundColor|const QColor &

/*
void setTextColor ( const QColor & c )
*/
$method=|void|setTextColor|const QColor &

/*
void undo ()
*/
$method=|void|undo|

/*
void zoomIn ( int range = 1 )
*/
$method=|void|zoomIn|int=1

/*
void zoomOut ( int range = 1 )
*/
$method=|void|zoomOut|int=1

#pragma ENDDUMP
