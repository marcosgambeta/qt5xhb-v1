/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QQMLCONTEXT
REQUEST QURL
#endif

CLASS QQmlComponent INHERIT QObject

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
#include <QQmlComponent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQmlComponent>
#endif

/*
QQmlComponent(QQmlEngine * engine, QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_NEW1 )
{
  QQmlComponent * o = new QQmlComponent ( PQQMLENGINE(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlComponent(QQmlEngine * engine, const QString & fileName, QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_NEW2 )
{
  QQmlComponent * o = new QQmlComponent ( PQQMLENGINE(1), PQSTRING(2), OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlComponent(QQmlEngine * engine, const QString & fileName, CompilationMode mode, QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_NEW3 )
{
  QQmlComponent * o = new QQmlComponent ( PQQMLENGINE(1), PQSTRING(2), (QQmlComponent::CompilationMode) hb_parni(3), OPQOBJECT(4,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlComponent(QQmlEngine * engine, const QUrl & url, QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_NEW4 )
{
  QQmlComponent * o = new QQmlComponent ( PQQMLENGINE(1), *PQURL(2), OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlComponent(QQmlEngine * engine, const QUrl & url, CompilationMode mode, QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_NEW5 )
{
  QQmlComponent * o = new QQmlComponent ( PQQMLENGINE(1), *PQURL(2), (QQmlComponent::CompilationMode) hb_parni(3), OPQOBJECT(4,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QQmlComponent(QQmlEngine * engine, QObject * parent = 0)
//[2]QQmlComponent(QQmlEngine * engine, const QString & fileName, QObject * parent = 0)
//[3]QQmlComponent(QQmlEngine * engine, const QString & fileName, CompilationMode mode, QObject * parent = 0)
//[4]QQmlComponent(QQmlEngine * engine, const QUrl & url, QObject * parent = 0)
//[5]QQmlComponent(QQmlEngine * engine, const QUrl & url, CompilationMode mode, QObject * parent = 0)

HB_FUNC_STATIC( QQMLCOMPONENT_NEW )
{
  if( ISBETWEEN(1,2) && ISQQMLENGINE(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QQMLCOMPONENT_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQQMLENGINE(1) && ISCHAR(2) && ISOPTQOBJECT(3) )
  {
    HB_FUNC_EXEC( QQMLCOMPONENT_NEW2 );
  }
  else if( ISBETWEEN(3,4) && ISQQMLENGINE(1) && ISCHAR(2) && ISNUM(3) && ISOPTQOBJECT(4) )
  {
    HB_FUNC_EXEC( QQMLCOMPONENT_NEW3 );
  }
  else if( ISBETWEEN(2,3) && ISQQMLENGINE(1) && ISQURL(2) && ISOPTQOBJECT(3) )
  {
    HB_FUNC_EXEC( QQMLCOMPONENT_NEW4 );
  }
  else if( ISBETWEEN(3,4) && ISQQMLENGINE(1) && ISQURL(2) && ISNUM(3) && ISOPTQOBJECT(4) )
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
}

/*
virtual QObject * beginCreate(QQmlContext * publicContext)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_BEGINCREATE )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->beginCreate ( PQQMLCONTEXT(1) );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
virtual void completeCreate()
*/
HB_FUNC_STATIC( QQMLCOMPONENT_COMPLETECREATE )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->completeCreate ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QObject * create(QQmlContext * context = 0)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_CREATE1 )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlContext * par1 = ISNIL(1)? 0 : (QQmlContext *) _qt5xhb_itemGetPtr(1);
    QObject * ptr = obj->create ( par1 );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
void create(QQmlIncubator & incubator, QQmlContext * context = 0, QQmlContext * forContext = 0)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_CREATE2 )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlIncubator * par1 = (QQmlIncubator *) _qt5xhb_itemGetPtr(1);
    QQmlContext * par2 = ISNIL(2)? 0 : (QQmlContext *) _qt5xhb_itemGetPtr(2);
    QQmlContext * par3 = ISNIL(3)? 0 : (QQmlContext *) _qt5xhb_itemGetPtr(3);
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
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlContext * ptr = obj->creationContext ();
    _qt5xhb_createReturnClass ( ptr, "QQMLCONTEXT" );
  }
}



/*
bool isError() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISERROR )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isError () );
  }
}


/*
bool isLoading() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISLOADING )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isLoading () );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISNULL )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
bool isReady() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISREADY )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isReady () );
  }
}


/*
qreal progress() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_PROGRESS )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->progress () );
  }
}


/*
Status status() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_STATUS )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status () );
  }
}


/*
QUrl url() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_URL )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
void loadUrl(const QUrl & url)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_LOADURL1 )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->loadUrl ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void loadUrl(const QUrl & url, CompilationMode mode)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_LOADURL2 )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->loadUrl ( *PQURL(1), (QQmlComponent::CompilationMode) hb_parni(2) );
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
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setData ( *PQBYTEARRAY(1), *PQURL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
