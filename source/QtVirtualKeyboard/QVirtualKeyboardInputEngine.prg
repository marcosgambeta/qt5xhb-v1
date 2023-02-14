/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVIRTUALKEYBOARDABSTRACTINPUTMETHOD
REQUEST QVIRTUALKEYBOARDINPUTCONTEXT
REQUEST QVIRTUALKEYBOARDSELECTIONLISTMODEL
#endif

CLASS QVirtualKeyboardInputEngine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD activeKey
   METHOD previousKey
   METHOD inputMethod
   METHOD setInputMethod
   METHOD inputModes
   METHOD inputMode
   METHOD setInputMode
   METHOD patternRecognitionModes
   METHOD wordCandidateListModel
   METHOD wordCandidateListVisibleHint
   METHOD init
   METHOD virtualKeyPress
   METHOD virtualKeyCancel
   METHOD virtualKeyRelease
   METHOD virtualKeyClick
   METHOD inputContext
   METHOD traceEnd
   METHOD clickPreeditText

   METHOD onVirtualKeyClicked
   METHOD onActiveKeyChanged
   METHOD onPreviousKeyChanged
   METHOD onInputMethodChanged
   METHOD onInputMethodReset
   METHOD onInputMethodUpdate
   METHOD onInputModesChanged
   METHOD onInputModeChanged
   METHOD onPatternRecognitionModesChanged
   METHOD onWordCandidateListModelChanged
   METHOD onWordCandidateListVisibleHintChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVirtualKeyboardInputEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardInputEngine>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardInputEngine>
#endif

/*
QVirtualKeyboardInputEngine( QVirtualKeyboardInputContext * parent = nullptr )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQVIRTUALKEYBOARDINPUTCONTEXT(1)||HB_ISNIL(1)) )
  {
    QVirtualKeyboardInputEngine * obj = new QVirtualKeyboardInputEngine( OPQVIRTUALKEYBOARDINPUTCONTEXT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QVirtualKeyboardInputEngine()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_DELETE )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::Key activeKey() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ACTIVEKEY )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->activeKey() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
Qt::Key previousKey() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_PREVIOUSKEY )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->previousKey() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QVirtualKeyboardAbstractInputMethod * inputMethod() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_INPUTMETHOD )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVirtualKeyboardAbstractInputMethod * ptr = obj->inputMethod();
      Qt5xHb::createReturnQObjectClass(ptr, "QVIRTUALKEYBOARDABSTRACTINPUTMETHOD");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setInputMethod( QVirtualKeyboardAbstractInputMethod * inputMethod )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_SETINPUTMETHOD )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVIRTUALKEYBOARDABSTRACTINPUTMETHOD(1) )
    {
#endif
      obj->setInputMethod( PQVIRTUALKEYBOARDABSTRACTINPUTMETHOD(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QList<int> inputModes() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_INPUTMODES )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<int> list = obj->inputModes();
      Qt5xHb::convert_qlist_int_to_array(list);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QVirtualKeyboardInputEngine::InputMode inputMode() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_INPUTMODE )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->inputMode() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setInputMode( QVirtualKeyboardInputEngine::InputMode inputMode )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_SETINPUTMODE )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setInputMode( (QVirtualKeyboardInputEngine::InputMode) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QList<int> patternRecognitionModes() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_PATTERNRECOGNITIONMODES )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<int> list = obj->patternRecognitionModes();
      Qt5xHb::convert_qlist_int_to_array(list);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QVirtualKeyboardSelectionListModel * wordCandidateListModel() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_WORDCANDIDATELISTMODEL )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVirtualKeyboardSelectionListModel * ptr = obj->wordCandidateListModel();
      Qt5xHb::createReturnQObjectClass(ptr, "QVIRTUALKEYBOARDSELECTIONLISTMODEL");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool wordCandidateListVisibleHint() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_WORDCANDIDATELISTVISIBLEHINT )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->wordCandidateListVisibleHint() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void init()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_INIT )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->init();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Q_INVOKABLE bool virtualKeyPress( Qt::Key key, const QString & text, Qt::KeyboardModifiers modifiers, bool repeat )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_VIRTUALKEYPRESS )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISCHAR(2) && HB_ISNUM(3) && HB_ISLOG(4) )
    {
#endif
      RBOOL( obj->virtualKeyPress( (Qt::Key) hb_parni(1), PQSTRING(2), (Qt::KeyboardModifiers) hb_parni(3), PBOOL(4) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
Q_INVOKABLE void virtualKeyCancel()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_VIRTUALKEYCANCEL )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->virtualKeyCancel();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Q_INVOKABLE bool virtualKeyRelease( Qt::Key key, const QString & text, Qt::KeyboardModifiers modifiers )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_VIRTUALKEYRELEASE )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISCHAR(2) && HB_ISNUM(3) )
    {
#endif
      RBOOL( obj->virtualKeyRelease( (Qt::Key) hb_parni(1), PQSTRING(2), (Qt::KeyboardModifiers) hb_parni(3) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
Q_INVOKABLE bool virtualKeyClick( Qt::Key key, const QString & text, Qt::KeyboardModifiers modifiers )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_VIRTUALKEYCLICK )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISCHAR(2) && HB_ISNUM(3) )
    {
#endif
      RBOOL( obj->virtualKeyClick( (Qt::Key) hb_parni(1), PQSTRING(2), (Qt::KeyboardModifiers) hb_parni(3) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QVirtualKeyboardInputContext * inputContext() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_INPUTCONTEXT )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVirtualKeyboardInputContext * ptr = obj->inputContext();
      Qt5xHb::createReturnQObjectClass(ptr, "QVIRTUALKEYBOARDINPUTCONTEXT");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
Q_INVOKABLE bool traceEnd( QVirtualKeyboardTrace * trace )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_TRACEEND )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVIRTUALKEYBOARDTRACE(1) )
    {
#endif
      RBOOL( obj->traceEnd( PQVIRTUALKEYBOARDTRACE(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool clickPreeditText( int cursorPosition )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_CLICKPREEDITTEXT )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->clickPreeditText( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QVirtualKeyboardInputEngineSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONVIRTUALKEYCLICKED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal("virtualKeyClicked(Qt::Key,QString,Qt::KeyboardModifiers,bool)", "virtualKeyClicked(Qt::Key,QString,Qt::KeyboardModifiers,bool)");
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONACTIVEKEYCHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal("activeKeyChanged(Qt::Key)", "activeKeyChanged(Qt::Key)");
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONPREVIOUSKEYCHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal("previousKeyChanged(Qt::Key)", "previousKeyChanged(Qt::Key)");
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMETHODCHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal("inputMethodChanged()", "inputMethodChanged()");
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMETHODRESET )
{
  QVirtualKeyboardInputEngineSlots_connect_signal("inputMethodReset()", "inputMethodReset()");
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMETHODUPDATE )
{
  QVirtualKeyboardInputEngineSlots_connect_signal("inputMethodUpdate()", "inputMethodUpdate()");
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMODESCHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal("inputModesChanged()", "inputModesChanged()");
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMODECHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal("inputModeChanged()", "inputModeChanged()");
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONPATTERNRECOGNITIONMODESCHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal("patternRecognitionModesChanged()", "patternRecognitionModesChanged()");
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONWORDCANDIDATELISTMODELCHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal("wordCandidateListModelChanged()", "wordCandidateListModelChanged()");
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONWORDCANDIDATELISTVISIBLEHINTCHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal("wordCandidateListVisibleHintChanged()", "wordCandidateListVisibleHintChanged()");
}

#pragma ENDDUMP
