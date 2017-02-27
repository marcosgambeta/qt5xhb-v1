/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QTOOLBAR
REQUEST QMAINWINDOW
REQUEST QWIDGET
#endif

CLASS QScriptEngineDebugger INHERIT QObject

   DATA class_id INIT Class_Id_QScriptEngineDebugger
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QScriptEngineDebugger>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QScriptEngineDebugger>
#endif
#endif

/*
QScriptEngineDebugger(QObject * parent = 0)
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QScriptEngineDebugger * o = new QScriptEngineDebugger ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptEngineDebugger *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QAction * action(DebuggerAction action) const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_ACTION )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QAction * ptr = obj->action (  (QScriptEngineDebugger::DebuggerAction) par1 );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
void attachTo(QScriptEngine * engine)
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_ATTACHTO )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptEngine * par1 = (QScriptEngine *) _qtxhb_itemGetPtr(1);
    obj->attachTo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool autoShowStandardWindow() const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_AUTOSHOWSTANDARDWINDOW )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->autoShowStandardWindow (  ) );
  }
}


/*
QMenu * createStandardMenu(QWidget * parent = 0)
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_CREATESTANDARDMENU )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
    QMenu * ptr = obj->createStandardMenu ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}


/*
QToolBar * createStandardToolBar(QWidget * parent = 0)
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_CREATESTANDARDTOOLBAR )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
    QToolBar * ptr = obj->createStandardToolBar ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QTOOLBAR" );
  }
}


/*
void detach()
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_DETACH )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->detach (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoShowStandardWindow(bool autoShow)
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_SETAUTOSHOWSTANDARDWINDOW )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoShowStandardWindow ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QMainWindow * standardWindow() const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_STANDARDWINDOW )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMainWindow * ptr = obj->standardWindow (  );
    _qt5xhb_createReturnClass ( ptr, "QMAINWINDOW" );
  }
}


/*
DebuggerState state() const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_STATE )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state (  ) );
  }
}


/*
QWidget * widget(DebuggerWidget widget) const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_WIDGET )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QWidget * ptr = obj->widget (  (QScriptEngineDebugger::DebuggerWidget) par1 );
    _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}




#pragma ENDDUMP
