/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "events.h"

static Events * s_events = NULL;

/*
  constructor
*/
Events::Events(QObject * parent) : QObject(parent)
{
  m_list1 = new QVector<QObject*>(1000, NULL);             // armazena ponteiro do objeto
  m_list2 = new QVector<QEvent::Type>(1000, QEvent::None); // armazena tipo de evento
  m_list3 = new QVector<PHB_ITEM>(1000, NULL);             // armazena codeblock
  m_mutex = new QMutex();
  m_events = new QHash<QEvent::Type, QString>();

  m_events->insert(QEvent::ActionAdded,                      "QActionEvent");
  m_events->insert(QEvent::ActionChanged,                    "QActionEvent");
  m_events->insert(QEvent::ActionRemoved,                    "QActionEvent");
  m_events->insert(QEvent::ChildAdded,                       "QChildEvent");
  m_events->insert(QEvent::ChildPolished,                    "QChildEvent");
  m_events->insert(QEvent::ChildRemoved,                     "QChildEvent");
  m_events->insert(QEvent::Close,                            "QCloseEvent");
  m_events->insert(QEvent::ContextMenu,                      "QContextMenuEvent");
  m_events->insert(QEvent::DeferredDelete,                   "QDeferredDeleteEvent");
  m_events->insert(QEvent::DragEnter,                        "QDragEnterEvent");
  m_events->insert(QEvent::DragLeave,                        "QDragLeaveEvent");
  m_events->insert(QEvent::DragMove,                         "QDragMoveEvent");
  m_events->insert(QEvent::Drop,                             "QDropEvent");
  m_events->insert(QEvent::Enter,                            "QEnterEvent");
  m_events->insert(QEvent::FileOpen,                         "QFileOpenEvent");
  m_events->insert(QEvent::FocusIn,                          "QFocusEvent");
  m_events->insert(QEvent::FocusOut,                         "QFocusEvent");
  m_events->insert(QEvent::FocusAboutToChange,               "QFocusEvent");
  m_events->insert(QEvent::Gesture,                          "QGestureEvent");
  m_events->insert(QEvent::GestureOverride,                  "QGestureEvent");
  m_events->insert(QEvent::GraphicsSceneContextMenu,         "QGraphicsSceneContextMenuEvent");
  m_events->insert(QEvent::GraphicsSceneDragEnter,           "QGraphicsSceneDragDropEvent");
  m_events->insert(QEvent::GraphicsSceneDragLeave,           "QGraphicsSceneDragDropEvent");
  m_events->insert(QEvent::GraphicsSceneDragMove,            "QGraphicsSceneDragDropEvent");
  m_events->insert(QEvent::GraphicsSceneDrop,                "QGraphicsSceneDragDropEvent");
  m_events->insert(QEvent::GraphicsSceneHelp,                "QHelpEvent");
  m_events->insert(QEvent::GraphicsSceneHoverEnter,          "QGraphicsSceneHoverEvent");
  m_events->insert(QEvent::GraphicsSceneHoverLeave,          "QGraphicsSceneHoverEvent");
  m_events->insert(QEvent::GraphicsSceneHoverMove,           "QGraphicsSceneHoverEvent");
  m_events->insert(QEvent::GraphicsSceneMouseDoubleClick,    "QGraphicsSceneMouseEvent");
  m_events->insert(QEvent::GraphicsSceneMouseMove,           "QGraphicsSceneMouseEvent");
  m_events->insert(QEvent::GraphicsSceneMousePress,          "QGraphicsSceneMouseEvent");
  m_events->insert(QEvent::GraphicsSceneMouseRelease,        "QGraphicsSceneMouseEvent");
  m_events->insert(QEvent::GraphicsSceneMove,                "QGraphicsSceneMoveEvent");
  m_events->insert(QEvent::GraphicsSceneResize,              "QGraphicsSceneResizeEvent");
  m_events->insert(QEvent::GraphicsSceneWheel,               "QGraphicsSceneWheelEvent");
  m_events->insert(QEvent::Hide,                             "QHideEvent");
  m_events->insert(QEvent::HoverEnter,                       "QHoverEvent");
  m_events->insert(QEvent::HoverLeave,                       "QHoverEvent");
  m_events->insert(QEvent::HoverMove,                        "QHoverEvent");
  m_events->insert(QEvent::IconDrag,                         "QIconDragEvent");
  m_events->insert(QEvent::InputMethod,                      "QInputMethodEvent");
  m_events->insert(QEvent::InputMethodQuery,                 "QInputMethodQueryEvent");
  m_events->insert(QEvent::KeyPress,                         "QKeyEvent");
  m_events->insert(QEvent::KeyRelease,                       "QKeyEvent");
  m_events->insert(QEvent::NonClientAreaMouseButtonDblClick, "QMouseEvent");
  m_events->insert(QEvent::NonClientAreaMouseButtonPress,    "QMouseEvent");
  m_events->insert(QEvent::NonClientAreaMouseButtonRelease,  "QMouseEvent");
  m_events->insert(QEvent::NonClientAreaMouseMove,           "QMouseEvent");
  m_events->insert(QEvent::MouseButtonDblClick,              "QMouseEvent");
  m_events->insert(QEvent::MouseButtonPress,                 "QMouseEvent");
  m_events->insert(QEvent::MouseButtonRelease,               "QMouseEvent");
  m_events->insert(QEvent::MouseMove,                        "QMouseEvent");
  m_events->insert(QEvent::Move,                             "QMoveEvent");
  m_events->insert(QEvent::NativeGesture,                    "QNativeGestureEvent");
  m_events->insert(QEvent::OrientationChange,                "QScreenOrientationChangeEvent");
  m_events->insert(QEvent::Paint,                            "QPaintEvent");
  m_events->insert(QEvent::PlatformSurface,                  "QPlatformSurfaceEvent");
  m_events->insert(QEvent::QueryWhatsThis,                   "QHelpEvent");
  m_events->insert(QEvent::Resize,                           "QResizeEvent");
  m_events->insert(QEvent::ScrollPrepare,                    "QScrollPrepareEvent");
  m_events->insert(QEvent::Scroll,                           "QScrollEvent");
  m_events->insert(QEvent::Shortcut,                         "QShortcutEvent");
  m_events->insert(QEvent::ShortcutOverride,                 "QKeyEvent");
  m_events->insert(QEvent::Show,                             "QShowEvent");
#if 0
  m_events->insert(QEvent::StateMachineSignal,               "QStateMachine::SignalEvent");
  m_events->insert(QEvent::StateMachineWrapped,              "QStateMachine::WrappedEvent");
#endif
  m_events->insert(QEvent::StatusTip,                        "QStatusTipEvent");
  m_events->insert(QEvent::TabletMove,                       "QTabletEvent");
  m_events->insert(QEvent::TabletPress,                      "QTabletEvent");
  m_events->insert(QEvent::TabletRelease,                    "QTabletEvent");
  m_events->insert(QEvent::TabletEnterProximity,             "QTabletEvent");
  m_events->insert(QEvent::TabletLeaveProximity,             "QTabletEvent");
  m_events->insert(QEvent::Timer,                            "QTimerEvent");
  m_events->insert(QEvent::ToolTip,                          "QHelpEvent");
  m_events->insert(QEvent::TouchBegin,                       "QTouchEvent");
  m_events->insert(QEvent::TouchCancel,                      "QTouchEvent");
  m_events->insert(QEvent::TouchEnd,                         "QTouchEvent");
  m_events->insert(QEvent::TouchUpdate,                      "QTouchEvent");
  m_events->insert(QEvent::WhatsThis,                        "QHelpEvent");
  m_events->insert(QEvent::Wheel,                            "QWheelEvent");
  m_events->insert(QEvent::WindowStateChange,                "QWindowStateChangeEvent");
}

