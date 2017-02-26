/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
#endif

CLASS QShortcutEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QShortcutEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QShortcutEvent>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QShortcutEvent>
#endif
#endif

/*
QShortcutEvent(const QKeySequence &key, int id, bool ambiguous = false)
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QKeySequence * par1 = (QKeySequence *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  bool par3 = ISNIL(3)? false : hb_parl(3);
  QShortcutEvent * o = new QShortcutEvent ( *par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QShortcutEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSHORTCUTEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
const QKeySequence &key() const
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_KEY )
{
  QShortcutEvent * obj = (QShortcutEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QKeySequence * ptr = &obj->key (  );
    _qt4xhb_createReturnClass ( ptr, "QKEYSEQUENCE" );
  }
}


/*
int shortcutId() const
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_SHORTCUTID )
{
  QShortcutEvent * obj = (QShortcutEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->shortcutId (  ) );
  }
}


/*
bool isAmbiguous() const
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_ISAMBIGUOUS )
{
  QShortcutEvent * obj = (QShortcutEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAmbiguous (  ) );
  }
}



#pragma ENDDUMP
