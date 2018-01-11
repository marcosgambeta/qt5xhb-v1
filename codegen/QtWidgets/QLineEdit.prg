%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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
#include <QCompleter>
#include <QValidator>
#include <QAction>

$prototype=explicit QLineEdit ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=explicit QLineEdit ( const QString & contents, QWidget * parent = 0 )
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

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=void setAlignment ( Qt::Alignment flag )
$method=|void|setAlignment|Qt::Alignment

$prototype=void backspace ()
$method=|void|backspace|

$prototype=QCompleter * completer () const
$method=|QCompleter *|completer|

$prototype=void setCompleter ( QCompleter * c )
$method=|void|setCompleter|QCompleter *

$prototype=QMenu * createStandardContextMenu ()
$method=|QMenu *|createStandardContextMenu|

$prototype=void cursorBackward ( bool mark, int steps = 1 )
$method=|void|cursorBackward|bool,int=1

$prototype=void cursorForward ( bool mark, int steps = 1 )
$method=|void|cursorForward|bool,int=1

$prototype=int cursorPosition () const
$method=|int|cursorPosition|

$prototype=void setCursorPosition ( int )
$method=|void|setCursorPosition|int

$prototype=int cursorPositionAt ( const QPoint & pos )
$method=|int|cursorPositionAt|const QPoint &

$prototype=void cursorWordBackward ( bool mark )
$method=|void|cursorWordBackward|bool

$prototype=void cursorWordForward ( bool mark )
$method=|void|cursorWordForward|bool

$prototype=void del ()
$method=|void|del|

$prototype=void deselect ()
$method=|void|deselect|

$prototype=QString displayText () const
$method=|QString|displayText|

$prototype=bool dragEnabled () const
$method=|bool|dragEnabled|

$prototype=void setDragEnabled ( bool b )
$method=|void|setDragEnabled|bool

$prototype=EchoMode echoMode () const
$method=|QLineEdit::EchoMode|echoMode|

$prototype=void setEchoMode ( EchoMode )
$method=|void|setEchoMode|QLineEdit::EchoMode

$prototype=void end ( bool mark )
$method=|void|end|bool

$prototype=void getTextMargins ( int * left, int * top, int * right, int * bottom ) const
$method=|void|getTextMargins|int *,int *,int *,int *

$prototype=bool hasAcceptableInput () const
$method=|bool|hasAcceptableInput|

$prototype=bool hasSelectedText () const
$method=|bool|hasSelectedText|

$prototype=void home ( bool mark )
$method=|void|home|bool

$prototype=QString inputMask () const
$method=|QString|inputMask|

$prototype=void setInputMask ( const QString & inputMask )
$method=|void|setInputMask|const QString &

$prototype=void insert ( const QString & newText )
$method=|void|insert|const QString &

$prototype=bool isModified () const
$method=|bool|isModified|

$prototype=void setModified ( bool )
$method=|void|setModified|bool

$prototype=bool isReadOnly () const
$method=|bool|isReadOnly|

$prototype=void setReadOnly ( bool )
$method=|void|setReadOnly|bool

$prototype=bool isRedoAvailable () const
$method=|bool|isRedoAvailable|

$prototype=bool isUndoAvailable () const
$method=|bool|isUndoAvailable|

$prototype=int maxLength () const
$method=|int|maxLength|

$prototype=void setMaxLength ( int )
$method=|void|setMaxLength|int

$prototype=QString placeholderText () const
$method=|QString|placeholderText|

$prototype=void setPlaceholderText ( const QString & )
$method=|void|setPlaceholderText|const QString &

$prototype=QSize minimumSizeHint () const
$method=|QSize|minimumSizeHint|

$prototype=QString selectedText () const
$method=|QString|selectedText|

$prototype=int selectionStart () const
$method=|int|selectionStart|

$prototype=bool hasFrame () const
$method=|bool|hasFrame|

$prototype=void setFrame ( bool )
$method=|void|setFrame|bool

$prototype=void setSelection ( int start, int length )
$method=|void|setSelection|int,int

$prototype=void setTextMargins ( int left, int top, int right, int bottom )
$internalMethod=|void|setTextMargins,setTextMargins1|int,int,int,int

$prototype=void setTextMargins ( const QMargins & margins )
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

$prototype=void setValidator ( const QValidator * v )
$method=|void|setValidator|const QValidator *=0

$prototype=const QValidator * validator () const
$method=|const QValidator *|validator|

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=QString text () const
$method=|QString|text|

$prototype=void setText ( const QString & )
$method=|void|setText|const QString &

$prototype=QMargins textMargins () const
$method=|QMargins|textMargins|

$prototype=bool event ( QEvent * e )
$method=|bool|event|QEvent *

$prototype=QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=void copy () const
$method=|void|copy|

$prototype=void cut ()
$method=|void|cut|

$prototype=void paste ()
$method=|void|paste|

$prototype=void redo ()
$method=|void|redo|

$prototype=void selectAll ()
$method=|void|selectAll|

$prototype=void undo ()
$method=|void|undo|

$prototype=void setCursorMoveStyle(Qt::CursorMoveStyle style)
$method=|void|setCursorMoveStyle|Qt::CursorMoveStyle

$prototype=Qt::CursorMoveStyle cursorMoveStyle() const
$method=|Qt::CursorMoveStyle|cursorMoveStyle|

$prototype=void clear()
$method=|void|clear|

$prototype=void addAction(QAction *action, ActionPosition position)
$internalMethod=|void|addAction,addAction1|QAction *,QLineEdit::ActionPosition

$prototype=QAction * addAction(const QIcon &icon, ActionPosition position)
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

$prototype=void setClearButtonEnabled(bool enable)
$method=|void|setClearButtonEnabled|bool

$prototype=bool isClearButtonEnabled() const
$method=|bool|isClearButtonEnabled|

#pragma ENDDUMP