/*
  destructor
*/
Events::~Events()
{
  // libera todos os codeblocks ativos
  const int listsize = m_list1->size();
  for( int i = 0; i < listsize; ++i )
  {
    if( m_list1->at(i) != NULL )
    {
      hb_itemRelease(m_list3->at(i));
    }
  }

  delete m_list1;
  delete m_list2;
  delete m_list3;
  delete m_mutex;
  delete m_events;
}

/*
  filtro de eventos
*/
bool Events::eventFilter(QObject * obj, QEvent * event)
{
  QEvent::Type eventtype = event->type();
  int found = -1;

  // procura evento na lista
  const int listsize = m_list1->size();
  for( int i = 0; i < listsize; ++i )
  {
    if( (m_list1->at(i) == obj) && (m_list2->at(i) == eventtype) )
    {
      found = i;
      break;
    }
  }

  // se não encontrado na lista, propaga o evento
  if( found == -1 )
  {
    return false;
  }

  // executa bloco de código/função
  //PHB_ITEM pObject = hb_itemPutPtr( NULL, (QObject *) obj );
  PHB_ITEM pObject = returnQObject(obj, "QOBJECT");
  //PHB_ITEM pEvent = hb_itemPutPtr( NULL, (QEvent *) event );
  PHB_ITEM pEvent = returnObject(event, "QEVENT");

  bool ret = hb_itemGetL(hb_vmEvalBlockV(m_list3->at(found), 2, pObject, pEvent));

  hb_itemRelease(pObject);
  hb_itemRelease(pEvent);

  // retorna resultado
  // .t.: interrompe processamento do evento
  // .f.: continua processamento do evento
  return ret;
}

