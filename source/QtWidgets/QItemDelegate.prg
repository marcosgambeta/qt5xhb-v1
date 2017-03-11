/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QITEMEDITORFACTORY
#endif

CLASS QItemDelegate INHERIT QAbstractItemDelegate

   DATA class_id INIT Class_Id_QItemDelegate
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD hasClipping
   METHOD itemEditorFactory
   METHOD setClipping
   METHOD setItemEditorFactory
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QItemDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QItemDelegate>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QItemDelegate>
#endif

/*
QItemDelegate ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QITEMDELEGATE_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QItemDelegate * o = new QItemDelegate ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QITEMDELEGATE_DELETE )
{
  QItemDelegate * obj = (QItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool hasClipping () const
*/
HB_FUNC_STATIC( QITEMDELEGATE_HASCLIPPING )
{
  QItemDelegate * obj = (QItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasClipping (  ) );
  }
}


/*
QItemEditorFactory * itemEditorFactory () const
*/
HB_FUNC_STATIC( QITEMDELEGATE_ITEMEDITORFACTORY )
{
  QItemDelegate * obj = (QItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QItemEditorFactory * ptr = obj->itemEditorFactory (  );
    _qt5xhb_createReturnClass ( ptr, "QITEMEDITORFACTORY" );
  }
}


/*
void setClipping ( bool clip )
*/
HB_FUNC_STATIC( QITEMDELEGATE_SETCLIPPING )
{
  QItemDelegate * obj = (QItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setClipping ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemEditorFactory ( QItemEditorFactory * factory )
*/
HB_FUNC_STATIC( QITEMDELEGATE_SETITEMEDITORFACTORY )
{
  QItemDelegate * obj = (QItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QItemEditorFactory * par1 = (QItemEditorFactory *) _qt5xhb_itemGetPtr(1);
    obj->setItemEditorFactory ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
