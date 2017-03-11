/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QGraphicsTransform INHERIT QObject

   DATA class_id INIT Class_Id_QGraphicsTransform
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD applyTo
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsTransform
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsTransform>
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
#include <QGraphicsTransform>
#endif


HB_FUNC_STATIC( QGRAPHICSTRANSFORM_DELETE )
{
  QGraphicsTransform * obj = (QGraphicsTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void applyTo ( QMatrix4x4 * matrix ) const = 0
*/
HB_FUNC_STATIC( QGRAPHICSTRANSFORM_APPLYTO )
{
  QGraphicsTransform * obj = (QGraphicsTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMatrix4x4 * par1 = (QMatrix4x4 *) _qt5xhb_itemGetPtr(1);
    obj->applyTo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
