/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QIRProximityReading INHERIT QSensorReading

   DATA class_id INIT Class_Id_QIRProximityReading
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD reflectance
   METHOD setReflectance
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIRProximityReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QIRProximityReading>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QIRProximityReading>
#endif
#endif


HB_FUNC_STATIC( QIRPROXIMITYREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximityReading * obj = (QIRProximityReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal reflectance() const
*/
HB_FUNC_STATIC( QIRPROXIMITYREADING_REFLECTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximityReading * obj = (QIRProximityReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->reflectance (  ) );
  }
#endif
}


/*
void setReflectance(qreal reflectance)
*/
HB_FUNC_STATIC( QIRPROXIMITYREADING_SETREFLECTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximityReading * obj = (QIRProximityReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setReflectance ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
