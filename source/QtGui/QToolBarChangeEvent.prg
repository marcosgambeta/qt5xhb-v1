/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QToolBarChangeEvent INHERIT QEvent

   //DATA class_id INIT Class_Id_QToolBarChangeEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD toggle

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QToolBarChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QToolBarChangeEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QToolBarChangeEvent>
#endif

/*
QToolBarChangeEvent(bool t)
*/
HB_FUNC_STATIC( QTOOLBARCHANGEEVENT_NEW )
{
  bool par1 = hb_parl(1);
  QToolBarChangeEvent * o = new QToolBarChangeEvent ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QTOOLBARCHANGEEVENT_DELETE )
{
  QToolBarChangeEvent * obj = (QToolBarChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool toggle() const
*/
HB_FUNC_STATIC( QTOOLBARCHANGEEVENT_TOGGLE )
{
  QToolBarChangeEvent * obj = (QToolBarChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->toggle (  ) );
  }
}



#pragma ENDDUMP
