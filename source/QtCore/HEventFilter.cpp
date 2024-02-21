/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "HEventFilter.hpp"

HEventFilter::HEventFilter(QObject *parent) : QObject(parent)
{
  m_eventFilterBlock = NULL;
  m_events = new QHash<QEvent::Type, QString>();
  m_events->insert(QEvent::ActionAdded, "QActionEvent");
  m_events->insert(QEvent::ActionChanged, "QActionEvent");
  m_events->insert(QEvent::ActionRemoved, "QActionEvent");
  m_events->insert(QEvent::ChildAdded, "QChildEvent");
  m_events->insert(QEvent::ChildPolished, "QChildEvent");
  m_events->insert(QEvent::ChildRemoved, "QChildEvent");
  m_events->insert(QEvent::Close, "QCloseEvent");
  m_events->insert(QEvent::ContextMenu, "QContextMenuEvent");
  m_events->insert(QEvent::DeferredDelete, "QDeferredDeleteEvent");
  m_events->insert(QEvent::DragEnter, "QDragEnterEvent");
  m_events->insert(QEvent::DragLeave, "QDragLeaveEvent");
  m_events->insert(QEvent::DragMove, "QDragMoveEvent");
  m_events->insert(QEvent::Drop, "QDropEvent");
  m_events->insert(QEvent::Enter, "QEnterEvent");
  m_events->insert(QEvent::FileOpen, "QFileOpenEvent");
  m_events->insert(QEvent::FocusIn, "QFocusEvent");
  m_events->insert(QEvent::FocusOut, "QFocusEvent");
  m_events->insert(QEvent::FocusAboutToChange, "QFocusEvent");
  m_events->insert(QEvent::Gesture, "QGestureEvent");
  m_events->insert(QEvent::GestureOverride, "QGestureEvent");
  m_events->insert(QEvent::GraphicsSceneContextMenu, "QGraphicsSceneContextMenuEvent");
  m_events->insert(QEvent::GraphicsSceneDragEnter, "QGraphicsSceneDragDropEvent");
  m_events->insert(QEvent::GraphicsSceneDragLeave, "QGraphicsSceneDragDropEvent");
  m_events->insert(QEvent::GraphicsSceneDragMove, "QGraphicsSceneDragDropEvent");
  m_events->insert(QEvent::GraphicsSceneDrop, "QGraphicsSceneDragDropEvent");
  m_events->insert(QEvent::GraphicsSceneHelp, "QHelpEvent");
  m_events->insert(QEvent::GraphicsSceneHoverEnter, "QGraphicsSceneHoverEvent");
  m_events->insert(QEvent::GraphicsSceneHoverLeave, "QGraphicsSceneHoverEvent");
  m_events->insert(QEvent::GraphicsSceneHoverMove, "QGraphicsSceneHoverEvent");
  m_events->insert(QEvent::GraphicsSceneMouseDoubleClick, "QGraphicsSceneMouseEvent");
  m_events->insert(QEvent::GraphicsSceneMouseMove, "QGraphicsSceneMouseEvent");
  m_events->insert(QEvent::GraphicsSceneMousePress, "QGraphicsSceneMouseEvent");
  m_events->insert(QEvent::GraphicsSceneMouseRelease, "QGraphicsSceneMouseEvent");
  m_events->insert(QEvent::GraphicsSceneMove, "QGraphicsSceneMoveEvent");
  m_events->insert(QEvent::GraphicsSceneResize, "QGraphicsSceneResizeEvent");
  m_events->insert(QEvent::GraphicsSceneWheel, "QGraphicsSceneWheelEvent");
  m_events->insert(QEvent::Hide, "QHideEvent");
  m_events->insert(QEvent::HoverEnter, "QHoverEvent");
  m_events->insert(QEvent::HoverLeave, "QHoverEvent");
  m_events->insert(QEvent::HoverMove, "QHoverEvent");
  m_events->insert(QEvent::IconDrag, "QIconDragEvent");
  m_events->insert(QEvent::InputMethod, "QInputMethodEvent");
  m_events->insert(QEvent::InputMethodQuery, "QInputMethodQueryEvent");
  m_events->insert(QEvent::KeyPress, "QKeyEvent");
  m_events->insert(QEvent::KeyRelease, "QKeyEvent");
  m_events->insert(QEvent::NonClientAreaMouseButtonDblClick, "QMouseEvent");
  m_events->insert(QEvent::NonClientAreaMouseButtonPress, "QMouseEvent");
  m_events->insert(QEvent::NonClientAreaMouseButtonRelease, "QMouseEvent");
  m_events->insert(QEvent::NonClientAreaMouseMove, "QMouseEvent");
  m_events->insert(QEvent::MouseButtonDblClick, "QMouseEvent");
  m_events->insert(QEvent::MouseButtonPress, "QMouseEvent");
  m_events->insert(QEvent::MouseButtonRelease, "QMouseEvent");
  m_events->insert(QEvent::MouseMove, "QMouseEvent");
  m_events->insert(QEvent::Move, "QMoveEvent");
  m_events->insert(QEvent::NativeGesture, "QNativeGestureEvent");
  m_events->insert(QEvent::OrientationChange, "QScreenOrientationChangeEvent");
  m_events->insert(QEvent::Paint, "QPaintEvent");
  m_events->insert(QEvent::PlatformSurface, "QPlatformSurfaceEvent");
  m_events->insert(QEvent::QueryWhatsThis, "QHelpEvent");
  m_events->insert(QEvent::Resize, "QResizeEvent");
  m_events->insert(QEvent::ScrollPrepare, "QScrollPrepareEvent");
  m_events->insert(QEvent::Scroll, "QScrollEvent");
  m_events->insert(QEvent::Shortcut, "QShortcutEvent");
  m_events->insert(QEvent::ShortcutOverride, "QKeyEvent");
  m_events->insert(QEvent::Show, "QShowEvent");
  // m_events->insert( QEvent::StateMachineSignal, "QStateMachine::SignalEvent" );
  // m_events->insert( QEvent::StateMachineWrapped, "QStateMachine::WrappedEvent" );
  m_events->insert(QEvent::StatusTip, "QStatusTipEvent");
  m_events->insert(QEvent::TabletMove, "QTabletEvent");
  m_events->insert(QEvent::TabletPress, "QTabletEvent");
  m_events->insert(QEvent::TabletRelease, "QTabletEvent");
  m_events->insert(QEvent::TabletEnterProximity, "QTabletEvent");
  m_events->insert(QEvent::TabletLeaveProximity, "QTabletEvent");
  m_events->insert(QEvent::Timer, "QTimerEvent");
  m_events->insert(QEvent::ToolTip, "QHelpEvent");
  m_events->insert(QEvent::TouchBegin, "QTouchEvent");
  m_events->insert(QEvent::TouchCancel, "QTouchEvent");
  m_events->insert(QEvent::TouchEnd, "QTouchEvent");
  m_events->insert(QEvent::TouchUpdate, "QTouchEvent");
  m_events->insert(QEvent::WhatsThis, "QHelpEvent");
  m_events->insert(QEvent::Wheel, "QWheelEvent");
  m_events->insert(QEvent::WindowStateChange, "QWindowStateChangeEvent");
}

