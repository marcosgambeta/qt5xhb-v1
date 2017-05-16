/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QLineEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QLineEdit>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QLineEdit>
#endif

#include <QVariant>
#include <QIcon>

/*
explicit QLineEdit ( QWidget * parent = 0 )
*/
void QLineEdit_new1 ()
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QLineEdit * o = new QLineEdit ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QLineEdit ( const QString & contents, QWidget * parent = 0 )
*/
void QLineEdit_new2 ()
{
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QLineEdit * o = new QLineEdit ( PQSTRING(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

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

HB_FUNC_STATIC( QLINEEDIT_DELETE )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QLINEEDIT_ALIGNMENT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->alignment () );
  }
}

/*
void setAlignment ( Qt::Alignment flag )
*/
HB_FUNC_STATIC( QLINEEDIT_SETALIGNMENT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment (  (Qt::Alignment) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void backspace ()
*/
HB_FUNC_STATIC( QLINEEDIT_BACKSPACE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->backspace ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QCompleter * completer () const
*/
HB_FUNC_STATIC( QLINEEDIT_COMPLETER )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QCompleter * ptr = obj->completer ();
    _qt5xhb_createReturnClass ( ptr, "QCOMPLETER" );
  }
}

/*
void setCompleter ( QCompleter * c )
*/
HB_FUNC_STATIC( QLINEEDIT_SETCOMPLETER )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QCompleter * par1 = ISNIL(1)? 0 : (QCompleter *) _qt5xhb_itemGetPtr(1);
    obj->setCompleter ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMenu * createStandardContextMenu ()
*/
HB_FUNC_STATIC( QLINEEDIT_CREATESTANDARDCONTEXTMENU )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenu * ptr = obj->createStandardContextMenu ();
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}

/*
void cursorBackward ( bool mark, int steps = 1 )
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORBACKWARD )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) && ISOPTNUM(2) )
    {
      obj->cursorBackward ( PBOOL(1), (int) ISNIL(2)? 1 : hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cursorForward ( bool mark, int steps = 1 )
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORFORWARD )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) && ISOPTNUM(2) )
    {
      obj->cursorForward ( PBOOL(1), (int) ISNIL(2)? 1 : hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int cursorPosition () const
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORPOSITION )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->cursorPosition () );
  }
}

/*
void setCursorPosition ( int )
*/
HB_FUNC_STATIC( QLINEEDIT_SETCURSORPOSITION )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCursorPosition ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int cursorPositionAt ( const QPoint & pos )
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORPOSITIONAT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->cursorPositionAt ( *par1 ) );
  }
}

/*
void cursorWordBackward ( bool mark )
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORWORDBACKWARD )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->cursorWordBackward ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cursorWordForward ( bool mark )
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORWORDFORWARD )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->cursorWordForward ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void del ()
*/
HB_FUNC_STATIC( QLINEEDIT_DEL )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->del ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void deselect ()
*/
HB_FUNC_STATIC( QLINEEDIT_DESELECT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->deselect ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString displayText () const
*/
HB_FUNC_STATIC( QLINEEDIT_DISPLAYTEXT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->displayText () ) );
  }
}

/*
bool dragEnabled () const
*/
HB_FUNC_STATIC( QLINEEDIT_DRAGENABLED )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->dragEnabled () );
  }
}

/*
void setDragEnabled ( bool b )
*/
HB_FUNC_STATIC( QLINEEDIT_SETDRAGENABLED )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setDragEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
EchoMode echoMode () const
*/
HB_FUNC_STATIC( QLINEEDIT_ECHOMODE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->echoMode () );
  }
}

/*
void setEchoMode ( EchoMode )
*/
HB_FUNC_STATIC( QLINEEDIT_SETECHOMODE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setEchoMode (  (QLineEdit::EchoMode) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void end ( bool mark )
*/
HB_FUNC_STATIC( QLINEEDIT_END )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->end ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void getTextMargins ( int * left, int * top, int * right, int * bottom ) const
*/
HB_FUNC_STATIC( QLINEEDIT_GETTEXTMARGINS )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->getTextMargins ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool hasAcceptableInput () const
*/
HB_FUNC_STATIC( QLINEEDIT_HASACCEPTABLEINPUT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasAcceptableInput () );
  }
}

/*
bool hasSelectedText () const
*/
HB_FUNC_STATIC( QLINEEDIT_HASSELECTEDTEXT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasSelectedText () );
  }
}

/*
void home ( bool mark )
*/
HB_FUNC_STATIC( QLINEEDIT_HOME )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->home ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString inputMask () const
*/
HB_FUNC_STATIC( QLINEEDIT_INPUTMASK )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->inputMask () ) );
  }
}

/*
void setInputMask ( const QString & inputMask )
*/
HB_FUNC_STATIC( QLINEEDIT_SETINPUTMASK )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setInputMask ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insert ( const QString & newText )
*/
HB_FUNC_STATIC( QLINEEDIT_INSERT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->insert ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isModified () const
*/
HB_FUNC_STATIC( QLINEEDIT_ISMODIFIED )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isModified () );
  }
}

/*
void setModified ( bool )
*/
HB_FUNC_STATIC( QLINEEDIT_SETMODIFIED )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setModified ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isReadOnly () const
*/
HB_FUNC_STATIC( QLINEEDIT_ISREADONLY )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isReadOnly () );
  }
}

