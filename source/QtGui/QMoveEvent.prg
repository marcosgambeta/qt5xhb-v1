/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QMoveEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QMoveEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD oldPos
   METHOD pos
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMoveEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMoveEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMoveEvent>
#endif

/*
QMoveEvent ( const QPoint & pos, const QPoint & oldPos )
*/
HB_FUNC_STATIC( QMOVEEVENT_NEW )
{
  QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
  QPoint * par2 = (QPoint *) _qt5xhb_itemGetPtr(2);
  QMoveEvent * o = new QMoveEvent ( *par1, *par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMoveEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QMOVEEVENT_DELETE )
{
  QMoveEvent * obj = (QMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QPoint & oldPos () const
*/
HB_FUNC_STATIC( QMOVEEVENT_OLDPOS )
{
  QMoveEvent * obj = (QMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPoint * ptr = &obj->oldPos (  );
    _qt5xhb_createReturnClass ( ptr, "QPOINT" );
  }
}


/*
const QPoint & pos () const
*/
HB_FUNC_STATIC( QMOVEEVENT_POS )
{
  QMoveEvent * obj = (QMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPoint * ptr = &obj->pos (  );
    _qt5xhb_createReturnClass ( ptr, "QPOINT" );
  }
}



#pragma ENDDUMP
