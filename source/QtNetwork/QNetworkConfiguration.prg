/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"



CLASS QNetworkConfiguration

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkConfiguration
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bearerType
   METHOD bearerTypeName
   METHOD children
   METHOD identifier
   METHOD isRoamingAvailable
   METHOD isValid
   METHOD name
   METHOD purpose
   METHOD state
   METHOD type
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkConfiguration
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QNetworkConfiguration>
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
#include <QNetworkConfiguration>
#endif

/*
QNetworkConfiguration ()
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEW1 )
{
  QNetworkConfiguration * o = new QNetworkConfiguration (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkConfiguration *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QNetworkConfiguration ( const QNetworkConfiguration & other )
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEW2 )
{
  QNetworkConfiguration * par1 = (QNetworkConfiguration *) _qt5xhb_itemGetPtr(1);
  QNetworkConfiguration * o = new QNetworkConfiguration ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkConfiguration *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QNetworkConfiguration ()
//[2]QNetworkConfiguration ( const QNetworkConfiguration & other )

HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKCONFIGURATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKCONFIGURATION(1) )
  {
    HB_FUNC_EXEC( QNETWORKCONFIGURATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QNETWORKCONFIGURATION_DELETE )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
BearerType bearerType () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_BEARERTYPE )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bearerType (  ) );
  }
}


/*
QString bearerTypeName () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_BEARERTYPENAME )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->bearerTypeName (  ).toLatin1().data() );
  }
}


/*
QList<QNetworkConfiguration> children () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_CHILDREN )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QNetworkConfiguration> list = obj->children (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QNETWORKCONFIGURATION" );
    #else
    pDynSym = hb_dynsymFindName( "QNETWORKCONFIGURATION" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QNetworkConfiguration *) new QNetworkConfiguration ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QString identifier () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_IDENTIFIER )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->identifier (  ).toLatin1().data() );
  }
}


/*
bool isRoamingAvailable () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_ISROAMINGAVAILABLE )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRoamingAvailable (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_ISVALID )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_NAME )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
Purpose purpose () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_PURPOSE )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->purpose (  ) );
  }
}


/*
StateFlags state () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_STATE )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state (  ) );
  }
}


/*
Type type () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_TYPE )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}



HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEWFROM )
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

HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKCONFIGURATION_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKCONFIGURATION_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKCONFIGURATION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKCONFIGURATION_SETSELFDESTRUCTION )
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