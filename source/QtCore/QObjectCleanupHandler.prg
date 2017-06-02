/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QObjectCleanupHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QObjectCleanupHandler>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QObjectCleanupHandler>
#endif

/*
QObjectCleanupHandler()
*/
HB_FUNC_STATIC( QOBJECTCLEANUPHANDLER_NEW )
{
  QObjectCleanupHandler * o = new QObjectCleanupHandler ();
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QOBJECTCLEANUPHANDLER_DELETE )
{
  QObjectCleanupHandler * obj = (QObjectCleanupHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QOBJECTCLEANUPHANDLER_REMOVE )
{
  QObjectCleanupHandler * obj = (QObjectCleanupHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->remove ( PQOBJECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QOBJECTCLEANUPHANDLER_ISEMPTY )
{
  QObjectCleanupHandler * obj = (QObjectCleanupHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty () );
  }
}


/*
void clear()
*/
HB_FUNC_STATIC( QOBJECTCLEANUPHANDLER_CLEAR )
{
  QObjectCleanupHandler * obj = (QObjectCleanupHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
