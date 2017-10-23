/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QTOOLBAR
REQUEST QMAINWINDOW
REQUEST QWIDGET
#endif

CLASS QScriptEngineDebugger INHERIT QObject

   METHOD new
   METHOD delete
   METHOD action
   METHOD attachTo
   METHOD autoShowStandardWindow
   METHOD createStandardMenu
   METHOD createStandardToolBar
   METHOD detach
   METHOD setAutoShowStandardWindow
   METHOD standardWindow
   METHOD state
   METHOD widget

   METHOD onEvaluationResumed
   METHOD onEvaluationSuspended

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptEngineDebugger
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScriptEngineDebugger>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScriptEngineDebugger>
#endif

/*
QScriptEngineDebugger(QObject * parent = 0)
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_NEW )
{
  QScriptEngineDebugger * o = new QScriptEngineDebugger ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_DELETE )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QAction * action(DebuggerAction action) const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_ACTION )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->action ( (QScriptEngineDebugger::DebuggerAction) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
void attachTo(QScriptEngine * engine)
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_ATTACHTO )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptEngine * par1 = (QScriptEngine *) _qt5xhb_itemGetPtr(1);
    obj->attachTo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool autoShowStandardWindow() const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_AUTOSHOWSTANDARDWINDOW )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->autoShowStandardWindow () );
  }
}


/*
QMenu * createStandardMenu(QWidget * parent = 0)
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_CREATESTANDARDMENU )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMenu * ptr = obj->createStandardMenu ( OPQWIDGET(1,0) );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}


/*
QToolBar * createStandardToolBar(QWidget * parent = 0)
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_CREATESTANDARDTOOLBAR )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QToolBar * ptr = obj->createStandardToolBar ( OPQWIDGET(1,0) );
    _qt5xhb_createReturnClass ( ptr, "QTOOLBAR" );
  }
}


/*
void detach()
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_DETACH )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->detach ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoShowStandardWindow(bool autoShow)
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_SETAUTOSHOWSTANDARDWINDOW )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoShowStandardWindow ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QMainWindow * standardWindow() const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_STANDARDWINDOW )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMainWindow * ptr = obj->standardWindow ();
    _qt5xhb_createReturnClass ( ptr, "QMAINWINDOW" );
  }
}


/*
DebuggerState state() const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_STATE )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
QWidget * widget(DebuggerWidget widget) const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_WIDGET )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->widget ( (QScriptEngineDebugger::DebuggerWidget) hb_parni(1) );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}




#pragma ENDDUMP
