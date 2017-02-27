/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QDECLARATIVECONTEXT
REQUEST QDECLARATIVEERROR
REQUEST QURL
#endif

CLASS QDeclarativeComponent INHERIT QObject

   DATA class_id INIT Class_Id_QDeclarativeComponent
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD beginCreate
   METHOD completeCreate
   METHOD create
   METHOD creationContext
   METHOD errors
   METHOD isError
   METHOD isLoading
   METHOD isNull
   METHOD isReady
   METHOD loadUrl
   METHOD progress
   METHOD setData
   METHOD status
   METHOD url
   METHOD onProgressChanged
   METHOD onStatusChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeComponent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDeclarativeComponent>
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
#include <QDeclarativeComponent>
#endif
#endif

/*
QDeclarativeComponent ( QDeclarativeEngine * engine, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDeclarativeEngine * par1 = (QDeclarativeEngine *) _qtxhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QDeclarativeComponent * o = new QDeclarativeComponent ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeComponent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDeclarativeComponent ( QDeclarativeEngine * engine, const QString & fileName, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDeclarativeEngine * par1 = (QDeclarativeEngine *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qtxhb_itemGetPtr(3);
  QDeclarativeComponent * o = new QDeclarativeComponent ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeComponent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDeclarativeComponent ( QDeclarativeEngine * engine, const QUrl & url, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDeclarativeEngine * par1 = (QDeclarativeEngine *) _qtxhb_itemGetPtr(1);
  QUrl * par2 = (QUrl *) _qtxhb_itemGetPtr(2);
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qtxhb_itemGetPtr(3);
  QDeclarativeComponent * o = new QDeclarativeComponent ( par1, *par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeComponent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QDeclarativeComponent ( QDeclarativeEngine * engine, QObject * parent = 0 )
//[2]QDeclarativeComponent ( QDeclarativeEngine * engine, const QString & fileName, QObject * parent = 0 )
//[3]QDeclarativeComponent ( QDeclarativeEngine * engine, const QUrl & url, QObject * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVECOMPONENT_NEW )
{
  if( ISBETWEEN(1,2) && ISQDECLARATIVEENGINE(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDECLARATIVECOMPONENT_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQDECLARATIVEENGINE(1) && ISCHAR(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDECLARATIVECOMPONENT_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISQDECLARATIVEENGINE(1) && ISQURL(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDECLARATIVECOMPONENT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVECOMPONENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QObject * beginCreate ( QDeclarativeContext * context )
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_BEGINCREATE )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDeclarativeContext * par1 = (QDeclarativeContext *) _qtxhb_itemGetPtr(1);
    QObject * ptr = obj->beginCreate ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
virtual void completeCreate ()
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_COMPLETECREATE )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->completeCreate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QObject * create ( QDeclarativeContext * context = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_CREATE )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDeclarativeContext * par1 = ISNIL(1)? 0 : (QDeclarativeContext *) _qtxhb_itemGetPtr(1);
    QObject * ptr = obj->create ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QDeclarativeContext * creationContext () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_CREATIONCONTEXT )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDeclarativeContext * ptr = obj->creationContext (  );
    _qt5xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
  }
}


/*
QList<QDeclarativeError> errors () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_ERRORS )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QDeclarativeError> list = obj->errors (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QDECLARATIVEERROR" );
    #else
    pDynSym = hb_dynsymFindName( "QDECLARATIVEERROR" );
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
        hb_itemPutPtr( pItem, (QDeclarativeError *) new QDeclarativeError ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
bool isError () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_ISERROR )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isError (  ) );
  }
}


/*
bool isLoading () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_ISLOADING )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isLoading (  ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_ISNULL )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
bool isReady () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_ISREADY )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isReady (  ) );
  }
}


/*
void loadUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_LOADURL )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    obj->loadUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal progress () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_PROGRESS )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->progress (  ) );
  }
}


/*
void setData ( const QByteArray & data, const QUrl & url )
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_SETDATA )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    QUrl * par2 = (QUrl *) _qtxhb_itemGetPtr(2);
    obj->setData ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Status status () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_STATUS )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status (  ) );
  }
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_URL )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}




#pragma ENDDUMP
