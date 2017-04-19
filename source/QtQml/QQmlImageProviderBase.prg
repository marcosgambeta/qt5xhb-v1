/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QQmlImageProviderBase

   DATA pointer
   DATA class_id INIT Class_Id_QQmlImageProviderBase
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD flags
   METHOD imageType

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlImageProviderBase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQmlImageProviderBase>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQmlImageProviderBase>
#endif

HB_FUNC_STATIC( QQMLIMAGEPROVIDERBASE_DELETE )
{
  QQmlImageProviderBase * obj = (QQmlImageProviderBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual Flags flags() const = 0
*/
HB_FUNC_STATIC( QQMLIMAGEPROVIDERBASE_FLAGS )
{
  QQmlImageProviderBase * obj = (QQmlImageProviderBase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->flags (  ) );
  }
}


/*
virtual ImageType imageType() const = 0
*/
HB_FUNC_STATIC( QQMLIMAGEPROVIDERBASE_IMAGETYPE )
{
  QQmlImageProviderBase * obj = (QQmlImageProviderBase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->imageType (  ) );
  }
}



HB_FUNC_STATIC( QQMLIMAGEPROVIDERBASE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QQMLIMAGEPROVIDERBASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QQMLIMAGEPROVIDERBASE_NEWFROM );
}

HB_FUNC_STATIC( QQMLIMAGEPROVIDERBASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QQMLIMAGEPROVIDERBASE_NEWFROM );
}

HB_FUNC_STATIC( QQMLIMAGEPROVIDERBASE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QQMLIMAGEPROVIDERBASE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
