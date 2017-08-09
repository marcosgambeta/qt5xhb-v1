$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOMPLETER
REQUEST QMENU
REQUEST QSIZE
REQUEST QVALIDATOR
REQUEST QMARGINS
REQUEST QVARIANT
REQUEST QACTION
#endif

CLASS QLineEdit INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD setAlignment
   METHOD backspace
   METHOD completer
   METHOD setCompleter
   METHOD createStandardContextMenu
   METHOD cursorBackward
   METHOD cursorForward
   METHOD cursorPosition
   METHOD setCursorPosition
   METHOD cursorPositionAt
   METHOD cursorWordBackward
   METHOD cursorWordForward
   METHOD del
   METHOD deselect
   METHOD displayText
   METHOD dragEnabled
   METHOD setDragEnabled
   METHOD echoMode
   METHOD setEchoMode
   METHOD end
   METHOD getTextMargins
   METHOD hasAcceptableInput
   METHOD hasSelectedText
   METHOD home
   METHOD inputMask
   METHOD setInputMask
   METHOD insert
   METHOD isModified
   METHOD setModified
   METHOD isReadOnly
   METHOD setReadOnly
   METHOD isRedoAvailable
   METHOD isUndoAvailable
   METHOD maxLength
   METHOD setMaxLength
   METHOD placeholderText
   METHOD setPlaceholderText
   METHOD minimumSizeHint
   METHOD selectedText
   METHOD selectionStart
   METHOD hasFrame
   METHOD setFrame
   METHOD setSelection
   METHOD setTextMargins
   METHOD setValidator
   METHOD validator
   METHOD sizeHint
   METHOD text
   METHOD setText
   METHOD textMargins
   METHOD event
   METHOD inputMethodQuery
   METHOD copy
   METHOD cut
   METHOD paste
   METHOD redo
   METHOD selectAll
   METHOD undo
   METHOD setCursorMoveStyle
   METHOD cursorMoveStyle
   METHOD clear
   METHOD addAction
   METHOD setClearButtonEnabled
   METHOD isClearButtonEnabled

   METHOD onCursorPositionChanged
   METHOD onEditingFinished
   METHOD onReturnPressed
   METHOD onSelectionChanged
   METHOD onTextChanged
   METHOD onTextEdited

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>
#include <QIcon>

/*
explicit QLineEdit ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
explicit QLineEdit ( const QString & contents, QWidget * parent = 0 )
*/
$internalConstructor=|new2|const QString &,QWidget *=0

//[1]explicit QLineEdit ( QWidget * parent = 0 )
//[2]explicit QLineEdit ( const QString & contents, QWidget * parent = 0 )

