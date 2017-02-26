/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QGyroscopeReading INHERIT QSensorReading

   DATA class_id INIT Class_Id_QGyroscopeReading
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD x
   METHOD setX
   METHOD y
   METHOD setY
   METHOD z
   METHOD setZ
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGyroscopeReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QGyroscopeReading>
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
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QGyroscopeReading>
#endif
#endif


HB_FUNC_STATIC( QGYROSCOPEREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QGyroscopeReading * obj = (QGyroscopeReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QGYROSCOPEREADING_X )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QGyroscopeReading * obj = (QGyroscopeReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->x (  ) );
  }
#endif
}


/*
void setX(qreal x)
*/
HB_FUNC_STATIC( QGYROSCOPEREADING_SETX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QGyroscopeReading * obj = (QGyroscopeReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setX ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal y() const
*/
HB_FUNC_STATIC( QGYROSCOPEREADING_Y )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QGyroscopeReading * obj = (QGyroscopeReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->y (  ) );
  }
#endif
}


/*
void setY(qreal y)
*/
HB_FUNC_STATIC( QGYROSCOPEREADING_SETY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QGyroscopeReading * obj = (QGyroscopeReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setY ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal z() const
*/
HB_FUNC_STATIC( QGYROSCOPEREADING_Z )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QGyroscopeReading * obj = (QGyroscopeReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->z (  ) );
  }
#endif
}


/*
void setZ(qreal z)
*/
HB_FUNC_STATIC( QGYROSCOPEREADING_SETZ )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QGyroscopeReading * obj = (QGyroscopeReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setZ ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
