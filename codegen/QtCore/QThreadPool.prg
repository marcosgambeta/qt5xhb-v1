$header

#include "hbclass.ch"

CLASS QThreadPool INHERIT QObject

   METHOD new
   METHOD delete
   METHOD start
   METHOD tryStart
   METHOD expiryTimeout
   METHOD setExpiryTimeout
   METHOD maxThreadCount
   METHOD setMaxThreadCount
   METHOD activeThreadCount
   METHOD reserveThread
   METHOD releaseThread
   METHOD waitForDone
   METHOD clear
   METHOD globalInstance

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QThreadPool(QObject *parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void start(QRunnable *runnable, int priority = 0)
*/
$method=|void|start|QRunnable *,int=0

/*
bool tryStart(QRunnable *runnable)
*/
$method=|bool|tryStart|QRunnable *

/*
int expiryTimeout() const
*/
$method=|int|expiryTimeout|

/*
void setExpiryTimeout(int expiryTimeout)
*/
$method=|void|setExpiryTimeout|int

/*
int maxThreadCount() const
*/
$method=|int|maxThreadCount|

/*
void setMaxThreadCount(int maxThreadCount)
*/
$method=|void|setMaxThreadCount|int

/*
int activeThreadCount() const
*/
$method=|int|activeThreadCount|

/*
void reserveThread()
*/
$method=|void|reserveThread|

/*
void releaseThread()
*/
$method=|void|releaseThread|

/*
bool waitForDone(int msecs = -1)
*/
$method=|bool|waitForDone|int=-1

/*
void clear()
*/
$method=|void|clear|

/*
static QThreadPool *globalInstance()
*/
$staticMethod=|QThreadPool *|globalInstance|

#pragma ENDDUMP