/*
  Conecta um determinado evento com um objeto
  Parâmetro 1: ponteiro para o objeto
  Parâmetro 2: id do evento
  Parâmetro 3: codeblock
  Retorna .t. se a conexão foi bem sucedida ou .f. se falhou
  Função de uso interno, não deve ser usada nas aplicações do usuário
*/

bool Events::connectEvent(QObject * object, int type, PHB_ITEM codeblock)
{
  // instala eventfilter, se não houver nenhum evento
  if( !m_list1->contains(object) )
  {
    object->installEventFilter(this);
  }

  m_mutex->lock();

  // verifica se já está na lista
  int found = -1;

  const int listsize = m_list1->size();
  for( int i = 0; i < listsize; ++i )
  {
    if( (m_list1->at(i) == object) && (m_list2->at(i) == static_cast<QEvent::Type>(type)) )
    {
      found = i;
      hb_itemRelease(codeblock);
      break;
    }
  }

  bool ret = false;

  // se nao encontrado na lista, adiciona
  if( found == -1 )
  {
    // procura por posição livre
    int i = m_list1->indexOf(NULL);

    if( i == -1 ) // nao encontrou posicao livre
    {
      // adiciona evento na lista de eventos
      m_list1->append(object);
      m_list2->append(static_cast<QEvent::Type>(type));
      m_list3->append(codeblock);
    }
    else // encontrou posicao livre
    {
      // coloca na posição livre
      m_list1->replace(i, object);
      m_list2->replace(i, static_cast<QEvent::Type>(type));
      m_list3->replace(i, codeblock);
    }

    ret = true;
  }

  m_mutex->unlock();

  // retorna o resultado da operação
  //hb_retl( ret );
  return ret;
}

/*
  Desconecta um determinado evento
  Parâmetro 1: ponteiro para o objeto
  Parâmetro 2: id do evento
  Retorna .t. se a desconexão foi bem sucedida ou .f. se falhou
  Função de uso interno, não deve ser usada nas aplicações do usuário
*/

bool Events::disconnectEvent(QObject * object, int type)
{
  bool ret = false;

  // remove evento da lista de eventos
  const int listsize = m_list1->size();
  for( int i = 0; i < listsize; ++i )
  {
    if( (m_list1->at(i) == object) && (m_list2->at(i) == static_cast<QEvent::Type>(type)) )
    {
      hb_itemRelease(m_list3->at(i));
      m_list1->replace(i, NULL);
      m_list2->replace(i, QEvent::None);
      m_list3->replace(i, NULL);
      ret = true;
    }
  }

  // desinstala eventfilter, se não houver mais nenhum evento
  if( !m_list1->contains(object) )
  {
    object->removeEventFilter(this);
  }

  // retorna o resultado da operação
  //hb_retl( ret );
  return ret;
}

/*
  Libera todos os codeblocks relacionados com eventos do objeto 'obj',
  incluindo os eventos ligados aos filhos, netos, bisnetos, etc... (se children = true).
*/

void Events::disconnectAllEvents(QObject * obj, bool children)
{
  if( !children )
  {
    // percorre toda a lista de eventos
    const int listsize = m_list1->size();
    for( int i = 0; i < listsize; ++i )
    {
      // elimina eventos ativos (true) ligados ao objeto (obj)
      if( m_list1->at(i) == obj )
      {
        hb_itemRelease(m_list3->at(i));
        m_list1->replace(i, NULL);
        m_list2->replace(i, QEvent::None);
        m_list3->replace(i, NULL);
      }
    }
    // desinstala eventfilter do objeto 'obj'
    if( !m_list1->contains(obj) )
    {
      obj->removeEventFilter(this);
    }
  }
  else
  {
    // obtém a lista de filhos, netos, bisnetos, etc...
    QList<QObject*> list = obj->findChildren<QObject*>();
    // adiciona o pai na lista
    list << obj;
    // percorre toda a lista de objetos
    const int listsize = list.size();
    for( int i = 0; i < listsize; ++i )
    {
      // percorre toda a lista de eventos
      const int listsize2 = m_list1->size();
      for( int ii = 0; ii < listsize2; ++ii )
      {
        // elimina eventos ativos (true) ligados ao objeto list.at(i)
        if( m_list1->at(ii) == list.at(i) )
        {
          hb_itemRelease(m_list3->at(ii));
          m_list1->replace(ii, NULL);
          m_list2->replace(ii, QEvent::None);
          m_list3->replace(ii, NULL);
        }
      }
      // desinstala eventfilter do objeto 'list.at(i)'
      if( !m_list1->contains(list.at(i)) )
      {
        list.at(i)->removeEventFilter(this);
      }
    }
  }
}

