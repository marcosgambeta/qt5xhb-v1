/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QAccessibleTextSelectionEvent INHERIT QAccessibleTextCursorEvent

   METHOD new
   METHOD delete
   METHOD setSelection
   METHOD selectionStart
   METHOD selectionEnd

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleTextSelectionEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleTextSelectionEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleTextSelectionEvent>
#endif

/*
QAccessibleTextSelectionEvent(QObject *obj, int start, int end)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTSELECTIONEVENT_NEW )
{
  QAccessibleTextSelectionEvent * o = new QAccessibleTextSelectionEvent ( PQOBJECT(1), PINT(2), PINT(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QACCESSIBLETEXTSELECTIONEVENT_DELETE )
{
  QAccessibleTextSelectionEvent * obj = (QAccessibleTextSelectionEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setSelection(int start, int end)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTSELECTIONEVENT_SETSELECTION )
{
  QAccessibleTextSelectionEvent * obj = (QAccessibleTextSelectionEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSelection ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int selectionStart() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTSELECTIONEVENT_SELECTIONSTART )
{
  QAccessibleTextSelectionEvent * obj = (QAccessibleTextSelectionEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->selectionStart () );
  }
}


/*
int selectionEnd() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTSELECTIONEVENT_SELECTIONEND )
{
  QAccessibleTextSelectionEvent * obj = (QAccessibleTextSelectionEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->selectionEnd () );
  }
}



#pragma ENDDUMP
