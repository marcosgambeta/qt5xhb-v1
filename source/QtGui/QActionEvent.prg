/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QActionEvent INHERIT QEvent

   //DATA class_id INIT Class_Id_QActionEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD action
   METHOD before

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QActionEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QActionEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QActionEvent>
#endif

/*
QActionEvent ( int type, QAction * action, QAction * before = 0 )
*/
HB_FUNC_STATIC( QACTIONEVENT_NEW )
{
  int par1 = hb_parni(1);
  QAction * par2 = (QAction *) _qt5xhb_itemGetPtr(2);
  QAction * par3 = ISNIL(3)? 0 : (QAction *) _qt5xhb_itemGetPtr(3);
  QActionEvent * o = new QActionEvent ( par1, par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QACTIONEVENT_DELETE )
{
  QActionEvent * obj = (QActionEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QAction * action () const
*/
HB_FUNC_STATIC( QACTIONEVENT_ACTION )
{
  QActionEvent * obj = (QActionEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->action (  );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QAction * before () const
*/
HB_FUNC_STATIC( QACTIONEVENT_BEFORE )
{
  QActionEvent * obj = (QActionEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->before (  );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}



#pragma ENDDUMP