HEventFilter::~HEventFilter()
{
  if (m_eventFilterBlock != NULL)
  {
    hb_itemRelease(m_eventFilterBlock);
    m_eventFilterBlock = NULL;
  }

  delete m_events;
}

bool HEventFilter::eventFilter(QObject *object, QEvent *event)
{
  bool result = false;

  if (m_eventFilterBlock != NULL)
  {
    PHB_ITEM pObject = returnQObject(object, "QOBJECT");
    PHB_ITEM pEvent = returnQEvent(event, "QEVENT");

    result = hb_itemGetL(hb_vmEvalBlockV(m_eventFilterBlock, 2, pObject, pEvent));

    hb_itemRelease(pObject);
    hb_itemRelease(pEvent);
  }

  return result;
}

void HEventFilter::setEventFilterCB(PHB_ITEM block)
{
  if (m_eventFilterBlock != NULL)
  {
    hb_itemRelease(m_eventFilterBlock);
  }
  if (block != NULL)
  {
    m_eventFilterBlock = hb_itemNew(block);
  }
}

PHB_ITEM HEventFilter::returnQEvent(QEvent *event, const char *classname)
{
  QString eventname = m_events->value(event->type(), "QEvent");

  PHB_DYNS pDynSym = NULL;

  pDynSym = hb_dynsymFindName((const char *)eventname.toUpper().toLatin1().data());

  if (pDynSym == NULL)
  {
    pDynSym = hb_dynsymFindName(classname);
  }

  PHB_ITEM pObject = hb_itemNew(NULL);

  if (pDynSym != NULL)
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemNew(NULL);
    hb_itemPutPtr(pItem, (QEvent *)event);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS);
  }

  return pObject;
}

PHB_ITEM HEventFilter::returnQObject(QObject *object, const char *classname)
{
  PHB_DYNS pDynSym = NULL;

  if (object != NULL)
  {
    pDynSym = hb_dynsymFindName((const char *)object->metaObject()->className());
  }

  if (pDynSym == NULL)
  {
    pDynSym = hb_dynsymFindName(classname);
  }

  PHB_ITEM pObject = hb_itemNew(NULL);

  if (pDynSym != NULL)
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemNew(NULL);
    hb_itemPutPtr(pItem, (void *)object);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS);
  }

  return pObject;
}
