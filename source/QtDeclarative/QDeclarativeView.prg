/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDECLARATIVEENGINE
REQUEST QDECLARATIVEERROR
REQUEST QSIZE
REQUEST QDECLARATIVECONTEXT
REQUEST QGRAPHICSOBJECT
REQUEST QURL
#endif

CLASS QDeclarativeView INHERIT QGraphicsView

   DATA self_destruction INIT .F.

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
#include <QDeclarativeView>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDeclarativeView>
#endif

#include <QDeclarativeError>

/*
QDeclarativeView ( QWidget * parent = 0 )
*/
void QDeclarativeView_new1 ()
{
  QDeclarativeView * o = new QDeclarativeView ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDeclarativeView ( const QUrl & source, QWidget * parent = 0 )
*/
void QDeclarativeView_new2 ()
{
  QDeclarativeView * o = new QDeclarativeView ( *PQURL(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QDeclarativeView ( QWidget * parent = 0 )
//[2]QDeclarativeView ( const QUrl & source, QWidget * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVEVIEW_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QDeclarativeView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTQWIDGET(2) )
  {
    QDeclarativeView_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVEVIEW_DELETE )
{
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
}

/*
QDeclarativeEngine * engine () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_ENGINE )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDeclarativeEngine * ptr = obj->engine ();
    _qt5xhb_createReturnClass ( ptr, "QDECLARATIVEENGINE" );
  }
}

/*
QList<QDeclarativeError> errors () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_ERRORS )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QDeclarativeError> list = obj->errors ();
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
  QDeclarativeView * obj = (QDeclarativeView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->initialSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
ResizeMode resizeMode () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_RESIZEMODE )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->resizeMode () );
  }
}

/*
QDeclarativeContext * rootContext () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_ROOTCONTEXT )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDeclarativeContext * ptr = obj->rootContext ();
    _qt5xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
  }
}

/*
QGraphicsObject * rootObject () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_ROOTOBJECT )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsObject * ptr = obj->rootObject ();
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSOBJECT" );
  }
}

/*
void setResizeMode ( ResizeMode )
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_SETRESIZEMODE )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setResizeMode ( (QDeclarativeView::ResizeMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSource ( const QUrl & url )
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_SETSOURCE )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQURL(1) )
    {
      obj->setSource ( *PQURL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QUrl source () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_SOURCE )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QUrl * ptr = new QUrl( obj->source () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}

/*
Status status () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_STATUS )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->status () );
  }
}

#pragma ENDDUMP
