/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QTapGesture INHERIT QGesture

   DATA class_id INIT Class_Id_QTapGesture
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD position
   METHOD setPosition
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTapGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTapGesture>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTapGesture>
#endif

HB_FUNC_STATIC( QTAPGESTURE_DELETE )
{
  QTapGesture * obj = (QTapGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPointF position() const
*/
HB_FUNC_STATIC( QTAPGESTURE_POSITION )
{
  QTapGesture * obj = (QTapGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->position (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void setPosition(const QPointF & pos)
*/
HB_FUNC_STATIC( QTAPGESTURE_SETPOSITION )
{
  QTapGesture * obj = (QTapGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setPosition ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
