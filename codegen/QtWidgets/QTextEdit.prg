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

$prototype=QTextEdit ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QTextEdit ( const QString & text, QWidget * parent = 0 )
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

$prototype=bool acceptRichText () const
$method=|bool|acceptRichText|

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=QString anchorAt ( const QPoint & pos ) const
$method=|QString|anchorAt|const QPoint &

$prototype=AutoFormatting autoFormatting () const
$method=|QTextEdit::AutoFormatting|autoFormatting|

$prototype=bool canPaste () const
$method=|bool|canPaste|

$prototype=QMenu * createStandardContextMenu ()
$internalMethod=|QMenu *|createStandardContextMenu,createStandardContextMenu1|

$prototype=QMenu * createStandardContextMenu ( const QPoint & position )
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

$prototype=QTextCharFormat currentCharFormat () const
$method=|QTextCharFormat|currentCharFormat|

$prototype=QFont currentFont () const
$method=|QFont|currentFont|

$prototype=QTextCursor cursorForPosition ( const QPoint & pos ) const
$method=|QTextCursor|cursorForPosition|const QPoint &

$prototype=QRect cursorRect ( const QTextCursor & cursor ) const
$internalMethod=|QRect|cursorRect,cursorRect1|const QTextCursor &

$prototype=QRect cursorRect () const
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

$prototype=int cursorWidth () const
$method=|int|cursorWidth|

$prototype=QTextDocument * document () const
$method=|QTextDocument *|document|

$prototype=QString documentTitle () const
$method=|QString|documentTitle|

$prototype=void ensureCursorVisible ()
$method=|void|ensureCursorVisible|

$prototype=bool find ( const QString & exp, QTextDocument::FindFlags options = 0 )
$method=|bool|find|const QString &,QTextDocument::FindFlags=0

$prototype=QString fontFamily () const
$method=|QString|fontFamily|

$prototype=bool fontItalic () const
$method=|bool|fontItalic|

$prototype=qreal fontPointSize () const
$method=|qreal|fontPointSize|

$prototype=bool fontUnderline () const
$method=|bool|fontUnderline|

$prototype=int fontWeight () const
$method=|int|fontWeight|

$prototype=bool isReadOnly () const
$method=|bool|isReadOnly|

$prototype=bool isUndoRedoEnabled () const
$method=|bool|isUndoRedoEnabled|

$prototype=int lineWrapColumnOrWidth () const
$method=|int|lineWrapColumnOrWidth|

$prototype=LineWrapMode lineWrapMode () const
$method=|QTextEdit::LineWrapMode|lineWrapMode|

$prototype=virtual QVariant loadResource ( int type, const QUrl & name )
$virtualMethod=|QVariant|loadResource|int,const QUrl &

$prototype=void mergeCurrentCharFormat ( const QTextCharFormat & modifier )
$method=|void|mergeCurrentCharFormat|const QTextCharFormat &

$prototype=void moveCursor ( QTextCursor::MoveOperation operation, QTextCursor::MoveMode mode = QTextCursor::MoveAnchor )
$method=|void|moveCursor|QTextCursor::MoveOperation,QTextCursor::MoveMode=QTextCursor::MoveAnchor

$prototype=bool overwriteMode () const
$method=|bool|overwriteMode|

$prototype=void print ( QPrinter * printer ) const
$method=|void|print|QPrinter *

$prototype=void setAcceptRichText ( bool accept )
$method=|void|setAcceptRichText|bool

$prototype=void setAutoFormatting ( AutoFormatting features )
$method=|void|setAutoFormatting|QTextEdit::AutoFormatting

$prototype=void setCurrentCharFormat ( const QTextCharFormat & format )
$method=|void|setCurrentCharFormat|const QTextCharFormat &

$prototype=void setCursorWidth ( int width )
$method=|void|setCursorWidth|int

$prototype=void setDocument ( QTextDocument * document )
$method=|void|setDocument|QTextDocument *

$prototype=void setDocumentTitle ( const QString & title )
$method=|void|setDocumentTitle|const QString &

