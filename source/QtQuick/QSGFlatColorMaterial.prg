/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QSGFlatColorMaterial INHERIT QSGMaterial

   DATA class_id INIT Class_Id_QSGFlatColorMaterial
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSGFlatColorMaterial>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSGFlatColorMaterial>
#endif
#endif

/*
QSGFlatColorMaterial()
*/
HB_FUNC_STATIC( QSGFLATCOLORMATERIAL_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSGFlatColorMaterial * o = new QSGFlatColorMaterial (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSGFlatColorMaterial *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSGFLATCOLORMATERIAL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
const QColor & color() const
*/
HB_FUNC_STATIC( QSGFLATCOLORMATERIAL_COLOR )
{
  QSGFlatColorMaterial * obj = (QSGFlatColorMaterial *) _qtxhb_itemGetPtrStackSelfItem();
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
  QSGFlatColorMaterial * obj = (QSGFlatColorMaterial *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qtxhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
