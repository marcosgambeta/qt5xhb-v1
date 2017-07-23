$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
#endif

CLASS QStateMachine INHERIT QState

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addState
   METHOD removeState
   METHOD error
   METHOD errorString
   METHOD clearError
   METHOD isRunning
   METHOD isAnimated
   METHOD setAnimated
   METHOD addDefaultAnimation
   METHOD defaultAnimations
   METHOD removeDefaultAnimation
   METHOD globalRestorePolicy
   METHOD setGlobalRestorePolicy
   METHOD postEvent
   METHOD postDelayedEvent
   METHOD cancelDelayedEvent
   METHOD eventFilter
   METHOD start
   METHOD stop

   METHOD onStarted
   METHOD onStopped

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QStateMachine(QObject *parent = 0)
*/
$internalConstructor=|new1|QObject *=0

/*
QStateMachine(QState::ChildMode childMode, QObject *parent = 0)
*/
$internalConstructor=|new2|QState::ChildMode,QObject *=0

//[1]QStateMachine(QObject *parent = 0)
//[2]QStateMachine(QState::ChildMode childMode, QObject *parent = 0)

HB_FUNC_STATIC( QSTATEMACHINE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QStateMachine_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    QStateMachine_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addState(QAbstractState *state)
*/
$method=|void|addState|QAbstractState *

/*
void removeState(QAbstractState *state)
*/
$method=|void|removeState|QAbstractState *

/*
Error error() const
*/
$method=|QStateMachine::Error|error|

/*
QString errorString() const
*/
$method=|QString|errorString|

/*
void clearError()
*/
$method=|void|clearError|

/*
bool isRunning() const
*/
$method=|bool|isRunning|

/*
bool isAnimated() const
*/
$method=|bool|isAnimated|

/*
void setAnimated(bool enabled)
*/
$method=|void|setAnimated|bool

/*
void addDefaultAnimation(QAbstractAnimation *animation)
*/
$method=|void|addDefaultAnimation|QAbstractAnimation *

/*
QList<QAbstractAnimation *> defaultAnimations() const
*/
HB_FUNC_STATIC( QSTATEMACHINE_DEFAULTANIMATIONS )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QAbstractAnimation *> list = obj->defaultAnimations ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QABSTRACTANIMATION" );
    #else
    pDynSym = hb_dynsymFindName( "QABSTRACTANIMATION" );
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
        hb_itemPutPtr( pItem, (QAbstractAnimation *) list[i] );
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
void removeDefaultAnimation(QAbstractAnimation *animation)
*/
$method=|void|removeDefaultAnimation|QAbstractAnimation *

/*
QState::RestorePolicy globalRestorePolicy() const
*/
$method=|QState::RestorePolicy|globalRestorePolicy|

/*
void setGlobalRestorePolicy(QState::RestorePolicy restorePolicy)
*/
$method=|void|setGlobalRestorePolicy|QState::RestorePolicy

/*
void postEvent(QEvent *event, EventPriority priority = NormalPriority)
*/
$method=|void|postEvent|QEvent *,QStateMachine::EventPriority=QStateMachine::NormalPriority

/*
int postDelayedEvent(QEvent *event, int delay)
*/
$method=|int|postDelayedEvent|QEvent *,int

/*
bool cancelDelayedEvent(int id)
*/
$method=|bool|cancelDelayedEvent|int

/*
bool eventFilter(QObject *watched, QEvent *event)
*/
$method=|bool|eventFilter|QObject *,QEvent *

/*
void start()
*/
$method=|void|start|

/*
void stop()
*/
$method=|void|stop|

#pragma ENDDUMP
