/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QAccessibleTextUpdateEvent INHERIT QAccessibleTextCursorEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD textRemoved
   METHOD textInserted
   METHOD changePosition

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleTextUpdateEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleTextUpdateEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleTextUpdateEvent>
#endif

/*
QAccessibleTextUpdateEvent(QObject *obj, int position, const QString &oldText, const QString &text)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_NEW )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QAccessibleTextUpdateEvent * o = new QAccessibleTextUpdateEvent ( par1, par2, PQSTRING(3), PQSTRING(4) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_DELETE )
{
  QAccessibleTextUpdateEvent * obj = (QAccessibleTextUpdateEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString textRemoved() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_TEXTREMOVED )
{
  QAccessibleTextUpdateEvent * obj = (QAccessibleTextUpdateEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->textRemoved () ) );
  }
}


/*
QString textInserted() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_TEXTINSERTED )
{
  QAccessibleTextUpdateEvent * obj = (QAccessibleTextUpdateEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->textInserted () ) );
  }
}


/*
int changePosition() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_CHANGEPOSITION )
{
  QAccessibleTextUpdateEvent * obj = (QAccessibleTextUpdateEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->changePosition () );
  }
}



#pragma ENDDUMP
