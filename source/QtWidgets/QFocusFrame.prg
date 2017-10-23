/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QFocusFrame INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setWidget
   METHOD widget

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFocusFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFocusFrame>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFocusFrame>
#endif

/*
QFocusFrame ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QFOCUSFRAME_NEW )
{
  QFocusFrame * o = new QFocusFrame ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QFOCUSFRAME_DELETE )
{
  QFocusFrame * obj = (QFocusFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QFOCUSFRAME_SETWIDGET )
{
  QFocusFrame * obj = (QFocusFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QFOCUSFRAME_WIDGET )
{
  QFocusFrame * obj = (QFocusFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->widget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}



#pragma ENDDUMP
