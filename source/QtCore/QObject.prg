/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY
REQUEST QMETAOBJECT
REQUEST QVARIANT
REQUEST QTHREAD

CLASS QObject

   DATA pointer
   DATA class_id INIT Class_Id_QObject
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD blockSignals
   METHOD children
   METHOD dumpObjectInfo
   METHOD dumpObjectTree
   METHOD dynamicPropertyNames
   METHOD event
   METHOD eventFilter
   METHOD findChild
   METHOD findChildren1
   METHOD findChildren2
   METHOD findChildren3
   METHOD findChildren
   METHOD inherits
   METHOD installEventFilter
   METHOD isWidgetType
   METHOD isWindowType
   METHOD killTimer
   METHOD metaObject
   METHOD moveToThread
   METHOD objectName
   METHOD setObjectName
   METHOD parent
   METHOD setParent
   METHOD property
   METHOD setProperty
   METHOD removeEventFilter
   METHOD signalsBlocked
   METHOD startTimer
   METHOD thread
   METHOD deleteLater
   METHOD tr
   METHOD onAcceptDropsChangeEvent
   METHOD onActionAddedEvent
   METHOD onActionChangedEvent
   METHOD onActionRemovedEvent
   METHOD onActivateControlEvent
   METHOD onActivationChangeEvent
   METHOD onApplicationActivateEvent
   METHOD onApplicationActivatedEvent
   METHOD onApplicationDeactivateEvent
   METHOD onApplicationDeactivatedEvent
   METHOD onApplicationFontChangeEvent
   METHOD onApplicationLayoutDirectionChangeEvent
   METHOD onApplicationPaletteChangeEvent
   METHOD onApplicationWindowIconChangeEvent
   METHOD onChildAddedEvent
   METHOD onChildPolishedEvent
   METHOD onChildRemovedEvent
   METHOD onClipboardEvent
   METHOD onCloseEvent
   METHOD onCloseSoftwareInputPanelEvent
   METHOD onContentsRectChangeEvent
   METHOD onContextMenuEvent
   METHOD onCreateEvent
   METHOD onCursorChangeEvent
   METHOD onDeactivateControlEvent
   METHOD onDeferredDeleteEvent
   METHOD onDestroyEvent
   METHOD onDragEnterEvent
   METHOD onDragLeaveEvent
   METHOD onDragMoveEvent
   METHOD onDragResponseEvent
   METHOD onDropEvent
   METHOD onDynamicPropertyChangeEvent
   METHOD onEmbeddingControlEvent
   METHOD onEnabledChangeEvent
   METHOD onEnterEvent
   METHOD onEnterEditFocusEvent
   METHOD onEnterWhatsThisModeEvent
   METHOD onExposeEvent
   METHOD onFileOpenEvent
   METHOD onFocusAboutToChangeEvent
   METHOD onFocusInEvent
   METHOD onFocusOutEvent
   METHOD onFontChangeEvent
   METHOD onFutureCallOutEvent
   METHOD onGestureEvent
   METHOD onGestureOverrideEvent
   METHOD onGrabKeyboardEvent
   METHOD onGrabMouseEvent
   METHOD onGraphicsSceneContextMenuEvent
   METHOD onGraphicsSceneDragEnterEvent
   METHOD onGraphicsSceneDragLeaveEvent
   METHOD onGraphicsSceneDragMoveEvent
   METHOD onGraphicsSceneDropEvent
   METHOD onGraphicsSceneHelpEvent
   METHOD onGraphicsSceneHoverEnterEvent
   METHOD onGraphicsSceneHoverLeaveEvent
   METHOD onGraphicsSceneHoverMoveEvent
   METHOD onGraphicsSceneMouseDoubleClickEvent
   METHOD onGraphicsSceneMouseMoveEvent
   METHOD onGraphicsSceneMousePressEvent
   METHOD onGraphicsSceneMouseReleaseEvent
   METHOD onGraphicsSceneMoveEvent
   METHOD onGraphicsSceneResizeEvent
   METHOD onGraphicsSceneWheelEvent
   METHOD onHelpRequestEvent
   METHOD onHideEvent
   METHOD onHideToParentEvent
   METHOD onHoverEnterEvent
   METHOD onHoverLeaveEvent
   METHOD onHoverMoveEvent
   METHOD onIconDragEvent
   METHOD onIconTextChangeEvent
   METHOD onInputMethodEvent
   METHOD onInputMethodQueryEvent
   METHOD onKeyboardLayoutChangeEvent
   METHOD onKeyPressEvent
   METHOD onKeyReleaseEvent
   METHOD onLanguageChangeEvent
   METHOD onLayoutDirectionChangeEvent
   METHOD onLayoutRequestEvent
   METHOD onLeaveEvent
   METHOD onLeaveEditFocusEvent
   METHOD onLeaveWhatsThisModeEvent
   METHOD onLocaleChangeEvent
   METHOD onMacGLClearDrawableEvent
   METHOD onMacGLWindowChangeEvent
   METHOD onMacSizeChangeEvent
   METHOD onMetaCallEvent
   METHOD onModifiedChangeEvent
   METHOD onMouseButtonDblClickEvent
   METHOD onMouseButtonPressEvent
   METHOD onMouseButtonReleaseEvent
   METHOD onMouseMoveEvent
   METHOD onMouseTrackingChangeEvent
   METHOD onMoveEvent
   METHOD onNativeGestureEvent
   METHOD onNetworkReplyUpdatedEvent
   METHOD onNonClientAreaMouseButtonDblClickEvent
   METHOD onNonClientAreaMouseButtonPressEvent
   METHOD onNonClientAreaMouseButtonReleaseEvent
   METHOD onNonClientAreaMouseMoveEvent
   METHOD onNoneEvent
   METHOD onOkRequestEvent
   METHOD onOrientationChangeEvent
   METHOD onPaintEvent
   METHOD onPaletteChangeEvent
   METHOD onParentAboutToChangeEvent
   METHOD onParentChangeEvent
   METHOD onPlatformPanelEvent
   METHOD onPolishEvent
   METHOD onPolishRequestEvent
   METHOD onQueryWhatsThisEvent
   METHOD onQuitEvent
   METHOD onRequestSoftwareInputPanelEvent
   METHOD onResizeEvent
   METHOD onScrollEvent
   METHOD onScrollPrepareEvent
   METHOD onShortcutEvent
   METHOD onShortcutOverrideEvent
   METHOD onShowEvent
   METHOD onShowToParentEvent
   METHOD onShowWindowRequestEvent
   METHOD onSockActEvent
   METHOD onSockCloseEvent
   METHOD onSpeechEvent
   METHOD onStateMachineSignalEvent
   METHOD onStateMachineWrappedEvent
   METHOD onStatusTipEvent
   METHOD onStyleEvent
   METHOD onStyleAnimationUpdateEvent
   METHOD onStyleChangeEvent
   METHOD onTabletEnterProximityEvent
   METHOD onTabletLeaveProximityEvent
   METHOD onTabletMoveEvent
   METHOD onTabletPressEvent
   METHOD onTabletReleaseEvent
   METHOD onThemeChangeEvent
   METHOD onThreadChangeEvent
   METHOD onTimerEvent
   METHOD onToolBarChangeEvent
   METHOD onToolTipEvent
   METHOD onToolTipChangeEvent
   METHOD onTouchBeginEvent
   METHOD onTouchCancelEvent
   METHOD onTouchEndEvent
   METHOD onTouchUpdateEvent
   METHOD onUngrabKeyboardEvent
   METHOD onUngrabMouseEvent
   METHOD onUpdateLaterEvent
   METHOD onUpdateRequestEvent
   METHOD onWhatsThisEvent
   METHOD onWhatsThisClickedEvent
   METHOD onWheelEvent
   METHOD onWindowActivateEvent
   METHOD onWindowBlockedEvent
   METHOD onWindowDeactivateEvent
   METHOD onWindowIconChangeEvent
   METHOD onWindowStateChangeEvent
   METHOD onWindowTitleChangeEvent
   METHOD onWindowUnblockedEvent
   METHOD onWinEventActEvent
   METHOD onWinIdChangeEvent
   METHOD onZeroTimerEventEvent
   METHOD onZOrderChangeEvent
   METHOD onDestroyed
   METHOD onObjectNameChanged
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   METHOD disconnectAll
   METHOD disconnectAllEvents
   METHOD disconnectAllSignals
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QObject>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QObject>
#endif
#endif

