/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBDATABASE
#endif

CLASS QWebSecurityOrigin

   DATA pointer
   DATA class_id INIT Class_Id_QWebSecurityOrigin
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD databaseQuota
   METHOD databaseUsage
   METHOD databases
   METHOD host
   METHOD port
   METHOD scheme
   METHOD setDatabaseQuota
   METHOD addLocalScheme
   METHOD allOrigins
   METHOD localSchemes
   METHOD removeLocalScheme
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebSecurityOrigin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWebSecurityOrigin>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWebSecurityOrigin>
#endif

#include <QStringList>
#include <QWebDatabase>

/*
QWebSecurityOrigin ( const QWebSecurityOrigin & other )
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_NEW )
{
  QWebSecurityOrigin * par1 = (QWebSecurityOrigin *) _qt5xhb_itemGetPtr(1);
  QWebSecurityOrigin * o = new QWebSecurityOrigin ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}


HB_FUNC_STATIC( QWEBSECURITYORIGIN_DELETE )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qint64 databaseQuota () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_DATABASEQUOTA )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->databaseQuota (  ) );
  }
}


/*
qint64 databaseUsage () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_DATABASEUSAGE )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->databaseUsage (  ) );
  }
}


/*
QList<QWebDatabase> databases () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_DATABASES )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWebDatabase> list = obj->databases (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWEBDATABASE" );
    #else
    pDynSym = hb_dynsymFindName( "QWEBDATABASE" );
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
        hb_itemPutPtr( pItem, (QWebDatabase *) new QWebDatabase ( list[i] ) );
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
QString host () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_HOST )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->host (  ).toLatin1().data() );
  }
}


/*
int port () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_PORT )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->port (  ) );
  }
}


/*
QString scheme () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_SCHEME )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->scheme (  ).toLatin1().data() );
  }
}


/*
void setDatabaseQuota ( qint64 quota )
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_SETDATABASEQUOTA )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDatabaseQuota ( (qint64) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void addLocalScheme ( const QString & scheme )
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_ADDLOCALSCHEME )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QWebSecurityOrigin::addLocalScheme ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QList<QWebSecurityOrigin> allOrigins ()
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_ALLORIGINS )
{
  QList<QWebSecurityOrigin> list = QWebSecurityOrigin::allOrigins (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QWEBSECURITYORIGIN" );
  #else
  pDynSym = hb_dynsymFindName( "QWEBSECURITYORIGIN" );
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
      hb_itemPutPtr( pItem, (QWebSecurityOrigin *) new QWebSecurityOrigin ( list[i] ) );
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


/*
static QStringList localSchemes ()
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_LOCALSCHEMES )
{
  QStringList strl = QWebSecurityOrigin::localSchemes (  );
  _qt5xhb_convert_qstringlist_to_array ( strl );
}


/*
static void removeLocalScheme ( const QString & scheme )
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_REMOVELOCALSCHEME )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QWebSecurityOrigin::removeLocalScheme ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QWEBSECURITYORIGIN_NEWFROM )
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

HB_FUNC_STATIC( QWEBSECURITYORIGIN_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWEBSECURITYORIGIN_NEWFROM );
}

HB_FUNC_STATIC( QWEBSECURITYORIGIN_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWEBSECURITYORIGIN_NEWFROM );
}

HB_FUNC_STATIC( QWEBSECURITYORIGIN_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBSECURITYORIGIN_SETSELFDESTRUCTION )
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