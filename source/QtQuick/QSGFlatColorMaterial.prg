/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QSGFlatColorMaterial INHERIT QSGMaterial

   //DATA class_id INIT Class_Id_QSGFlatColorMaterial
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD color
   METHOD setColor

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSGFlatColorMaterial
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSGFlatColorMaterial>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSGFlatColorMaterial>
#endif

/*
QSGFlatColorMaterial()
*/
HB_FUNC_STATIC( QSGFLATCOLORMATERIAL_NEW )
{
  QSGFlatColorMaterial * o = new QSGFlatColorMaterial (  );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSGFLATCOLORMATERIAL_DELETE )
{
  QSGFlatColorMaterial * obj = (QSGFlatColorMaterial *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QColor & color() const
*/
HB_FUNC_STATIC( QSGFLATCOLORMATERIAL_COLOR )
{
  QSGFlatColorMaterial * obj = (QSGFlatColorMaterial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QColor * ptr = &obj->color (  );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR" );
  }
}


/*
void setColor(const QColor & color)
*/
HB_FUNC_STATIC( QSGFLATCOLORMATERIAL_SETCOLOR )
{
  QSGFlatColorMaterial * obj = (QSGFlatColorMaterial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