#include <QWidget>
#include <QVariant>
#include <QEvent>

bool Events_connect_event ( QObject * object, int type, PHB_ITEM codeblock );
bool Events_disconnect_event ( QObject * object, int type );
void Events_disconnect_all_events ( QObject * object, bool children );
void Signals_disconnect_all_signals ( QObject * object, bool children );
void _qtxhb_processOnEventMethod (QEvent::Type event);

/*
Q_INVOKABLE explicit QObject ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QOBJECT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QObject * o = new QObject ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QOBJECT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool blockSignals ( bool block )
*/
HB_FUNC_STATIC( QOBJECT_BLOCKSIGNALS )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->blockSignals ( (bool) hb_parl(1) ) );
  }
}


/*
const QObjectList & children () const
*/
HB_FUNC_STATIC( QOBJECT_CHILDREN )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObjectList list = obj->children (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QOBJECT" );
    #else
    pDynSym = hb_dynsymFindName( "QOBJECT" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QObject *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}





/*
void dumpObjectInfo ()
*/
HB_FUNC_STATIC( QOBJECT_DUMPOBJECTINFO )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->dumpObjectInfo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void dumpObjectTree ()
*/
HB_FUNC_STATIC( QOBJECT_DUMPOBJECTTREE )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->dumpObjectTree (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QByteArray> dynamicPropertyNames () const
*/
HB_FUNC_STATIC( QOBJECT_DYNAMICPROPERTYNAMES )
{
#ifndef QT_NO_PROPERTIES
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QByteArray> list = obj->dynamicPropertyNames (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
virtual bool event ( QEvent * e )
*/
HB_FUNC_STATIC( QOBJECT_EVENT )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QEvent * par1 = (QEvent *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->event ( par1 ) );
  }
}


/*
virtual bool eventFilter ( QObject * watched, QEvent * event )
*/
HB_FUNC_STATIC( QOBJECT_EVENTFILTER )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    QEvent * par2 = (QEvent *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->eventFilter ( par1, par2 ) );
  }
}