$prototype=void setLineWrapColumnOrWidth ( int w )
$method=|void|setLineWrapColumnOrWidth|int

$prototype=void setLineWrapMode ( LineWrapMode mode )
$method=|void|setLineWrapMode|QTextEdit::LineWrapMode

$prototype=void setOverwriteMode ( bool overwrite )
$method=|void|setOverwriteMode|bool

$prototype=void setReadOnly ( bool ro )
$method=|void|setReadOnly|bool

$prototype=void setTabChangesFocus ( bool b )
$method=|void|setTabChangesFocus|bool

$prototype=void setTabStopWidth ( int width )
$method=|void|setTabStopWidth|int

$prototype=void setTextCursor ( const QTextCursor & cursor )
$method=|void|setTextCursor|const QTextCursor &

$prototype=void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
$method=|void|setTextInteractionFlags|Qt::TextInteractionFlags

$prototype=void setUndoRedoEnabled ( bool enable )
$method=|void|setUndoRedoEnabled|bool

$prototype=void setWordWrapMode ( QTextOption::WrapMode policy )
$method=|void|setWordWrapMode|QTextOption::WrapMode

$prototype=bool tabChangesFocus () const
$method=|bool|tabChangesFocus|

$prototype=int tabStopWidth () const
$method=|int|tabStopWidth|

$prototype=QColor textBackgroundColor () const
$method=|QColor|textBackgroundColor|

$prototype=QColor textColor () const
$method=|QColor|textColor|

$prototype=QTextCursor textCursor () const
$method=|QTextCursor|textCursor|

$prototype=Qt::TextInteractionFlags textInteractionFlags () const
$method=|Qt::TextInteractionFlags|textInteractionFlags|

$prototype=QString toHtml () const
$method=|QString|toHtml|

$prototype=QString toPlainText () const
$method=|QString|toPlainText|

$prototype=QTextOption::WrapMode wordWrapMode () const
$method=|QTextOption::WrapMode|wordWrapMode|

$prototype=void append ( const QString & text )
$method=|void|append|const QString &

$prototype=void clear ()
$method=|void|clear|

$prototype=void copy ()
$method=|void|copy|

$prototype=void cut ()
$method=|void|cut|

$prototype=void insertHtml ( const QString & text )
$method=|void|insertHtml|const QString &

$prototype=void insertPlainText ( const QString & text )
$method=|void|insertPlainText|const QString &

$prototype=void paste ()
$method=|void|paste|

$prototype=void redo ()
$method=|void|redo|

$prototype=void scrollToAnchor ( const QString & name )
$method=|void|scrollToAnchor|const QString &

$prototype=void selectAll ()
$method=|void|selectAll|

$prototype=void setAlignment ( Qt::Alignment a )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setCurrentFont ( const QFont & f )
$method=|void|setCurrentFont|const QFont &

$prototype=void setFontFamily ( const QString & fontFamily )
$method=|void|setFontFamily|const QString &

$prototype=void setFontItalic ( bool italic )
$method=|void|setFontItalic|bool

$prototype=void setFontPointSize ( qreal s )
$method=|void|setFontPointSize|qreal

$prototype=void setFontUnderline ( bool underline )
$method=|void|setFontUnderline|bool

$prototype=void setFontWeight ( int weight )
$method=|void|setFontWeight|int

$prototype=void setHtml ( const QString & text )
$method=|void|setHtml|const QString &

$prototype=void setPlainText ( const QString & text )
$method=|void|setPlainText|const QString &

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=void setTextBackgroundColor ( const QColor & c )
$method=|void|setTextBackgroundColor|const QColor &

$prototype=void setTextColor ( const QColor & c )
$method=|void|setTextColor|const QColor &

$prototype=void undo ()
$method=|void|undo|

$prototype=void zoomIn ( int range = 1 )
$method=|void|zoomIn|int=1

$prototype=void zoomOut ( int range = 1 )
$method=|void|zoomOut|int=1

#pragma ENDDUMP
