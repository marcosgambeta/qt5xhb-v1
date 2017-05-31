/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSGMATERIALSHADER
REQUEST QSGMATERIALTYPE
#endif

CLASS QSGMaterial

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD compare
   METHOD createShader
   METHOD flags
   METHOD setFlag
   METHOD type

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSGMaterial
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSGMaterial>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSGMaterial>
#endif

HB_FUNC_STATIC( QSGMATERIAL_DELETE )
{
  QSGMaterial * obj = (QSGMaterial *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual int compare(const QSGMaterial * other) const
*/
HB_FUNC_STATIC( QSGMATERIAL_COMPARE )
{
  QSGMaterial * obj = (QSGMaterial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QSGMaterial * par1 = (const QSGMaterial *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->compare ( par1 ) );
  }
}


/*
virtual QSGMaterialShader * createShader() const = 0
*/
HB_FUNC_STATIC( QSGMATERIAL_CREATESHADER )
{
  QSGMaterial * obj = (QSGMaterial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGMaterialShader * ptr = obj->createShader ();
    _qt5xhb_createReturnClass ( ptr, "QSGMATERIALSHADER" );
  }
}


/*
QSGMaterial::Flags flags() const
*/
HB_FUNC_STATIC( QSGMATERIAL_FLAGS )
{
  QSGMaterial * obj = (QSGMaterial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->flags () );
  }
}


/*
void setFlag(Flags flags, bool on = true)
*/
HB_FUNC_STATIC( QSGMATERIAL_SETFLAG )
{
  QSGMaterial * obj = (QSGMaterial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlag ( (QSGMaterial::Flags) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSGMaterialType * type() const = 0
*/
HB_FUNC_STATIC( QSGMATERIAL_TYPE )
{
  QSGMaterial * obj = (QSGMaterial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGMaterialType * ptr = obj->type ();
    _qt5xhb_createReturnClass ( ptr, "QSGMATERIALTYPE" );
  }
}



HB_FUNC_STATIC( QSGMATERIAL_NEWFROM )
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

HB_FUNC_STATIC( QSGMATERIAL_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSGMATERIAL_NEWFROM );
}

HB_FUNC_STATIC( QSGMATERIAL_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSGMATERIAL_NEWFROM );
}

HB_FUNC_STATIC( QSGMATERIAL_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSGMATERIAL_SETSELFDESTRUCTION )
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