/*
T findChild(const QString & name = QString(), Qt::FindChildOptions options = Qt::FindChildrenRecursively) const
*/
HB_FUNC_STATIC( QOBJECT_FINDCHILD )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) Qt::FindChildrenRecursively : hb_parni(2);
    QObject * ptr = obj->findChild<QObject *> ( par1,  (Qt::FindChildOptions) par2 );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}



/*
QList<T> findChildren(const QString &aName = QString(), Qt::FindChildOptions options = Qt::FindChildrenRecursively) const
*/
HB_FUNC_STATIC( QOBJECT_FINDCHILDREN1 )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) Qt::FindChildrenRecursively : hb_parni(2);
    QList<QObject *> list = obj->findChildren<QObject *> ( par1,  (Qt::FindChildOptions) par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QOBJECT" );
    #else
    pDynSym = hb_dynsymFindName( "QOBJECT" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QObject *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<T> findChildren(const QRegExp &re, Qt::FindChildOptions options = Qt::FindChildrenRecursively) const
*/
HB_FUNC_STATIC( QOBJECT_FINDCHILDREN2 )
{
#ifndef QT_NO_REGEXP
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegExp * par1 = (QRegExp *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::FindChildrenRecursively : hb_parni(2);
    QList<QObject *> list = obj->findChildren<QObject *> ( *par1,  (Qt::FindChildOptions) par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QOBJECT" );
    #else
    pDynSym = hb_dynsymFindName( "QOBJECT" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QObject *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}

/*
QList<T> findChildren(const QRegularExpression &re, Qt::FindChildOptions options = Qt::FindChildrenRecursively) const
*/
HB_FUNC_STATIC( QOBJECT_FINDCHILDREN3 )
{
#ifndef QT_NO_REGULAREXPRESSION
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegularExpression * par1 = (QRegularExpression *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::FindChildrenRecursively : hb_parni(2);
    QList<QObject *> list = obj->findChildren<QObject *> ( *par1,  (Qt::FindChildOptions) par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QOBJECT" );
    #else
    pDynSym = hb_dynsymFindName( "QOBJECT" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QObject *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


//[1]QList<T> findChildren(const QString &aName = QString(), Qt::FindChildOptions options = Qt::FindChildrenRecursively) const
//[2]QList<T> findChildren(const QRegExp &re, Qt::FindChildOptions options = Qt::FindChildrenRecursively) const
//[3]QList<T> findChildren(const QRegularExpression &re, Qt::FindChildOptions options = Qt::FindChildrenRecursively) const

HB_FUNC_STATIC( QOBJECT_FINDCHILDREN )
{
  if( ISBETWEEN(0,2) && (ISCHAR(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QOBJECT_FINDCHILDREN1 );
  }
  else if( ISBETWEEN(1,2) && ISQREGEXP(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QOBJECT_FINDCHILDREN2 );
  }
  else if( ISBETWEEN(1,2) && ISQREGULAREXPRESSION(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QOBJECT_FINDCHILDREN3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool inherits ( const char * className ) const
*/
HB_FUNC_STATIC( QOBJECT_INHERITS )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retl( obj->inherits (  (const char *) par1 ) );
  }
}


/*
void installEventFilter ( QObject * filterObj )
*/
HB_FUNC_STATIC( QOBJECT_INSTALLEVENTFILTER )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    obj->installEventFilter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isWidgetType () const
*/
HB_FUNC_STATIC( QOBJECT_ISWIDGETTYPE )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isWidgetType (  ) );
  }
}


/*
bool isWindowType() const
*/
HB_FUNC_STATIC( QOBJECT_ISWINDOWTYPE )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isWindowType (  ) );
  }
}


/*
void killTimer ( int id )
*/
HB_FUNC_STATIC( QOBJECT_KILLTIMER )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->killTimer ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual const QMetaObject * metaObject () const
*/
HB_FUNC_STATIC( QOBJECT_METAOBJECT )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMetaObject * ptr = obj->metaObject (  );
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
void moveToThread ( QThread * targetThread )
*/
HB_FUNC_STATIC( QOBJECT_MOVETOTHREAD )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QThread * par1 = (QThread *) _qtxhb_itemGetPtr(1);
    obj->moveToThread ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString objectName () const
*/
HB_FUNC_STATIC( QOBJECT_OBJECTNAME )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->objectName (  ).toLatin1().data() );
  }
}

/*
void setObjectName ( const QString & name )
*/
HB_FUNC_STATIC( QOBJECT_SETOBJECTNAME )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setObjectName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QObject * parent () const
*/
HB_FUNC_STATIC( QOBJECT_PARENT )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->parent (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}

/*
void setParent ( QObject * parent )
*/
HB_FUNC_STATIC( QOBJECT_SETPARENT )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    obj->setParent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant property ( const char * name ) const
*/
HB_FUNC_STATIC( QOBJECT_PROPERTY )
{
#ifndef QT_NO_PROPERTIES
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QVariant * ptr = new QVariant( obj->property (  (const char *) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
#endif
}

/*
bool setProperty ( const char * name, const QVariant & value )
*/
HB_FUNC_STATIC( QOBJECT_SETPROPERTY )
{
#ifndef QT_NO_PROPERTIES
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->setProperty (  (const char *) par1, *par2 ) );
  }
#endif
}


/*
void removeEventFilter ( QObject * obj )
*/
HB_FUNC_STATIC( QOBJECT_REMOVEEVENTFILTER )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    obj->removeEventFilter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool signalsBlocked () const
*/
HB_FUNC_STATIC( QOBJECT_SIGNALSBLOCKED )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->signalsBlocked (  ) );
  }
}


