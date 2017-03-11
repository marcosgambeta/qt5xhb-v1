/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSENSORGESTURERECOGNIZER
#endif

CLASS QSensorGesturePluginInterface

   DATA pointer
   DATA class_id INIT Class_Id_QSensorGesturePluginInterface
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createRecognizers
   METHOD supportedIds
   METHOD name
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSensorGesturePluginInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorGesturePluginInterface>
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
#include <QSensorGesturePluginInterface>
#endif
#endif


HB_FUNC_STATIC( QSENSORGESTUREPLUGININTERFACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesturePluginInterface * obj = (QSensorGesturePluginInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QList <QSensorGestureRecognizer *> createRecognizers() = 0
*/
HB_FUNC_STATIC( QSENSORGESTUREPLUGININTERFACE_CREATERECOGNIZERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesturePluginInterface * obj = (QSensorGesturePluginInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSensorGestureRecognizer *> list = obj->createRecognizers (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSENSORGESTURERECOGNIZER" );
    #else
    pDynSym = hb_dynsymFindName( "QSENSORGESTURERECOGNIZER" );
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
        hb_itemPutPtr( pItem, (QSensorGestureRecognizer *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
virtual QStringList supportedIds() const = 0
*/
HB_FUNC_STATIC( QSENSORGESTUREPLUGININTERFACE_SUPPORTEDIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesturePluginInterface * obj = (QSensorGesturePluginInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->supportedIds (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
#endif
}


/*
virtual QString name() const = 0
*/
HB_FUNC_STATIC( QSENSORGESTUREPLUGININTERFACE_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesturePluginInterface * obj = (QSensorGesturePluginInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
#endif
}



HB_FUNC_STATIC( QSENSORGESTUREPLUGININTERFACE_NEWFROM )
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

HB_FUNC_STATIC( QSENSORGESTUREPLUGININTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSENSORGESTUREPLUGININTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QSENSORGESTUREPLUGININTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSENSORGESTUREPLUGININTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QSENSORGESTUREPLUGININTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSENSORGESTUREPLUGININTERFACE_SETSELFDESTRUCTION )
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