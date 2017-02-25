/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QQMLCONTEXT
REQUEST QURL
#endif

CLASS QQmlComponent INHERIT QObject

   DATA class_id INIT Class_Id_QQmlComponent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD beginCreate
   METHOD completeCreate
   METHOD create1
   METHOD create2
   METHOD create
   METHOD creationContext
   METHOD isError
   METHOD isLoading
   METHOD isNull
   METHOD isReady
   METHOD progress
   METHOD status
   METHOD url
   METHOD loadUrl1
   METHOD loadUrl2
   METHOD loadUrl
   METHOD setData
   METHOD onProgressChanged
   METHOD onStatusChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlComponent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QQmlComponent>
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
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QQmlComponent>
#endif
#endif

/*
QQmlComponent(QQmlEngine * engine, QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQmlEngine * par1 = (QQmlEngine *) _qtxhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QQmlComponent * o = new QQmlComponent ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlComponent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QQmlComponent(QQmlEngine * engine, const QString & fileName, QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQmlEngine * par1 = (QQmlEngine *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qtxhb_itemGetPtr(3);
  QQmlComponent * o = new QQmlComponent ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlComponent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QQmlComponent(QQmlEngine * engine, const QString & fileName, CompilationMode mode, QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQmlEngine * par1 = (QQmlEngine *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  int par3 = hb_parni(3);
  QObject * par4 = ISNIL(4)? 0 : (QObject *) _qtxhb_itemGetPtr(4);
  QQmlComponent * o = new QQmlComponent ( par1, par2,  (QQmlComponent::CompilationMode) par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlComponent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QQmlComponent(QQmlEngine * engine, const QUrl & url, QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQmlEngine * par1 = (QQmlEngine *) _qtxhb_itemGetPtr(1);
  QUrl * par2 = (QUrl *) _qtxhb_itemGetPtr(2);
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qtxhb_itemGetPtr(3);
  QQmlComponent * o = new QQmlComponent ( par1, *par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlComponent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QQmlComponent(QQmlEngine * engine, const QUrl & url, CompilationMode mode, QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQmlEngine * par1 = (QQmlEngine *) _qtxhb_itemGetPtr(1);
  QUrl * par2 = (QUrl *) _qtxhb_itemGetPtr(2);
  int par3 = hb_parni(3);
  QObject * par4 = ISNIL(4)? 0 : (QObject *) _qtxhb_itemGetPtr(4);
  QQmlComponent * o = new QQmlComponent ( par1, *par2,  (QQmlComponent::CompilationMode) par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlComponent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QQmlComponent(QQmlEngine * engine, QObject * parent = 0)
//[2]QQmlComponent(QQmlEngine * engine, const QString & fileName, QObject * parent = 0)
//[3]QQmlComponent(QQmlEngine * engine, const QString & fileName, CompilationMode mode, QObject * parent = 0)
//[4]QQmlComponent(QQmlEngine * engine, const QUrl & url, QObject * parent = 0)
//[5]QQmlComponent(QQmlEngine * engine, const QUrl & url, CompilationMode mode, QObject * parent = 0)

HB_FUNC_STATIC( QQMLCOMPONENT_NEW )
{
  if( ISBETWEEN(1,2) && ISQQMLENGINE(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QQMLCOMPONENT_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQQMLENGINE(1) && ISCHAR(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QQMLCOMPONENT_NEW2 );
  }
  else if( ISBETWEEN(3,4) && ISQQMLENGINE(1) && ISCHAR(2) && ISNUM(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QQMLCOMPONENT_NEW3 );
  }
  else if( ISBETWEEN(2,3) && ISQQMLENGINE(1) && ISQURL(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QQMLCOMPONENT_NEW4 );
  }
  else if( ISBETWEEN(3,4) && ISQQMLENGINE(1) && ISQURL(2) && ISNUM(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QQMLCOMPONENT_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQMLCOMPONENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQmlComponent * obj = (QQmlComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QObject * beginCreate(QQmlContext * publicContext)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_BEGINCREATE )
{
  QQmlComponent * obj = (QQmlComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlContext * par1 = (QQmlContext *) _qtxhb_itemGetPtr(1);
    QObject * ptr = obj->beginCreate ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
virtual void completeCreate()
*/
HB_FUNC_STATIC( QQMLCOMPONENT_COMPLETECREATE )
{
  QQmlComponent * obj = (QQmlComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->completeCreate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QObject * create(QQmlContext * context = 0)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_CREATE1 )
{
  QQmlComponent * obj = (QQmlComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlContext * par1 = ISNIL(1)? 0 : (QQmlContext *) _qtxhb_itemGetPtr(1);
    QObject * ptr = obj->create ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}

/*
void create(QQmlIncubator & incubator, QQmlContext * context = 0, QQmlContext * forContext = 0)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_CREATE2 )
{
  QQmlComponent * obj = (QQmlComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlIncubator * par1 = (QQmlIncubator *) _qtxhb_itemGetPtr(1);
    QQmlContext * par2 = ISNIL(2)? 0 : (QQmlContext *) _qtxhb_itemGetPtr(2);
    QQmlContext * par3 = ISNIL(3)? 0 : (QQmlContext *) _qtxhb_itemGetPtr(3);
    obj->create ( *par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]virtual QObject * create(QQmlContext * context = 0)
//[2]void create(QQmlIncubator & incubator, QQmlContext * context = 0, QQmlContext * forContext = 0)

HB_FUNC_STATIC( QQMLCOMPONENT_CREATE )
{
  if( ISBETWEEN(0,1) && (ISQQMLCONTEXT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QQMLCOMPONENT_CREATE1 );
  }
  else if( ISBETWEEN(1,3) && ISQQMLINCUBATOR(1) && (ISQQMLCONTEXT(2)||ISNIL(2)) && (ISQQMLCONTEXT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QQMLCOMPONENT_CREATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QQmlContext * creationContext() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_CREATIONCONTEXT )
{
  QQmlComponent * obj = (QQmlComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlContext * ptr = obj->creationContext (  );
    _qt4xhb_createReturnClass ( ptr, "QQMLCONTEXT" );
  }
}



/*
bool isError() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISERROR )
{
  QQmlComponent * obj = (QQmlComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isError (  ) );
  }
}


/*
bool isLoading() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISLOADING )
{
  QQmlComponent * obj = (QQmlComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isLoading (  ) );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISNULL )
{
  QQmlComponent * obj = (QQmlComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
bool isReady() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISREADY )
{
  QQmlComponent * obj = (QQmlComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isReady (  ) );
  }
}


/*
qreal progress() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_PROGRESS )
{
  QQmlComponent * obj = (QQmlComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->progress (  ) );
  }
}


/*
Status status() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_STATUS )
{
  QQmlComponent * obj = (QQmlComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status (  ) );
  }
}


/*
QUrl url() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_URL )
{
  QQmlComponent * obj = (QQmlComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
void loadUrl(const QUrl & url)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_LOADURL1 )
{
  QQmlComponent * obj = (QQmlComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    obj->loadUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void loadUrl(const QUrl & url, CompilationMode mode)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_LOADURL2 )
{
  QQmlComponent * obj = (QQmlComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->loadUrl ( *par1,  (QQmlComponent::CompilationMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void loadUrl(const QUrl & url)
//[2]void loadUrl(const QUrl & url, CompilationMode mode)

HB_FUNC_STATIC( QQMLCOMPONENT_LOADURL )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QQMLCOMPONENT_LOADURL1 );
  }
  else if( ISNUMPAR(2) && ISQURL(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QQMLCOMPONENT_LOADURL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setData(const QByteArray & data, const QUrl & url)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_SETDATA )
{
  QQmlComponent * obj = (QQmlComponent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    QUrl * par2 = (QUrl *) _qtxhb_itemGetPtr(2);
    obj->setData ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