/*
int startTimer(int interval, Qt::TimerType timerType = Qt::CoarseTimer)
*/
HB_FUNC_STATIC( QOBJECT_STARTTIMER )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::CoarseTimer : hb_parni(2);
    hb_retni( obj->startTimer ( (int) hb_parni(1),  (Qt::TimerType) par2 ) );
  }
}


/*
QThread * thread () const
*/
HB_FUNC_STATIC( QOBJECT_THREAD )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QThread * ptr = obj->thread (  );
    _qt4xhb_createReturnClass ( ptr, "QTHREAD" );
  }
}


/*
void deleteLater ()
*/
HB_FUNC_STATIC( QOBJECT_DELETELATER )
{
  QObject * obj = (QObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->deleteLater (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QString tr ( const char * sourceText, const char * disambiguation = 0, int n = -1 )
*/
HB_FUNC_STATIC( QOBJECT_TR )
{
  const char * par1 = hb_parc(1);
  const char * par2 = ISNIL(2)? 0 : hb_parc(2);
  hb_retc( (const char *) QObject::tr (  (const char *) par1,  (const char *) par2, (int) ISNIL(3)? -1 : hb_parni(3) ).toLatin1().data() );
}






HB_FUNC_STATIC( QOBJECT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QOBJECT_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QOBJECT_NEWFROM );
}

HB_FUNC_STATIC( QOBJECT_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QOBJECT_NEWFROM );
}

HB_FUNC_STATIC( QOBJECT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QOBJECT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QOBJECT_DISCONNECTALL )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( hb_pcount() == 0 )
    {
      Events_disconnect_all_events (obj, false);
      Signals_disconnect_all_signals (obj, false);
    }
    else if( hb_pcount() == 1 && ISLOG(1) )
    {
      Events_disconnect_all_events (obj, (bool) hb_parl(1) );
      Signals_disconnect_all_signals (obj, (bool) hb_parl(1) );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QOBJECT_DISCONNECTALLEVENTS )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( hb_pcount() == 0 )
    {
      Events_disconnect_all_events (obj, false);
    }
    else if( hb_pcount() == 1 && ISLOG(1) )
    {
      Events_disconnect_all_events (obj, (bool) hb_parl(1) );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QOBJECT_DISCONNECTALLSIGNALS )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( hb_pcount() == 0 )
    {
      Signals_disconnect_all_signals (obj, false);
    }
    else if( hb_pcount() == 1 && ISLOG(1) )
    {
      Signals_disconnect_all_signals (obj, (bool) hb_parl(1) );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


void _qtxhb_processOnEventMethod (QEvent::Type event)
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    PHB_ITEM item = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
    if( item )
    {
      //hb_retl( Events_connect_event( obj, QEvent::Close, item ) );
      hb_retl( Events_connect_event( obj, event, item ) );
    }
    else
    {
      hb_retl(0);
    }
  }
  else if( hb_pcount() == 0 )
  {
    //hb_retl( Events_disconnect_event( obj, QEvent::Close ) );
    hb_retl( Events_disconnect_event( obj, event ) );
  }
  else
  {
    hb_retl(0);
  }
}
HB_FUNC_STATIC( QOBJECT_ONACCEPTDROPSCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::AcceptDropsChange );
}

