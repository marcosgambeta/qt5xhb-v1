$header

#include "hbclass.ch"

CLASS QTimer INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD interval
   METHOD isActive
   METHOD isSingleShot
   METHOD setInterval
   METHOD setSingleShot
   METHOD timerId
   METHOD start
   METHOD stop
   METHOD singleShot

   METHOD onTimeout

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTimer ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QTIMER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QTimer * o = new QTimer ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int interval () const
*/
HB_FUNC_STATIC( QTIMER_INTERVAL )
{
  QTimer * obj = (QTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->interval () );
  }
}

/*
bool isActive () const
*/
$method=|bool|isActive|

/*
bool isSingleShot () const
*/
$method=|bool|isSingleShot|

/*
void setInterval ( int msec )
*/
$method=|void|setInterval|int

/*
void setSingleShot ( bool singleShot )
*/
$method=|void|setSingleShot|bool

/*
int timerId () const
*/
$method=|int|timerId|

/*
void start ( int msec )
*/
void QTimer_start1 ()
{
  QTimer * obj = (QTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->start ( PINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void start ()
*/
void QTimer_start2 ()
{
  QTimer * obj = (QTimer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->start ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void start ( int msec )
//[2]void start ()

HB_FUNC_STATIC( QTIMER_START )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTimer_start1();
  }
  else if( ISNUMPAR(0) )
  {
    QTimer_start2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void stop ()
*/
$method=|void|stop|

/*
static void singleShot ( int msec, QObject * receiver, const char * member )
*/
$staticMethod=|void|singleShot|int,QObject *,const char *

#pragma ENDDUMP
