$header

#include "hbclass.ch"

CLASS QAnimationDriver INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD advance
   METHOD install
   METHOD uninstall
   METHOD isRunning
   METHOD elapsed
   METHOD setStartTime
   METHOD startTime

   METHOD onStarted
   METHOD onStopped

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAnimationDriver(QObject *parent = 0)
*/
HB_FUNC_STATIC( QANIMATIONDRIVER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QAnimationDriver * o = new QAnimationDriver ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
virtual void advance()
*/
$method=|void|advance|

/*
void install()
*/
$method=|void|install|

/*
void uninstall()
*/
$method=|void|uninstall|

/*
bool isRunning() const
*/
$method=|bool|isRunning|

/*
virtual qint64 elapsed() const
*/
$method=|qint64|elapsed|

/*
void setStartTime(qint64 startTime)
*/
$method=|void|setStartTime|qint64

/*
qint64 startTime() const
*/
$method=|qint64|startTime|

#pragma ENDDUMP
