%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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
#include <QMenu>

$prototype=QPlainTextEdit ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QPlainTextEdit ( const QString & text, QWidget * parent = 0 )
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

$prototype=QString anchorAt ( const QPoint & pos ) const
$method=|QString|anchorAt|const QPoint &

$prototype=bool backgroundVisible () const
$method=|bool|backgroundVisible|

$prototype=int blockCount () const
$method=|int|blockCount|

$prototype=bool canPaste () const
$method=|bool|canPaste|

$prototype=bool centerOnScroll () const
$method=|bool|centerOnScroll|

$prototype=QMenu * createStandardContextMenu ()
$method=|QMenu *|createStandardContextMenu|

$prototype=QTextCharFormat currentCharFormat () const
$method=|QTextCharFormat|currentCharFormat|

$prototype=QTextCursor cursorForPosition ( const QPoint & pos ) const
$method=|QTextCursor|cursorForPosition|const QPoint &

$prototype=QRect cursorRect ( const QTextCursor & cursor ) const
$internalMethod=|QRect|cursorRect,cursorRect1|const QTextCursor &

$prototype=QRect cursorRect () const
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

$prototype=bool isReadOnly () const
$method=|bool|isReadOnly|

$prototype=bool isUndoRedoEnabled () const
$method=|bool|isUndoRedoEnabled|

$prototype=LineWrapMode lineWrapMode () const
$method=|QPlainTextEdit::LineWrapMode|lineWrapMode|

$prototype=virtual QVariant loadResource ( int type, const QUrl & name )
$virtualMethod=|QVariant|loadResource|int,const QUrl &

$prototype=int maximumBlockCount () const
$method=|int|maximumBlockCount|

$prototype=void mergeCurrentCharFormat ( const QTextCharFormat & modifier )
$method=|void|mergeCurrentCharFormat|const QTextCharFormat &

$prototype=void moveCursor ( QTextCursor::MoveOperation operation, QTextCursor::MoveMode mode = QTextCursor::MoveAnchor )
$method=|void|moveCursor|QTextCursor::MoveOperation,QTextCursor::MoveMode=QTextCursor::MoveAnchor

$prototype=bool overwriteMode () const
$method=|bool|overwriteMode|

$prototype=void print ( QPrinter * printer ) const
$method=|void|print|QPrinter *

$prototype=void setBackgroundVisible ( bool visible )
$method=|void|setBackgroundVisible|bool

$prototype=void setCenterOnScroll ( bool enabled )
$method=|void|setCenterOnScroll|bool

$prototype=void setCurrentCharFormat ( const QTextCharFormat & format )
$method=|void|setCurrentCharFormat|const QTextCharFormat &

$prototype=void setCursorWidth ( int width )
$method=|void|setCursorWidth|int

$prototype=void setDocument ( QTextDocument * document )
$method=|void|setDocument|QTextDocument *

$prototype=void setDocumentTitle ( const QString & title )
$method=|void|setDocumentTitle|const QString &

$prototype=void setLineWrapMode ( LineWrapMode mode )
$method=|void|setLineWrapMode|QPlainTextEdit::LineWrapMode

$prototype=void setMaximumBlockCount ( int maximum )
$method=|void|setMaximumBlockCount|int

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

$prototype=QTextCursor textCursor () const
$method=|QTextCursor|textCursor|

$prototype=Qt::TextInteractionFlags textInteractionFlags () const
$method=|Qt::TextInteractionFlags|textInteractionFlags|

$prototype=QString toPlainText () const
$method=|QString|toPlainText|

$prototype=QTextOption::WrapMode wordWrapMode () const
$method=|QTextOption::WrapMode|wordWrapMode|

$prototype=void appendHtml ( const QString & html )
$method=|void|appendHtml|const QString &

$prototype=void appendPlainText ( const QString & text )
$method=|void|appendPlainText|const QString &

$prototype=void centerCursor ()
$method=|void|centerCursor|

$prototype=void clear ()
$method=|void|clear|

$prototype=void copy ()
$method=|void|copy|

$prototype=void cut ()
$method=|void|cut|

$prototype=void insertPlainText ( const QString & text )
$method=|void|insertPlainText|const QString &

$prototype=void paste ()
$method=|void|paste|

$prototype=void redo ()
$method=|void|redo|

$prototype=void selectAll ()
$method=|void|selectAll|

$prototype=void setPlainText ( const QString & text )
$method=|void|setPlainText|const QString &

$prototype=void undo ()
$method=|void|undo|

$beginSignals
$signal=|blockCountChanged(int)
$signal=|copyAvailable(bool)
$signal=|cursorPositionChanged()
$signal=|modificationChanged(bool)
$signal=|redoAvailable(bool)
$signal=|selectionChanged()
$signal=|textChanged()
$signal=|undoAvailable(bool)
$signal=|updateRequest(QRect,int)
$endSignals

#pragma ENDDUMP
