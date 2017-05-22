/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QAccessibleTextSelectionEvent INHERIT QAccessibleTextCursorEvent

   DATA self_destruction INIT .F.

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
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QAccessibleTextSelectionEvent * o = new QAccessibleTextSelectionEvent ( par1, par2, par3 );
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
    hb_retni( obj->selectionStart () );
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
    hb_retni( obj->selectionEnd () );
  }
}



#pragma ENDDUMP
