$header

#include "hbclass.ch"

CLASS QThreadPool INHERIT QObject

   DATA self_destruction INIT .F.

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
HB_FUNC_STATIC( QTHREADPOOL_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QThreadPool * o = new QThreadPool ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

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
HB_FUNC_STATIC( QTHREADPOOL_GLOBALINSTANCE )
{
  QThreadPool * ptr = QThreadPool::globalInstance ();
  _qt5xhb_createReturnClass ( ptr, "QTHREADPOOL" );
}

#pragma ENDDUMP
