/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QRotationReading INHERIT QSensorReading

   DATA class_id INIT Class_Id_QRotationReading
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD x
   METHOD y
   METHOD z
   METHOD setFromEuler
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRotationReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QRotationReading>
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
#include <QRotationReading>
#endif
#endif


HB_FUNC_STATIC( QROTATIONREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationReading * obj = (QRotationReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal x() const
*/
HB_FUNC_STATIC( QROTATIONREADING_X )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationReading * obj = (QRotationReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->x (  ) );
  }
#endif
}


/*
qreal y() const
*/
HB_FUNC_STATIC( QROTATIONREADING_Y )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationReading * obj = (QRotationReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->y (  ) );
  }
#endif
}


/*
qreal z() const
*/
HB_FUNC_STATIC( QROTATIONREADING_Z )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationReading * obj = (QRotationReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->z (  ) );
  }
#endif
}


/*
void setFromEuler(qreal x, qreal y, qreal z)
*/
HB_FUNC_STATIC( QROTATIONREADING_SETFROMEULER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationReading * obj = (QRotationReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    obj->setFromEuler ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
