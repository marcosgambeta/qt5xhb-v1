/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QOrientationReading INHERIT QSensorReading

   DATA class_id INIT Class_Id_QOrientationReading
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD orientation
   METHOD setOrientation
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOrientationReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QOrientationReading>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QOrientationReading>
#endif
#endif


HB_FUNC_STATIC( QORIENTATIONREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QOrientationReading * obj = (QOrientationReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Orientation orientation() const
*/
HB_FUNC_STATIC( QORIENTATIONREADING_ORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QOrientationReading * obj = (QOrientationReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->orientation (  );
    hb_retni( i );
  }
#endif
}


/*
void setOrientation(Orientation orientation)
*/
HB_FUNC_STATIC( QORIENTATIONREADING_SETORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QOrientationReading * obj = (QOrientationReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOrientation (  (QOrientationReading::Orientation) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
