$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QChildEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD added
   METHOD child
   METHOD polished
   METHOD removed

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QChildEvent(Type type, QObject * child)
*/
HB_FUNC_STATIC( QCHILDEVENT_NEW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQOBJECT(2) )
  {
    QChildEvent * o = new QChildEvent ( (QEvent::Type) hb_parni(1), PQOBJECT(2) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool added() const
*/
$method=|bool|added|

/*
QObject * child() const
*/
HB_FUNC_STATIC( QCHILDEVENT_CHILD )
{
  QChildEvent * obj = (QChildEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * ptr = obj->child ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
bool polished() const
*/
$method=|bool|polished|

/*
bool removed() const
*/
$method=|bool|removed|

#pragma ENDDUMP
