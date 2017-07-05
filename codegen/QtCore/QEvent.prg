$header

#include "hbclass.ch"

CLASS QEvent

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD accept
   METHOD ignore
   METHOD isAccepted
   METHOD setAccepted
   METHOD spontaneous
   METHOD type
   METHOD registerEventType

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QEvent ( Type type )
*/
HB_FUNC_STATIC( QEVENT_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QEvent * o = new QEvent ( (QEvent::Type) hb_parni(1) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void accept ()
*/
$method=|void|accept|

/*
void ignore ()
*/
$method=|void|ignore|

/*
bool isAccepted () const
*/
$method=|bool|isAccepted|

/*
void setAccepted ( bool accepted )
*/
$method=|void|setAccepted|bool

/*
bool spontaneous () const
*/
$method=|bool|spontaneous|

/*
Type type () const
*/
HB_FUNC_STATIC( QEVENT_TYPE )
{
  QEvent * obj = (QEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type () );
  }
}

/*
static int registerEventType ( int hint = -1 )
*/
$staticMethod=|int|registerEventType|int=-1

$extraMethods

#pragma ENDDUMP
