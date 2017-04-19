/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QVARIANTHASH
#endif

CLASS QAuthenticator

   DATA pointer
   DATA class_id INIT Class_Id_QAuthenticator
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD option
   METHOD options
   METHOD password
   METHOD realm
   METHOD setOption
   METHOD setPassword
   METHOD setUser
   METHOD user

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAuthenticator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAuthenticator>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAuthenticator>
#endif

/*
QAuthenticator ()
*/
HB_FUNC_STATIC( QAUTHENTICATOR_NEW1 )
{
  QAuthenticator * o = new QAuthenticator (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QAuthenticator ( const QAuthenticator & other )
*/
HB_FUNC_STATIC( QAUTHENTICATOR_NEW2 )
{
  QAuthenticator * par1 = (QAuthenticator *) _qt5xhb_itemGetPtr(1);
  QAuthenticator * o = new QAuthenticator ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QAuthenticator ()
//[2]QAuthenticator ( const QAuthenticator & other )

HB_FUNC_STATIC( QAUTHENTICATOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUTHENTICATOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUTHENTICATOR(1) )
  {
    HB_FUNC_EXEC( QAUTHENTICATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAUTHENTICATOR_DELETE )
{
  QAuthenticator * obj = (QAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isNull () const
*/
HB_FUNC_STATIC( QAUTHENTICATOR_ISNULL )
{
  QAuthenticator * obj = (QAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QVariant option ( const QString & opt ) const
*/
HB_FUNC_STATIC( QAUTHENTICATOR_OPTION )
{
  QAuthenticator * obj = (QAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * ptr = new QVariant( obj->option ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QVariantHash options () const
*/
HB_FUNC_STATIC( QAUTHENTICATOR_OPTIONS )
{
  QAuthenticator * obj = (QAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariantHash * ptr = new QVariantHash( obj->options (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANTHASH" );
  }
}


/*
QString password () const
*/
HB_FUNC_STATIC( QAUTHENTICATOR_PASSWORD )
{
  QAuthenticator * obj = (QAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->password (  ).toLatin1().data() );
  }
}


/*
QString realm () const
*/
HB_FUNC_STATIC( QAUTHENTICATOR_REALM )
{
  QAuthenticator * obj = (QAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->realm (  ).toLatin1().data() );
  }
}


/*
void setOption ( const QString & opt, const QVariant & value )
*/
HB_FUNC_STATIC( QAUTHENTICATOR_SETOPTION )
{
  QAuthenticator * obj = (QAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->setOption ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPassword ( const QString & password )
*/
HB_FUNC_STATIC( QAUTHENTICATOR_SETPASSWORD )
{
  QAuthenticator * obj = (QAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setPassword ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUser ( const QString & user )
*/
HB_FUNC_STATIC( QAUTHENTICATOR_SETUSER )
{
  QAuthenticator * obj = (QAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setUser ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString user () const
*/
HB_FUNC_STATIC( QAUTHENTICATOR_USER )
{
  QAuthenticator * obj = (QAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->user (  ).toLatin1().data() );
  }
}



HB_FUNC_STATIC( QAUTHENTICATOR_NEWFROM )
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

HB_FUNC_STATIC( QAUTHENTICATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QAUTHENTICATOR_NEWFROM );
}

HB_FUNC_STATIC( QAUTHENTICATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QAUTHENTICATOR_NEWFROM );
}

HB_FUNC_STATIC( QAUTHENTICATOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QAUTHENTICATOR_SETSELFDESTRUCTION )
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