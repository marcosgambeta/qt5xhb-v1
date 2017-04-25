/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

CLASS QDragEnterEvent INHERIT QDragMoveEvent

   //DATA class_id INIT Class_Id_QDragEnterEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDragEnterEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDragEnterEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDragEnterEvent>
#endif

/*
QDragEnterEvent ( const QPoint & point, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers )
*/
HB_FUNC_STATIC( QDRAGENTEREVENT_NEW )
{
  QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  const QMimeData * par3 = (const QMimeData *) _qt5xhb_itemGetPtr(3);
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  QDragEnterEvent * o = new QDragEnterEvent ( *par1,  (Qt::DropActions) par2, par3,  (Qt::MouseButtons) par4,  (Qt::KeyboardModifiers) par5 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QDRAGENTEREVENT_DELETE )
{
  QDragEnterEvent * obj = (QDragEnterEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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


#pragma ENDDUMP
