/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTapReading INHERIT QSensorReading

   DATA class_id INIT Class_Id_QTapReading
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD tapDirection
   METHOD setTapDirection
   METHOD isDoubleTap
   METHOD setDoubleTap
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTapReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QTapReading>
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
#include <QTapReading>
#endif
#endif


HB_FUNC_STATIC( QTAPREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapReading * obj = (QTapReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
TapDirection tapDirection() const
*/
HB_FUNC_STATIC( QTAPREADING_TAPDIRECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapReading * obj = (QTapReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->tapDirection (  ) );
  }
#endif
}


/*
void setTapDirection(TapDirection tapDirection)
*/
HB_FUNC_STATIC( QTAPREADING_SETTAPDIRECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapReading * obj = (QTapReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTapDirection (  (QTapReading::TapDirection) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isDoubleTap() const
*/
HB_FUNC_STATIC( QTAPREADING_ISDOUBLETAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapReading * obj = (QTapReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDoubleTap (  ) );
  }
#endif
}


/*
void setDoubleTap(bool doubleTap)
*/
HB_FUNC_STATIC( QTAPREADING_SETDOUBLETAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapReading * obj = (QTapReading *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDoubleTap ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
