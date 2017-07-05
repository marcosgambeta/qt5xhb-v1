$header

#include "hbclass.ch"

CLASS QSocketNotifier INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD socket
   METHOD type
   METHOD isEnabled
   METHOD setEnabled

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSocketNotifier(qintptr socket, Type, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_NEW )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    qintptr par1 = hb_parni(1);
    QSocketNotifier * o = new QSocketNotifier ( par1, (QSocketNotifier::Type) hb_parni(2), OPQOBJECT(3,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
qintptr socket() const
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_SOCKET )
{
  QSocketNotifier * obj = (QSocketNotifier *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->socket () );
  }
}

/*
Type type() const
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_TYPE )
{
  QSocketNotifier * obj = (QSocketNotifier *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type () );
  }
}

/*
bool isEnabled() const
*/
$method=|bool|isEnabled|

/*
void setEnabled(bool)
*/
$method=|void|setEnabled|bool

#pragma ENDDUMP