/*
void setReadOnly ( bool )
*/
HB_FUNC_STATIC( QLINEEDIT_SETREADONLY )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setReadOnly ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isRedoAvailable () const
*/
HB_FUNC_STATIC( QLINEEDIT_ISREDOAVAILABLE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isRedoAvailable () );
  }
}

/*
bool isUndoAvailable () const
*/
HB_FUNC_STATIC( QLINEEDIT_ISUNDOAVAILABLE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isUndoAvailable () );
  }
}

/*
int maxLength () const
*/
HB_FUNC_STATIC( QLINEEDIT_MAXLENGTH )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->maxLength () );
  }
}

/*
void setMaxLength ( int )
*/
HB_FUNC_STATIC( QLINEEDIT_SETMAXLENGTH )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMaxLength ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString placeholderText () const
*/
HB_FUNC_STATIC( QLINEEDIT_PLACEHOLDERTEXT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->placeholderText () ) );
  }
}

/*
void setPlaceholderText ( const QString & )
*/
HB_FUNC_STATIC( QLINEEDIT_SETPLACEHOLDERTEXT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setPlaceholderText ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QLINEEDIT_MINIMUMSIZEHINT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QString selectedText () const
*/
HB_FUNC_STATIC( QLINEEDIT_SELECTEDTEXT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->selectedText () ) );
  }
}

/*
int selectionStart () const
*/
HB_FUNC_STATIC( QLINEEDIT_SELECTIONSTART )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->selectionStart () );
  }
}

/*
bool hasFrame () const
*/
HB_FUNC_STATIC( QLINEEDIT_HASFRAME )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasFrame () );
  }
}

/*
void setFrame ( bool )
*/
HB_FUNC_STATIC( QLINEEDIT_SETFRAME )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setFrame ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelection ( int start, int length )
*/
HB_FUNC_STATIC( QLINEEDIT_SETSELECTION )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setSelection ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextMargins ( int left, int top, int right, int bottom )
*/
void QLineEdit_setTextMargins1 ()
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setTextMargins ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextMargins ( const QMargins & margins )
*/
void QLineEdit_setTextMargins2 ()
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMargins * par1 = (QMargins *) _qt5xhb_itemGetPtr(1);
    obj->setTextMargins ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QLINEEDIT_SETVALIDATOR )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QValidator * par1 = ISNIL(1)? 0 : (const QValidator *) _qt5xhb_itemGetPtr(1);
    obj->setValidator ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QValidator * validator () const
*/
HB_FUNC_STATIC( QLINEEDIT_VALIDATOR )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QValidator * ptr = obj->validator ();
    _qt5xhb_createReturnClass ( ptr, "QVALIDATOR" );
  }
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QLINEEDIT_SIZEHINT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QString text () const
*/
HB_FUNC_STATIC( QLINEEDIT_TEXT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->text () ) );
  }
}

/*
void setText ( const QString & )
*/
HB_FUNC_STATIC( QLINEEDIT_SETTEXT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setText ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMargins textMargins () const
*/
HB_FUNC_STATIC( QLINEEDIT_TEXTMARGINS )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMargins * ptr = new QMargins( obj->textMargins () );
    _qt5xhb_createReturnClass ( ptr, "QMARGINS", true );
  }
}

/*
bool event ( QEvent * e )
*/
HB_FUNC_STATIC( QLINEEDIT_EVENT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QEvent * par1 = (QEvent *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->event ( par1 ) );
  }
}

/*
QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
*/
HB_FUNC_STATIC( QLINEEDIT_INPUTMETHODQUERY )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery (  (Qt::InputMethodQuery) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
void copy () const
*/
HB_FUNC_STATIC( QLINEEDIT_COPY )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->copy ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cut ()
*/
HB_FUNC_STATIC( QLINEEDIT_CUT )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->cut ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void paste ()
*/
HB_FUNC_STATIC( QLINEEDIT_PASTE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->paste ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void redo ()
*/
HB_FUNC_STATIC( QLINEEDIT_REDO )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->redo ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void selectAll ()
*/
HB_FUNC_STATIC( QLINEEDIT_SELECTALL )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->selectAll ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void undo ()
*/
HB_FUNC_STATIC( QLINEEDIT_UNDO )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->undo ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCursorMoveStyle(Qt::CursorMoveStyle style)
*/
HB_FUNC_STATIC( QLINEEDIT_SETCURSORMOVESTYLE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCursorMoveStyle (  (Qt::CursorMoveStyle) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::CursorMoveStyle cursorMoveStyle() const
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORMOVESTYLE )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->cursorMoveStyle () );
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QLINEEDIT_CLEAR )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addAction(QAction *action, ActionPosition position)
*/
void QLineEdit_addAction1 ()
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * par1 = (QAction *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->addAction ( par1,  (QLineEdit::ActionPosition) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * addAction(const QIcon &icon, ActionPosition position)
*/
void QLineEdit_addAction2 ()
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    int par2 = hb_parni(2);
    QAction * ptr = obj->addAction ( par1,  (QLineEdit::ActionPosition) par2 );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

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
HB_FUNC_STATIC( QLINEEDIT_SETCLEARBUTTONENABLED )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setClearButtonEnabled ( PBOOL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isClearButtonEnabled() const
*/
HB_FUNC_STATIC( QLINEEDIT_ISCLEARBUTTONENABLED )
{
  QLineEdit * obj = (QLineEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isClearButtonEnabled () );
  }
}

#pragma ENDDUMP