PHB_ITEM Events::returnObject(QEvent * event, const char * classname)
{
  QString eventname = m_events->value(event->type(), "QEvent");

  PHB_DYNS pDynSym = hb_dynsymFindName(eventname.toUpper().toLatin1().data());

  if( pDynSym == NULL )
  {
    pDynSym = hb_dynsymFindName(classname);
  }

  PHB_ITEM pObject = hb_itemNew(NULL);

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, event);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS);
  }

  return pObject;
}

PHB_ITEM Events::returnQObject(QObject * ptr, const char * classname)
{
  PHB_DYNS pDynSym = NULL;

  if( ptr != NULL )
  {
    pDynSym = hb_dynsymFindName(ptr->metaObject()->className());
  }

  if( pDynSym == NULL )
  {
    pDynSym = hb_dynsymFindName(classname);
  }

  PHB_ITEM pObject = hb_itemNew(NULL);

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, ptr);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS);
  }

  return pObject;
}

int Events::size()
{
  return m_list1->size();
}

int Events::active()
{
  int count = 0;

  // percorre toda a lista de eventos
  const int listsize = m_list1->size();
  for( int i = 0; i < listsize; ++i )
  {
    if( m_list1->at(i) != NULL )
    {
      ++count;
    }
  }

  return count;
}

namespace Qt5xHb
{
  bool Events_connect_event(QObject * object, int type, PHB_ITEM codeblock)
  {
    return s_events->connectEvent(object, type, codeblock);
  }

  bool Events_disconnect_event(QObject * object, int type)
  {
    return s_events->disconnectEvent(object, type);
  }

  void Events_disconnect_all_events(QObject * obj, bool children)
  {
    s_events->disconnectAllEvents(obj, children);
  }

  PHB_ITEM Events_return_object(QEvent * ptr, const char * classname)
  {
    return s_events->returnObject(ptr, classname);
  }

  PHB_ITEM Events_return_qobject(QObject * ptr, const char * classname)
  {
    return s_events->returnQObject(ptr, classname);
  }
}

/*
  Retorna o tamanho da lista de eventos.
  Atenção: está função não faz parte da API pública, podendo
  ser removida ou sofrer modificações futuramente.
*/

HB_FUNC( QTXHB_EVENTS_SIZE )
{
  hb_retni(s_events->size());
}

/*
  Retorna o número de eventos ativos na lista de eventos.
  Atenção: está função não faz parte da API pública, podendo
  ser removida ou sofrer modificações futuramente.
*/

HB_FUNC( QTXHB_EVENTS_ACTIVE )
{
  hb_retni(s_events->active());
}

HB_FUNC( QTXHB_EVENTS_SIZE_ACTIVE ) // deprecated
{
  hb_retni(s_events->active());
}

#include <hbvm.h>
#include <hbinit.h>

static void qt5xhb_events_init(void * cargo)
{
  HB_SYMBOL_UNUSED(cargo);

  if( s_events == NULL )
  {
    s_events = new Events();
  }
}

static void qt5xhb_events_exit(void * cargo)
{
  HB_SYMBOL_UNUSED(cargo);

  delete s_events;
}

HB_CALL_ON_STARTUP_BEGIN(_qt5xhb_events_init_)
  hb_vmAtInit(qt5xhb_events_init, NULL);
  hb_vmAtExit(qt5xhb_events_exit, NULL);
HB_CALL_ON_STARTUP_END(_qt5xhb_events_init_)

#if defined(HB_PRAGMA_STARTUP)
  #pragma startup _qt5xhb_events_init_
#elif defined(HB_DATASEG_STARTUP)
  #define HB_DATASEG_BODY HB_DATASEG_FUNC(_qt5xhb_events_init_)
  #include <hbiniseg.h>
#endif
