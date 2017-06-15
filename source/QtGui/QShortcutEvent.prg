/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
#endif

CLASS QShortcutEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD key
   METHOD shortcutId
   METHOD isAmbiguous

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QShortcutEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QShortcutEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QShortcutEvent>
#endif

/*
QShortcutEvent(const QKeySequence &key, int id, bool ambiguous = false)
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_NEW )
{
  QShortcutEvent * o = new QShortcutEvent ( *PQKEYSEQUENCE(1), PINT(2), OPBOOL(3,false) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSHORTCUTEVENT_DELETE )
{
  QShortcutEvent * obj = (QShortcutEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QKeySequence &key() const
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_KEY )
{
  QShortcutEvent * obj = (QShortcutEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QKeySequence * ptr = &obj->key ();
    _qt5xhb_createReturnClass ( ptr, "QKEYSEQUENCE" );
  }
}


/*
int shortcutId() const
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_SHORTCUTID )
{
  QShortcutEvent * obj = (QShortcutEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->shortcutId () );
  }
}


/*
bool isAmbiguous() const
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_ISAMBIGUOUS )
{
  QShortcutEvent * obj = (QShortcutEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isAmbiguous () );
  }
}



#pragma ENDDUMP
