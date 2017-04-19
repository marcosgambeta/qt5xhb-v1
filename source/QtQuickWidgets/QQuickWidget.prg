/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QQMLENGINE
REQUEST QQMLCONTEXT
REQUEST QQUICKITEM
REQUEST QQMLERROR
REQUEST QSIZE
REQUEST QSURFACEFORMAT
#endif

CLASS QQuickWidget INHERIT QWidget

   DATA class_id INIT Class_Id_QQuickWidget
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD source
   METHOD setSource
   METHOD engine
   METHOD rootContext
   METHOD rootObject
   METHOD resizeMode
   METHOD setResizeMode
   METHOD status
   METHOD errors
   METHOD sizeHint
   METHOD initialSize
   METHOD setContent
   METHOD format
   METHOD setFormat

   METHOD onStatusChanged
   METHOD onSceneGraphError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuickWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QQuickWidget>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QQuickWidget>
#endif
#endif

#include <QQmlError>

/*
explicit QQuickWidget(QWidget *parent = 0)
*/
HB_FUNC_STATIC( QQUICKWIDGET_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QQuickWidget * o = new QQuickWidget ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QQuickWidget(QQmlEngine* engine, QWidget *parent)
*/
HB_FUNC_STATIC( QQUICKWIDGET_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQmlEngine * par1 = (QQmlEngine *) _qt5xhb_itemGetPtr(1);
  QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
  QQuickWidget * o = new QQuickWidget ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QQuickWidget(const QUrl &source, QWidget *parent = 0)
*/
HB_FUNC_STATIC( QQUICKWIDGET_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QQuickWidget * o = new QQuickWidget ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


//[1]explicit QQuickWidget(QWidget *parent = 0)
//[2]QQuickWidget(QQmlEngine* engine, QWidget *parent)
//[3]QQuickWidget(const QUrl &source, QWidget *parent = 0)

HB_FUNC_STATIC( QQUICKWIDGET_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QQUICKWIDGET_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQQMLENGINE(1) && ISQWIDGET(2) )
  {
    HB_FUNC_EXEC( QQUICKWIDGET_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QQUICKWIDGET_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QQUICKWIDGET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QUrl source() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_SOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->source (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}

/*
void setSource(const QUrl&)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->setSource ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QQmlEngine* engine() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ENGINE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlEngine * ptr = obj->engine (  );
    _qt5xhb_createReturnClass ( ptr, "QQMLENGINE" );
  }
#endif
}


/*
QQmlContext* rootContext() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ROOTCONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlContext * ptr = obj->rootContext (  );
    _qt5xhb_createReturnClass ( ptr, "QQMLCONTEXT" );
  }
#endif
}


/*
QQuickItem *rootObject() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ROOTOBJECT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuickItem * ptr = obj->rootObject (  );
    _qt5xhb_createReturnClass ( ptr, "QQUICKITEM" );
  }
#endif
}


/*
ResizeMode resizeMode() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_RESIZEMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->resizeMode (  ) );
  }
#endif
}

/*
void setResizeMode(ResizeMode)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETRESIZEMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setResizeMode (  (QQuickWidget::ResizeMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
Status status() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_STATUS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status (  ) );
  }
#endif
}


/*
QList<QQmlError> errors() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ERRORS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QQmlError> list = obj->errors (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QQMLERROR" );
    #else
    pDynSym = hb_dynsymFindName( "QQMLERROR" );
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
        hb_itemPutPtr( pItem, (QQmlError *) new QQmlError ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
QSize sizeHint() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_SIZEHINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
#endif
}


/*
QSize initialSize() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_INITIALSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->initialSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
#endif
}


/*
void setContent(const QUrl& url, QQmlComponent *component, QObject *item)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETCONTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    QQmlComponent * par2 = (QQmlComponent *) _qt5xhb_itemGetPtr(2);
    QObject * par3 = (QObject *) _qt5xhb_itemGetPtr(3);
    obj->setContent ( *par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QSurfaceFormat format() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_FORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * ptr = new QSurfaceFormat( obj->format (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSURFACEFORMAT" );
  }
#endif
}

/*
void setFormat(const QSurfaceFormat &format)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * par1 = (QSurfaceFormat *) _qt5xhb_itemGetPtr(1);
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