HB_FUNC_STATIC( QOBJECT_ONACTIONADDEDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ActionAdded );
}

HB_FUNC_STATIC( QOBJECT_ONACTIONCHANGEDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ActionChanged );
}

HB_FUNC_STATIC( QOBJECT_ONACTIONREMOVEDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ActionRemoved );
}

HB_FUNC_STATIC( QOBJECT_ONACTIVATECONTROLEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ActivateControl );
}

HB_FUNC_STATIC( QOBJECT_ONACTIVATIONCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ActivationChange );
}

HB_FUNC_STATIC( QOBJECT_ONAPPLICATIONACTIVATEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ApplicationActivate );
}

HB_FUNC_STATIC( QOBJECT_ONAPPLICATIONACTIVATEDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ApplicationActivated );
}

HB_FUNC_STATIC( QOBJECT_ONAPPLICATIONDEACTIVATEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ApplicationDeactivate );
}

HB_FUNC_STATIC( QOBJECT_ONAPPLICATIONDEACTIVATEDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ApplicationDeactivated );
}

HB_FUNC_STATIC( QOBJECT_ONAPPLICATIONFONTCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ApplicationFontChange );
}

HB_FUNC_STATIC( QOBJECT_ONAPPLICATIONLAYOUTDIRECTIONCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ApplicationLayoutDirectionChange );
}

HB_FUNC_STATIC( QOBJECT_ONAPPLICATIONPALETTECHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ApplicationPaletteChange );
}

HB_FUNC_STATIC( QOBJECT_ONAPPLICATIONWINDOWICONCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ApplicationWindowIconChange );
}

HB_FUNC_STATIC( QOBJECT_ONCHILDADDEDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ChildAdded );
}

HB_FUNC_STATIC( QOBJECT_ONCHILDPOLISHEDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ChildPolished );
}

HB_FUNC_STATIC( QOBJECT_ONCHILDREMOVEDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ChildRemoved );
}

HB_FUNC_STATIC( QOBJECT_ONCLIPBOARDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Clipboard );
}

HB_FUNC_STATIC( QOBJECT_ONCLOSEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Close );
}

HB_FUNC_STATIC( QOBJECT_ONCLOSESOFTWAREINPUTPANELEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::CloseSoftwareInputPanel );
}

HB_FUNC_STATIC( QOBJECT_ONCONTENTSRECTCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ContentsRectChange );
}

HB_FUNC_STATIC( QOBJECT_ONCONTEXTMENUEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ContextMenu );
}

HB_FUNC_STATIC( QOBJECT_ONCREATEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Create );
}

HB_FUNC_STATIC( QOBJECT_ONCURSORCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::CursorChange );
}

HB_FUNC_STATIC( QOBJECT_ONDEACTIVATECONTROLEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::DeactivateControl );
}

HB_FUNC_STATIC( QOBJECT_ONDEFERREDDELETEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::DeferredDelete );
}

HB_FUNC_STATIC( QOBJECT_ONDESTROYEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Destroy );
}

HB_FUNC_STATIC( QOBJECT_ONDRAGENTEREVENT )
{
  _qtxhb_processOnEventMethod( QEvent::DragEnter );
}

HB_FUNC_STATIC( QOBJECT_ONDRAGLEAVEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::DragLeave );
}

HB_FUNC_STATIC( QOBJECT_ONDRAGMOVEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::DragMove );
}

HB_FUNC_STATIC( QOBJECT_ONDRAGRESPONSEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::DragResponse );
}

HB_FUNC_STATIC( QOBJECT_ONDROPEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Drop );
}

HB_FUNC_STATIC( QOBJECT_ONDYNAMICPROPERTYCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::DynamicPropertyChange );
}

HB_FUNC_STATIC( QOBJECT_ONEMBEDDINGCONTROLEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::EmbeddingControl );
}

HB_FUNC_STATIC( QOBJECT_ONENABLEDCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::EnabledChange );
}

HB_FUNC_STATIC( QOBJECT_ONENTEREVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Enter );
}

