/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QRECT
REQUEST QREGION
#endif

CLASS QPaintEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QPaintEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD rect
   METHOD region
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPaintEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPaintEvent>
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
#include <QPaintEvent>
#endif
#endif

/*
QPaintEvent ( const QRegion & paintRegion )
*/
HB_FUNC_STATIC( QPAINTEVENT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QRegion * par1 = (QRegion *) _qt5xhb_itemGetPtr(1);
  QPaintEvent * o = new QPaintEvent ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPaintEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QPaintEvent ( const QRect & paintRect )
*/
HB_FUNC_STATIC( QPAINTEVENT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
  QPaintEvent * o = new QPaintEvent ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPaintEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QPaintEvent ( const QRegion & paintRegion )
//[2]QPaintEvent ( const QRect & paintRect )

HB_FUNC_STATIC( QPAINTEVENT_NEW )
{
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
    HB_FUNC_EXEC( QPAINTEVENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QPAINTEVENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPAINTEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPaintEvent * obj = (QPaintEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QRect & rect () const
*/
HB_FUNC_STATIC( QPAINTEVENT_RECT )
{
  QPaintEvent * obj = (QPaintEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QRect * ptr = &obj->rect (  );
    _qt5xhb_createReturnClass ( ptr, "QRECT" );
  }
}


/*
const QRegion & region () const
*/
HB_FUNC_STATIC( QPAINTEVENT_REGION )
{
  QPaintEvent * obj = (QPaintEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QRegion * ptr = &obj->region (  );
    _qt5xhb_createReturnClass ( ptr, "QREGION" );
  }
}



#pragma ENDDUMP
