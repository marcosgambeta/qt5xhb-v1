$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QObjectCleanupHandler INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD add
   METHOD remove
   METHOD isEmpty
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QObjectCleanupHandler()
*/
HB_FUNC_STATIC( QOBJECTCLEANUPHANDLER_NEW )
{
  QObjectCleanupHandler * o = new QObjectCleanupHandler ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QObject* add(QObject* object)
*/
HB_FUNC_STATIC( QOBJECTCLEANUPHANDLER_ADD )
{
  QObjectCleanupHandler * obj = (QObjectCleanupHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->add ( PQOBJECT(1) );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
void remove(QObject *object)
*/
$method=|void|remove|QObject *

/*
bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
void clear()
*/
$method=|void|clear|

#pragma ENDDUMP