HB_FUNC_STATIC( QOBJECT_ONENTEREDITFOCUSEVENT )
{
#ifdef QT_KEYPAD_NAVIGATION
  _qtxhb_processOnEventMethod( QEvent::EnterEditFocus );
#endif
}

HB_FUNC_STATIC( QOBJECT_ONENTERWHATSTHISMODEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::EnterWhatsThisMode );
}

HB_FUNC_STATIC( QOBJECT_ONEXPOSEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Expose );
}

HB_FUNC_STATIC( QOBJECT_ONFILEOPENEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::FileOpen );
}

HB_FUNC_STATIC( QOBJECT_ONFOCUSABOUTTOCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::FocusAboutToChange );
}

HB_FUNC_STATIC( QOBJECT_ONFOCUSINEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::FocusIn );
}

HB_FUNC_STATIC( QOBJECT_ONFOCUSOUTEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::FocusOut );
}

HB_FUNC_STATIC( QOBJECT_ONFONTCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::FontChange );
}

HB_FUNC_STATIC( QOBJECT_ONFUTURECALLOUTEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::FutureCallOut );
}

HB_FUNC_STATIC( QOBJECT_ONGESTUREEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Gesture );
}

HB_FUNC_STATIC( QOBJECT_ONGESTUREOVERRIDEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GestureOverride );
}

HB_FUNC_STATIC( QOBJECT_ONGRABKEYBOARDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GrabKeyboard );
}

HB_FUNC_STATIC( QOBJECT_ONGRABMOUSEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GrabMouse );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENECONTEXTMENUEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneContextMenu );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENEDRAGENTEREVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneDragEnter );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENEDRAGLEAVEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneDragLeave );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENEDRAGMOVEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneDragMove );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENEDROPEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneDrop );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENEHELPEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneHelp );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENEHOVERENTEREVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneHoverEnter );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENEHOVERLEAVEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneHoverLeave );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENEHOVERMOVEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneHoverMove );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENEMOUSEDOUBLECLICKEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneMouseDoubleClick );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENEMOUSEMOVEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneMouseMove );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENEMOUSEPRESSEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneMousePress );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENEMOUSERELEASEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneMouseRelease );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENEMOVEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneMove );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENERESIZEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneResize );
}

HB_FUNC_STATIC( QOBJECT_ONGRAPHICSSCENEWHEELEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::GraphicsSceneWheel );
}

HB_FUNC_STATIC( QOBJECT_ONHELPREQUESTEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::HelpRequest );
}

HB_FUNC_STATIC( QOBJECT_ONHIDEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Hide );
}

HB_FUNC_STATIC( QOBJECT_ONHIDETOPARENTEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::HideToParent );
}

HB_FUNC_STATIC( QOBJECT_ONHOVERENTEREVENT )
{
  _qtxhb_processOnEventMethod( QEvent::HoverEnter );
}

HB_FUNC_STATIC( QOBJECT_ONHOVERLEAVEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::HoverLeave );
}

HB_FUNC_STATIC( QOBJECT_ONHOVERMOVEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::HoverMove );
}

HB_FUNC_STATIC( QOBJECT_ONICONDRAGEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::IconDrag );
}

HB_FUNC_STATIC( QOBJECT_ONICONTEXTCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::IconTextChange );
}

HB_FUNC_STATIC( QOBJECT_ONINPUTMETHODEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::InputMethod );
}

HB_FUNC_STATIC( QOBJECT_ONINPUTMETHODQUERYEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::InputMethodQuery );
}

HB_FUNC_STATIC( QOBJECT_ONKEYBOARDLAYOUTCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::KeyboardLayoutChange );
}

HB_FUNC_STATIC( QOBJECT_ONKEYPRESSEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::KeyPress );
}

HB_FUNC_STATIC( QOBJECT_ONKEYRELEASEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::KeyRelease );
}

HB_FUNC_STATIC( QOBJECT_ONLANGUAGECHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::LanguageChange );
}

HB_FUNC_STATIC( QOBJECT_ONLAYOUTDIRECTIONCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::LayoutDirectionChange );
}

HB_FUNC_STATIC( QOBJECT_ONLAYOUTREQUESTEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::LayoutRequest );
}

HB_FUNC_STATIC( QOBJECT_ONLEAVEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Leave );
}

HB_FUNC_STATIC( QOBJECT_ONLEAVEEDITFOCUSEVENT )
{
#ifdef QT_KEYPAD_NAVIGATION
  _qtxhb_processOnEventMethod( QEvent::LeaveEditFocus );
#endif
}

HB_FUNC_STATIC( QOBJECT_ONLEAVEWHATSTHISMODEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::LeaveWhatsThisMode );
}

