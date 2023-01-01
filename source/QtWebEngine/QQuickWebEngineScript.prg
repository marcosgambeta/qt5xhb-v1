/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QQuickWebEngineScript INHERIT QObject

   METHOD new
   METHOD delete
   METHOD name
   METHOD setName
   METHOD sourceUrl
   METHOD setSourceUrl
   METHOD sourceCode
   METHOD setSourceCode
   METHOD injectionPoint
   METHOD setInjectionPoint
   METHOD worldId
   METHOD setWorldId
   METHOD runOnSubframes
   METHOD setRunOnSubframes
   METHOD toString

   METHOD onInjectionPointChanged
   METHOD onNameChanged
   METHOD onRunOnSubframesChanged
   METHOD onSourceCodeChanged
   METHOD onSourceUrlChanged
   METHOD onWorldIdChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QQuickWebEngineScript
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QtWebEngine/QQuickWebEngineScript>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QtWebEngine/QQuickWebEngineScript>
#endif
#endif

/*
QQuickWebEngineScript( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QQuickWebEngineScript * obj = new QQuickWebEngineScript( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
~QQuickWebEngineScript()
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
QString name() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
Q_INVOKABLE void setName( const QString & name )
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SETNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setName( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QUrl sourceUrl() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SOURCEURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->sourceUrl() );
      Qt5xHb::createReturnClass(ptr, "QURL", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
Q_INVOKABLE void setSourceUrl( const QUrl & url )
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SETSOURCEURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setSourceUrl( *PQURL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString sourceCode() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SOURCECODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->sourceCode() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
Q_INVOKABLE void setSourceCode( const QString & code )
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SETSOURCECODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setSourceCode( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QQuickWebEngineScript::InjectionPoint injectionPoint() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_INJECTIONPOINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->injectionPoint() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
Q_INVOKABLE void setInjectionPoint( QQuickWebEngineScript::InjectionPoint injectionPoint )
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SETINJECTIONPOINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setInjectionPoint( (QQuickWebEngineScript::InjectionPoint) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QQuickWebEngineScript::ScriptWorldId worldId() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_WORLDID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->worldId() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
Q_INVOKABLE void setWorldId( QQuickWebEngineScript::ScriptWorldId scriptWorldId )
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SETWORLDID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setWorldId( (QQuickWebEngineScript::ScriptWorldId) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool runOnSubframes() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_RUNONSUBFRAMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->runOnSubframes() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
Q_INVOKABLE void setRunOnSubframes( bool on )
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SETRUNONSUBFRAMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setRunOnSubframes( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Q_INVOKABLE QString toString() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_TOSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toString() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

void QQuickWebEngineScriptSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_ONINJECTIONPOINTCHANGED )
{
  QQuickWebEngineScriptSlots_connect_signal( "injectionPointChanged(QQuickWebEngineScript::InjectionPoint)", "injectionPointChanged(QQuickWebEngineScript::InjectionPoint)" );
}

HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_ONNAMECHANGED )
{
  QQuickWebEngineScriptSlots_connect_signal( "nameChanged(QString)", "nameChanged(QString)" );
}

HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_ONRUNONSUBFRAMESCHANGED )
{
  QQuickWebEngineScriptSlots_connect_signal( "runOnSubframesChanged(bool)", "runOnSubframesChanged(bool)" );
}

HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_ONSOURCECODECHANGED )
{
  QQuickWebEngineScriptSlots_connect_signal( "sourceCodeChanged(QString)", "sourceCodeChanged(QString)" );
}

HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_ONSOURCEURLCHANGED )
{
  QQuickWebEngineScriptSlots_connect_signal( "sourceUrlChanged(QUrl)", "sourceUrlChanged(QUrl)" );
}

HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_ONWORLDIDCHANGED )
{
  QQuickWebEngineScriptSlots_connect_signal( "worldIdChanged(QQuickWebEngineScript::ScriptWorldId)", "worldIdChanged(QQuickWebEngineScript::ScriptWorldId)" );
}

#pragma ENDDUMP