HB_FUNC_STATIC( QLINEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QLineEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QLineEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Qt::Alignment alignment () const
*/
$method=|Qt::Alignment|alignment|

/*
void setAlignment ( Qt::Alignment flag )
*/
$method=|void|setAlignment|Qt::Alignment

/*
void backspace ()
*/
$method=|void|backspace|

/*
QCompleter * completer () const
*/
$method=|QCompleter *|completer|

/*
void setCompleter ( QCompleter * c )
*/
$method=|void|setCompleter|QCompleter *

/*
QMenu * createStandardContextMenu ()
*/
$method=|QMenu *|createStandardContextMenu|

/*
void cursorBackward ( bool mark, int steps = 1 )
*/
$method=|void|cursorBackward|bool,int=1

/*
void cursorForward ( bool mark, int steps = 1 )
*/
$method=|void|cursorForward|bool,int=1

/*
int cursorPosition () const
*/
$method=|int|cursorPosition|

/*
void setCursorPosition ( int )
*/
$method=|void|setCursorPosition|int

/*
int cursorPositionAt ( const QPoint & pos )
*/
$method=|int|cursorPositionAt|const QPoint &

/*
void cursorWordBackward ( bool mark )
*/
$method=|void|cursorWordBackward|bool

/*
void cursorWordForward ( bool mark )
*/
$method=|void|cursorWordForward|bool

/*
void del ()
*/
$method=|void|del|

/*
void deselect ()
*/
$method=|void|deselect|

/*
QString displayText () const
*/
$method=|QString|displayText|

/*
bool dragEnabled () const
*/
$method=|bool|dragEnabled|

/*
void setDragEnabled ( bool b )
*/
$method=|void|setDragEnabled|bool

/*
EchoMode echoMode () const
*/
$method=|QLineEdit::EchoMode|echoMode|

/*
void setEchoMode ( EchoMode )
*/
$method=|void|setEchoMode|QLineEdit::EchoMode

/*
void end ( bool mark )
*/
$method=|void|end|bool

/*
void getTextMargins ( int * left, int * top, int * right, int * bottom ) const
*/
$method=|void|getTextMargins|int *,int *,int *,int *

/*
bool hasAcceptableInput () const
*/
$method=|bool|hasAcceptableInput|

/*
bool hasSelectedText () const
*/
$method=|bool|hasSelectedText|

/*
void home ( bool mark )
*/
$method=|void|home|bool

/*
QString inputMask () const
*/
$method=|QString|inputMask|

/*
void setInputMask ( const QString & inputMask )
*/
$method=|void|setInputMask|const QString &

/*
void insert ( const QString & newText )
*/
$method=|void|insert|const QString &

/*
bool isModified () const
*/
$method=|bool|isModified|

/*
void setModified ( bool )
*/
$method=|void|setModified|bool

/*
bool isReadOnly () const
*/
$method=|bool|isReadOnly|

/*
void setReadOnly ( bool )
*/
$method=|void|setReadOnly|bool

/*
bool isRedoAvailable () const
*/
$method=|bool|isRedoAvailable|

/*
bool isUndoAvailable () const
*/
$method=|bool|isUndoAvailable|

/*
int maxLength () const
*/
$method=|int|maxLength|

/*
void setMaxLength ( int )
*/
$method=|void|setMaxLength|int

/*
QString placeholderText () const
*/
$method=|QString|placeholderText|

/*
void setPlaceholderText ( const QString & )
*/
$method=|void|setPlaceholderText|const QString &

/*
QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
QString selectedText () const
*/
$method=|QString|selectedText|

/*
int selectionStart () const
*/
$method=|int|selectionStart|

/*
bool hasFrame () const
*/
$method=|bool|hasFrame|

/*
void setFrame ( bool )
*/
$method=|void|setFrame|bool

/*
void setSelection ( int start, int length )
*/
$method=|void|setSelection|int,int

/*
void setTextMargins ( int left, int top, int right, int bottom )
*/
$internalMethod=|void|setTextMargins,setTextMargins1|int,int,int,int

/*
void setTextMargins ( const QMargins & margins )
*/
$internalMethod=|void|setTextMargins,setTextMargins2|const QMargins &

//[1]void setTextMargins ( int left, int top, int right, int bottom )
//[2]void setTextMargins ( const QMargins & margins )

HB_FUNC_STATIC( QLINEEDIT_SETTEXTMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QLineEdit_setTextMargins1();
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    QLineEdit_setTextMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setValidator ( const QValidator * v )
*/
$method=|void|setValidator|const QValidator *=0

/*
const QValidator * validator () const
*/
$method=|const QValidator *|validator|

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
QString text () const
*/
$method=|QString|text|

/*
void setText ( const QString & )
*/
$method=|void|setText|const QString &

/*
QMargins textMargins () const
*/
$method=|QMargins|textMargins|

/*
bool event ( QEvent * e )
*/
$method=|bool|event|QEvent *

/*
QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
*/
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

/*
void copy () const
*/
$method=|void|copy|

/*
void cut ()
*/
$method=|void|cut|

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
void undo ()
*/
$method=|void|undo|

/*
void setCursorMoveStyle(Qt::CursorMoveStyle style)
*/
$method=|void|setCursorMoveStyle|Qt::CursorMoveStyle

/*
Qt::CursorMoveStyle cursorMoveStyle() const
*/
$method=|Qt::CursorMoveStyle|cursorMoveStyle|

/*
void clear()
*/
$method=|void|clear|

/*
void addAction(QAction *action, ActionPosition position)
*/
$internalMethod=|void|addAction,addAction1|QAction *,QLineEdit::ActionPosition

/*
QAction * addAction(const QIcon &icon, ActionPosition position)
*/
$internalMethod=|QAction *|addAction,addAction2|const QIcon &,QLineEdit::ActionPosition

//[1]void addAction(QAction *action, ActionPosition position)
//[2]QAction *addAction(const QIcon &icon, ActionPosition position)

HB_FUNC_STATIC( QLINEEDIT_ADDACTION )
{
  if( ISNUMPAR(2) && ISQACTION(1) && ISNUM(2) )
  {
    QLineEdit_addAction1();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISNUM(2) )
  {
    QLineEdit_addAction2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setClearButtonEnabled(bool enable)
*/
$method=|void|setClearButtonEnabled|bool

/*
bool isClearButtonEnabled() const
*/
$method=|bool|isClearButtonEnabled|

#pragma ENDDUMP
