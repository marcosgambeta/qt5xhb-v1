/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QDECLARATIVEENGINE
REQUEST QDECLARATIVEERROR
REQUEST QSIZE
REQUEST QDECLARATIVECONTEXT
REQUEST QGRAPHICSOBJECT
REQUEST QURL
#endif

CLASS QDeclarativeView INHERIT QGraphicsView

   DATA class_id INIT Class_Id_QDeclarativeView
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD engine
   METHOD errors
   METHOD initialSize
   METHOD resizeMode
   METHOD rootContext
   METHOD rootObject
   METHOD setResizeMode
   METHOD setSource
   METHOD source
   METHOD status
   METHOD onSceneResized
   METHOD onStatusChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDeclarativeView>
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
#include <QDeclarativeView>
#endif
#endif

#include <QDeclarativeError>

/*
QDeclarativeView ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QDeclarativeView * o = new QDeclarativeView ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDeclarativeView ( const QUrl & source, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  QDeclarativeView * o = new QDeclarativeView ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QDeclarativeView ( QWidget * parent = 0 )
//[2]QDeclarativeView ( const QUrl & source, QWidget * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVEVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDECLARATIVEVIEW_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDECLARATIVEVIEW_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVEVIEW_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDeclarativeView * obj = (QDeclarativeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDeclarativeEngine * engine () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_ENGINE )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDeclarativeEngine * ptr = obj->engine (  );
    _qt5xhb_createReturnClass ( ptr, "QDECLARATIVEENGINE" );
  }
}


/*
QList<QDeclarativeError> errors () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_ERRORS )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qtxhb_itemGetPtrStackSelfItem();
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
QSize initialSize () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_INITIALSIZE )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->initialSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
ResizeMode resizeMode () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_RESIZEMODE )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->resizeMode (  ) );
  }
}


/*
QDeclarativeContext * rootContext () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_ROOTCONTEXT )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDeclarativeContext * ptr = obj->rootContext (  );
    _qt5xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
  }
}


/*
QGraphicsObject * rootObject () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_ROOTOBJECT )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsObject * ptr = obj->rootObject (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSOBJECT" );
  }
}


/*
void setResizeMode ( ResizeMode )
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_SETRESIZEMODE )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setResizeMode (  (QDeclarativeView::ResizeMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSource ( const QUrl & url )
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_SETSOURCE )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    obj->setSource ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl source () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_SOURCE )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->source (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
Status status () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_STATUS )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status (  ) );
  }
}




#pragma ENDDUMP
