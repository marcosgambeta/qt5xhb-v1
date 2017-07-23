$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTEVENTDISPATCHER
#endif

CLASS QThread INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD eventDispatcher
   METHOD exit
   METHOD isFinished
   METHOD isRunning
   METHOD priority
   METHOD setEventDispatcher
   METHOD setPriority
   METHOD setStackSize
   METHOD stackSize
   METHOD event
   METHOD quit
   METHOD start
   METHOD terminate
   METHOD currentThread
   METHOD idealThreadCount
   METHOD msleep
   METHOD sleep
   METHOD usleep
   METHOD yieldCurrentThread

   METHOD onFinished
   METHOD onStarted

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QThread(QObject * parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QAbstractEventDispatcher * eventDispatcher() const
*/
$method=|QAbstractEventDispatcher *|eventDispatcher|

/*
void exit(int returnCode = 0)
*/
$method=|void|exit|int=0

/*
bool isFinished() const
*/
$method=|bool|isFinished|

/*
bool isRunning() const
*/
$method=|bool|isRunning|

/*
Priority priority() const
*/
$method=|QThread::Priority|priority|

/*
void setEventDispatcher(QAbstractEventDispatcher * eventDispatcher)
*/
$method=|void|setEventDispatcher|QAbstractEventDispatcher *

/*
void setPriority(Priority priority)
*/
$method=|void|setPriority|QThread::Priority

/*
void setStackSize(uint stackSize)
*/
$method=|void|setStackSize|uint

/*
uint stackSize() const
*/
$method=|uint|stackSize|

/*
virtual bool event(QEvent * event)
*/
$method=|bool|event|QEvent *

/*
void quit()
*/
$method=|void|quit|

/*
void start(Priority priority = InheritPriority)
*/
$method=|void|start|QThread::Priority=QThread::InheritPriority

/*
void terminate()
*/
$method=|void|terminate|

/*
static QThread * currentThread()
*/
$staticMethod=|QThread *|currentThread|

/*
static int idealThreadCount()
*/
$staticMethod=|int|idealThreadCount|

/*
static void msleep(unsigned long msecs)
*/
$staticMethod=|void|msleep|unsigned long

/*
static void sleep(unsigned long secs)
*/
$staticMethod=|void|sleep|unsigned long

/*
static void usleep(unsigned long usecs)
*/
$staticMethod=|void|usleep|unsigned long

/*
static void yieldCurrentThread()
*/
$staticMethod=|void|yieldCurrentThread|

#pragma ENDDUMP
