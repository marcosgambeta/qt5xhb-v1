/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QPlaceUser

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD userId
   METHOD setUserId
   METHOD name
   METHOD setName

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceUser
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceUser>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceUser>
#endif
#endif

/*
QPlaceUser()
*/
void QPlaceUser_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceUser * o = new QPlaceUser ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceUser(const QPlaceUser &other)
*/
void QPlaceUser_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceUser * o = new QPlaceUser ( *PQPLACEUSER(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceUser()
//[2]QPlaceUser(const QPlaceUser &other)

HB_FUNC_STATIC( QPLACEUSER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceUser_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEUSER(1) )
  {
    QPlaceUser_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLACEUSER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceUser * obj = (QPlaceUser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString userId() const
*/
HB_FUNC_STATIC( QPLACEUSER_USERID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceUser * obj = (QPlaceUser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->userId () ) );
  }
#endif
}

/*
void setUserId(const QString &identifier)
*/
HB_FUNC_STATIC( QPLACEUSER_SETUSERID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceUser * obj = (QPlaceUser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUserId ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString name() const
*/
HB_FUNC_STATIC( QPLACEUSER_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceUser * obj = (QPlaceUser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->name () ) );
  }
#endif
}

/*
void setName(const QString &name)
*/
HB_FUNC_STATIC( QPLACEUSER_SETNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceUser * obj = (QPlaceUser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



HB_FUNC_STATIC( QPLACEUSER_NEWFROM )
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

HB_FUNC_STATIC( QPLACEUSER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLACEUSER_NEWFROM );
}

HB_FUNC_STATIC( QPLACEUSER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLACEUSER_NEWFROM );
}

HB_FUNC_STATIC( QPLACEUSER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPLACEUSER_SETSELFDESTRUCTION )
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
