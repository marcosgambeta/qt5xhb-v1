/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QQMLCONTEXT
REQUEST QURL
#endif

CLASS QQmlComponent INHERIT QObject

   METHOD new
   METHOD delete
   METHOD beginCreate
   METHOD completeCreate
   METHOD create
   METHOD creationContext
   METHOD isError
   METHOD isLoading
   METHOD isNull
   METHOD isReady
   METHOD progress
   METHOD status
   METHOD url
   METHOD loadUrl
   METHOD setData

   METHOD onProgressChanged
   METHOD onStatusChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QQmlComponent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtQml/QQmlComponent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtQml/QQmlComponent>
#endif

#include <QtQml/QQmlContext>

HB_FUNC_STATIC( QQMLCOMPONENT_NEW )
{
  if( ISBETWEEN(1,2) && ISQQMLENGINE(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    /*
    QQmlComponent( QQmlEngine * engine, QObject * parent = 0 )
    */
    QQmlComponent * obj = new QQmlComponent( PQQMLENGINE(1), OPQOBJECT(2,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(2,3) && ISQQMLENGINE(1) && HB_ISCHAR(2) && (ISQOBJECT(3)||HB_ISNIL(3)) )
  {
    /*
    QQmlComponent( QQmlEngine * engine, const QString & fileName, QObject * parent = 0 )
    */
    QQmlComponent * obj = new QQmlComponent( PQQMLENGINE(1), PQSTRING(2), OPQOBJECT(3,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(3,4) && ISQQMLENGINE(1) && HB_ISCHAR(2) && HB_ISNUM(3) && (ISQOBJECT(4)||HB_ISNIL(4)) )
  {
    /*
    QQmlComponent( QQmlEngine * engine, const QString & fileName, QQmlComponent::CompilationMode mode, QObject * parent = 0)
    */
    QQmlComponent * obj = new QQmlComponent( PQQMLENGINE(1), PQSTRING(2), (QQmlComponent::CompilationMode) hb_parni(3), OPQOBJECT(4,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(2,3) && ISQQMLENGINE(1) && ISQURL(2) && (ISQOBJECT(3)||HB_ISNIL(3)) )
  {
    /*
    QQmlComponent( QQmlEngine * engine, const QUrl & url, QObject * parent = 0 )
    */
    QQmlComponent * obj = new QQmlComponent( PQQMLENGINE(1), *PQURL(2), OPQOBJECT(3,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(3,4) && ISQQMLENGINE(1) && ISQURL(2) && HB_ISNUM(3) && (ISQOBJECT(4)||HB_ISNIL(4)) )
  {
    /*
    QQmlComponent( QQmlEngine * engine, const QUrl & url, QQmlComponent::CompilationMode mode, QObject * parent = 0 )
    */
    QQmlComponent * obj = new QQmlComponent( PQQMLENGINE(1), *PQURL(2), (QQmlComponent::CompilationMode) hb_parni(3), OPQOBJECT(4,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QQMLCOMPONENT_DELETE )
{
  QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QObject * beginCreate( QQmlContext * publicContext )
*/
HB_FUNC_STATIC( QQMLCOMPONENT_BEGINCREATE )
{
  QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQQMLCONTEXT(1) )
    {
#endif
      QObject * ptr = obj->beginCreate( PQQMLCONTEXT(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void completeCreate()
*/
HB_FUNC_STATIC( QQMLCOMPONENT_COMPLETECREATE )
{
  QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->completeCreate();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QQMLCOMPONENT_CREATE )
{
  if( ISBETWEEN(0,1) && (ISQQMLCONTEXT(1)||HB_ISNIL(1)) )
  {
    /*
    virtual QObject * create( QQmlContext * context = 0 )
    */
    QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QObject * ptr = obj->create( OPQQMLCONTEXT(1,0) );
      Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
    }
  }
  else if( ISBETWEEN(1,3) && ISQQMLINCUBATOR(1) && (ISQQMLCONTEXT(2)||HB_ISNIL(2)) && (ISQQMLCONTEXT(3)||HB_ISNIL(3)) )
  {
    /*
    void create( QQmlIncubator & incubator, QQmlContext * context = 0, QQmlContext * forContext = 0 )
    */
    QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->create( *PQQMLINCUBATOR(1), OPQQMLCONTEXT(2,0), OPQQMLCONTEXT(3,0) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QQmlContext * creationContext() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_CREATIONCONTEXT )
{
  QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQmlContext * ptr = obj->creationContext();
      Qt5xHb::createReturnQObjectClass( ptr, "QQMLCONTEXT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isError() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISERROR )
{
  QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isError() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isLoading() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISLOADING )
{
  QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLoading() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISNULL )
{
  QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isReady() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISREADY )
{
  QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReady() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qreal progress() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_PROGRESS )
{
  QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->progress() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QQmlComponent::Status status() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_STATUS )
{
  QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->status() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QUrl url() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_URL )
{
  QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->url() );
      Qt5xHb::createReturnClass(ptr, "QURL", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QQMLCOMPONENT_LOADURL )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    /*
    void loadUrl( const QUrl & url )
    */
    QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->loadUrl( *PQURL(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && ISQURL(1) && HB_ISNUM(2) )
  {
    /*
    void loadUrl( const QUrl & url, QQmlComponent::CompilationMode mode )
    */
    QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->loadUrl( *PQURL(1), (QQmlComponent::CompilationMode) hb_parni(2) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setData( const QByteArray & data, const QUrl & url )
*/
HB_FUNC_STATIC( QQMLCOMPONENT_SETDATA )
{
  QQmlComponent * obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQURL(2) )
    {
#endif
      obj->setData( *PQBYTEARRAY(1), *PQURL(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QQmlComponentSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QQMLCOMPONENT_ONPROGRESSCHANGED )
{
  QQmlComponentSlots_connect_signal( "progressChanged(qreal)", "progressChanged(qreal)" );
}

HB_FUNC_STATIC( QQMLCOMPONENT_ONSTATUSCHANGED )
{
  QQmlComponentSlots_connect_signal( "statusChanged(QQmlComponent::Status)", "statusChanged(QQmlComponent::Status)" );
}

#pragma ENDDUMP