HB_FUNC_STATIC( QOBJECT_ONLOCALECHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::LocaleChange );
}

HB_FUNC_STATIC( QOBJECT_ONMACGLCLEARDRAWABLEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::MacGLClearDrawable );
}

HB_FUNC_STATIC( QOBJECT_ONMACGLWINDOWCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::MacGLWindowChange );
}

HB_FUNC_STATIC( QOBJECT_ONMACSIZECHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::MacSizeChange );
}

HB_FUNC_STATIC( QOBJECT_ONMETACALLEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::MetaCall );
}

HB_FUNC_STATIC( QOBJECT_ONMODIFIEDCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ModifiedChange );
}

HB_FUNC_STATIC( QOBJECT_ONMOUSEBUTTONDBLCLICKEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::MouseButtonDblClick );
}

HB_FUNC_STATIC( QOBJECT_ONMOUSEBUTTONPRESSEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::MouseButtonPress );
}

HB_FUNC_STATIC( QOBJECT_ONMOUSEBUTTONRELEASEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::MouseButtonRelease );
}

HB_FUNC_STATIC( QOBJECT_ONMOUSEMOVEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::MouseMove );
}

HB_FUNC_STATIC( QOBJECT_ONMOUSETRACKINGCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::MouseTrackingChange );
}

HB_FUNC_STATIC( QOBJECT_ONMOVEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Move );
}

HB_FUNC_STATIC( QOBJECT_ONNATIVEGESTUREEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::NativeGesture );
}

HB_FUNC_STATIC( QOBJECT_ONNETWORKREPLYUPDATEDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::NetworkReplyUpdated );
}

HB_FUNC_STATIC( QOBJECT_ONNONCLIENTAREAMOUSEBUTTONDBLCLICKEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::NonClientAreaMouseButtonDblClick );
}

HB_FUNC_STATIC( QOBJECT_ONNONCLIENTAREAMOUSEBUTTONPRESSEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::NonClientAreaMouseButtonPress );
}

HB_FUNC_STATIC( QOBJECT_ONNONCLIENTAREAMOUSEBUTTONRELEASEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::NonClientAreaMouseButtonRelease );
}

HB_FUNC_STATIC( QOBJECT_ONNONCLIENTAREAMOUSEMOVEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::NonClientAreaMouseMove );
}

HB_FUNC_STATIC( QOBJECT_ONNONEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::None );
}

HB_FUNC_STATIC( QOBJECT_ONOKREQUESTEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::OkRequest );
}

HB_FUNC_STATIC( QOBJECT_ONORIENTATIONCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::OrientationChange );
}

HB_FUNC_STATIC( QOBJECT_ONPAINTEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Paint );
}

HB_FUNC_STATIC( QOBJECT_ONPALETTECHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::PaletteChange );
}

HB_FUNC_STATIC( QOBJECT_ONPARENTABOUTTOCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ParentAboutToChange );
}

HB_FUNC_STATIC( QOBJECT_ONPARENTCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ParentChange );
}

HB_FUNC_STATIC( QOBJECT_ONPLATFORMPANELEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::PlatformPanel );
}

HB_FUNC_STATIC( QOBJECT_ONPOLISHEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Polish );
}

HB_FUNC_STATIC( QOBJECT_ONPOLISHREQUESTEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::PolishRequest );
}

HB_FUNC_STATIC( QOBJECT_ONQUERYWHATSTHISEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::QueryWhatsThis );
}

HB_FUNC_STATIC( QOBJECT_ONQUITEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Quit );
}

HB_FUNC_STATIC( QOBJECT_ONREQUESTSOFTWAREINPUTPANELEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::RequestSoftwareInputPanel );
}

HB_FUNC_STATIC( QOBJECT_ONRESIZEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Resize );
}

HB_FUNC_STATIC( QOBJECT_ONSCROLLEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Scroll );
}

HB_FUNC_STATIC( QOBJECT_ONSCROLLPREPAREEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ScrollPrepare );
}

HB_FUNC_STATIC( QOBJECT_ONSHORTCUTEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Shortcut );
}

HB_FUNC_STATIC( QOBJECT_ONSHORTCUTOVERRIDEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ShortcutOverride );
}

HB_FUNC_STATIC( QOBJECT_ONSHOWEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Show );
}

HB_FUNC_STATIC( QOBJECT_ONSHOWTOPARENTEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ShowToParent );
}

HB_FUNC_STATIC( QOBJECT_ONSHOWWINDOWREQUESTEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ShowWindowRequest );
}

HB_FUNC_STATIC( QOBJECT_ONSOCKACTEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::SockAct );
}

