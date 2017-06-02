/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QAccessibleTextInsertEvent INHERIT QAccessibleTextCursorEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD textInserted
   METHOD changePosition

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleTextInsertEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleTextInsertEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleTextInsertEvent>
#endif

/*
QAccessibleTextInsertEvent(QObject *obj, int position, const QString &text)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINSERTEVENT_NEW )
{
  int par2 = hb_parni(2);
  QAccessibleTextInsertEvent * o = new QAccessibleTextInsertEvent ( PQOBJECT(1), par2, PQSTRING(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QACCESSIBLETEXTINSERTEVENT_DELETE )
{
  QAccessibleTextInsertEvent * obj = (QAccessibleTextInsertEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString textInserted() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINSERTEVENT_TEXTINSERTED )
{
  QAccessibleTextInsertEvent * obj = (QAccessibleTextInsertEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->textInserted () ) );
  }
}


/*
int changePosition() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINSERTEVENT_CHANGEPOSITION )
{
  QAccessibleTextInsertEvent * obj = (QAccessibleTextInsertEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->changePosition () );
  }
}



#pragma ENDDUMP
