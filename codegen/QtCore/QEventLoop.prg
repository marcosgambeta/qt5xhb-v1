$header

#include "hbclass.ch"

CLASS QEventLoop INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD exec
   METHOD exit
   METHOD isRunning
   METHOD processEvents
   METHOD wakeUp
   METHOD quit

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QEventLoop ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QEVENTLOOP_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QEventLoop * o = new QEventLoop ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int exec ( ProcessEventsFlags flags = AllEvents )
*/
HB_FUNC_STATIC( QEVENTLOOP_EXEC )
{
  QEventLoop * obj = (QEventLoop *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QEventLoop::AllEvents : hb_parni(1);
      RINT( obj->exec ( (QEventLoop::ProcessEventsFlags) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void exit ( int returnCode = 0 )
*/
$method=|void|exit|int=0

/*
bool isRunning () const
*/
$method=|bool|isRunning|

/*
bool processEvents ( ProcessEventsFlags flags = AllEvents )
*/
void QEventLoop_processEvents1 ()
{
  QEventLoop * obj = (QEventLoop *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = ISNIL(1)? (int) QEventLoop::AllEvents : hb_parni(1);
    RBOOL( obj->processEvents ( (QEventLoop::ProcessEventsFlags) par1 ) );
  }
}

/*
void processEvents ( ProcessEventsFlags flags, int maxTime )
*/
void QEventLoop_processEvents2 ()
{
  QEventLoop * obj = (QEventLoop *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->processEvents ( (QEventLoop::ProcessEventsFlags) par1, PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]bool processEvents ( ProcessEventsFlags flags = AllEvents )
//[2]void processEvents ( ProcessEventsFlags flags, int maxTime )

HB_FUNC_STATIC( QEVENTLOOP_PROCESSEVENTS )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QEventLoop_processEvents1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QEventLoop_processEvents2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void wakeUp ()
*/
$method=|void|wakeUp|

/*
void quit ()
*/
$method=|void|quit|

#pragma ENDDUMP
