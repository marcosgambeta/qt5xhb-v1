/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSGGEOMETRY
#endif

CLASS QSGBasicGeometryNode INHERIT QSGNode

   DATA class_id INIT Class_Id_QSGBasicGeometryNode
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD geometry
   METHOD setGeometry
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSGBasicGeometryNode
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSGBasicGeometryNode>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSGBasicGeometryNode>
#endif
#endif

HB_FUNC_STATIC( QSGBASICGEOMETRYNODE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSGBasicGeometryNode * obj = (QSGBasicGeometryNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSGGeometry * geometry()
*/
HB_FUNC_STATIC( QSGBASICGEOMETRYNODE_GEOMETRY )
{
  QSGBasicGeometryNode * obj = (QSGBasicGeometryNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGGeometry * ptr = obj->geometry (  );
    _qt4xhb_createReturnClass ( ptr, "QSGGEOMETRY" );
  }
}


/*
void setGeometry(QSGGeometry * geometry)
*/
HB_FUNC_STATIC( QSGBASICGEOMETRYNODE_SETGEOMETRY )
{
  QSGBasicGeometryNode * obj = (QSGBasicGeometryNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGGeometry * par1 = (QSGGeometry *) _qtxhb_itemGetPtr(1);
    obj->setGeometry ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