HB_FUNC_STATIC( QOBJECT_ONSOCKCLOSEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::SockClose );
}

HB_FUNC_STATIC( QOBJECT_ONSPEECHEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Speech );
}

HB_FUNC_STATIC( QOBJECT_ONSTATEMACHINESIGNALEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::StateMachineSignal );
}

HB_FUNC_STATIC( QOBJECT_ONSTATEMACHINEWRAPPEDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::StateMachineWrapped );
}

HB_FUNC_STATIC( QOBJECT_ONSTATUSTIPEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::StatusTip );
}

HB_FUNC_STATIC( QOBJECT_ONSTYLEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Style );
}

HB_FUNC_STATIC( QOBJECT_ONSTYLEANIMATIONUPDATEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::StyleAnimationUpdate );
}

HB_FUNC_STATIC( QOBJECT_ONSTYLECHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::StyleChange );
}

HB_FUNC_STATIC( QOBJECT_ONTABLETENTERPROXIMITYEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::TabletEnterProximity );
}

HB_FUNC_STATIC( QOBJECT_ONTABLETLEAVEPROXIMITYEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::TabletLeaveProximity );
}

HB_FUNC_STATIC( QOBJECT_ONTABLETMOVEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::TabletMove );
}

HB_FUNC_STATIC( QOBJECT_ONTABLETPRESSEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::TabletPress );
}

HB_FUNC_STATIC( QOBJECT_ONTABLETRELEASEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::TabletRelease );
}

HB_FUNC_STATIC( QOBJECT_ONTHEMECHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ThemeChange );
}

HB_FUNC_STATIC( QOBJECT_ONTHREADCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ThreadChange );
}

HB_FUNC_STATIC( QOBJECT_ONTIMEREVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Timer );
}

HB_FUNC_STATIC( QOBJECT_ONTOOLBARCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ToolBarChange );
}

HB_FUNC_STATIC( QOBJECT_ONTOOLTIPEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ToolTip );
}

HB_FUNC_STATIC( QOBJECT_ONTOOLTIPCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ToolTipChange );
}

HB_FUNC_STATIC( QOBJECT_ONTOUCHBEGINEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::TouchBegin );
}

HB_FUNC_STATIC( QOBJECT_ONTOUCHCANCELEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::TouchCancel );
}

HB_FUNC_STATIC( QOBJECT_ONTOUCHENDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::TouchEnd );
}

HB_FUNC_STATIC( QOBJECT_ONTOUCHUPDATEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::TouchUpdate );
}

HB_FUNC_STATIC( QOBJECT_ONUNGRABKEYBOARDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::UngrabKeyboard );
}

HB_FUNC_STATIC( QOBJECT_ONUNGRABMOUSEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::UngrabMouse );
}

HB_FUNC_STATIC( QOBJECT_ONUPDATELATEREVENT )
{
  _qtxhb_processOnEventMethod( QEvent::UpdateLater );
}

HB_FUNC_STATIC( QOBJECT_ONUPDATEREQUESTEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::UpdateRequest );
}

HB_FUNC_STATIC( QOBJECT_ONWHATSTHISEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::WhatsThis );
}

HB_FUNC_STATIC( QOBJECT_ONWHATSTHISCLICKEDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::WhatsThisClicked );
}

HB_FUNC_STATIC( QOBJECT_ONWHEELEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::Wheel );
}

HB_FUNC_STATIC( QOBJECT_ONWINDOWACTIVATEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::WindowActivate );
}

HB_FUNC_STATIC( QOBJECT_ONWINDOWBLOCKEDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::WindowBlocked );
}

HB_FUNC_STATIC( QOBJECT_ONWINDOWDEACTIVATEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::WindowDeactivate );
}

HB_FUNC_STATIC( QOBJECT_ONWINDOWICONCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::WindowIconChange );
}

HB_FUNC_STATIC( QOBJECT_ONWINDOWSTATECHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::WindowStateChange );
}

HB_FUNC_STATIC( QOBJECT_ONWINDOWTITLECHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::WindowTitleChange );
}

HB_FUNC_STATIC( QOBJECT_ONWINDOWUNBLOCKEDEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::WindowUnblocked );
}

HB_FUNC_STATIC( QOBJECT_ONWINEVENTACTEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::WinEventAct );
}

HB_FUNC_STATIC( QOBJECT_ONWINIDCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::WinIdChange );
}

HB_FUNC_STATIC( QOBJECT_ONZEROTIMEREVENTEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ZeroTimerEvent );
}

HB_FUNC_STATIC( QOBJECT_ONZORDERCHANGEEVENT )
{
  _qtxhb_processOnEventMethod( QEvent::ZOrderChange );
}



#pragma ENDDUMP
