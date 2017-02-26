/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"



CLASS QOpenGLDebugMessage

   DATA pointer
   DATA class_id INIT Class_Id_QOpenGLDebugMessage
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD swap
   METHOD source
   METHOD type
   METHOD severity
   METHOD id
   METHOD message
   METHOD createApplicationMessage
   METHOD createThirdPartyMessage
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLDebugMessage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QOpenGLDebugMessage>
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
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QOpenGLDebugMessage>
#endif
#endif

/*
QOpenGLDebugMessage()
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QOpenGLDebugMessage * o = new QOpenGLDebugMessage (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLDebugMessage *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QOpenGLDebugMessage(const QOpenGLDebugMessage &debugMessage)
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QOpenGLDebugMessage * par1 = (QOpenGLDebugMessage *) _qtxhb_itemGetPtr(1);
  QOpenGLDebugMessage * o = new QOpenGLDebugMessage ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLDebugMessage *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEW )
{
  // TODO: implementar
}

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QOpenGLDebugMessage &debugMessage)
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SWAP )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLDebugMessage * par1 = (QOpenGLDebugMessage *) _qtxhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Source source() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SOURCE )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->source (  ) );
  }
}


/*
Type type() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_TYPE )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}


/*
Severity severity() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SEVERITY )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->severity (  ) );
  }
}


/*
GLuint id() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_ID )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->id (  ) );
  }
}


/*
QString message() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_MESSAGE )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->message (  ).toLatin1().data() );
  }
}


/*
static QOpenGLDebugMessage createApplicationMessage(const QString &text,GLuint id = 0,Severity severity = NotificationSeverity,Type type = OtherType)
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_CREATEAPPLICATIONMESSAGE )
{
  QString par1 = QLatin1String( hb_parc(1) );
  int par3 = ISNIL(3)? (int) QOpenGLDebugMessage::NotificationSeverity : hb_parni(3);
  int par4 = ISNIL(4)? (int) QOpenGLDebugMessage::OtherType : hb_parni(4);
  QOpenGLDebugMessage * ptr = new QOpenGLDebugMessage( QOpenGLDebugMessage::createApplicationMessage ( par1, (GLuint) ISNIL(2)? 0 : hb_parni(2),  (QOpenGLDebugMessage::Severity) par3,  (QOpenGLDebugMessage::Type) par4 ) );
  _qt4xhb_createReturnClass ( ptr, "QOPENGLDEBUGMESSAGE" );
}


/*
static QOpenGLDebugMessage createThirdPartyMessage(const QString &text,GLuint id = 0,Severity severity = NotificationSeverity,Type type = OtherType)
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_CREATETHIRDPARTYMESSAGE )
{
  QString par1 = QLatin1String( hb_parc(1) );
  int par3 = ISNIL(3)? (int) QOpenGLDebugMessage::NotificationSeverity : hb_parni(3);
  int par4 = ISNIL(4)? (int) QOpenGLDebugMessage::OtherType : hb_parni(4);
  QOpenGLDebugMessage * ptr = new QOpenGLDebugMessage( QOpenGLDebugMessage::createThirdPartyMessage ( par1, (GLuint) ISNIL(2)? 0 : hb_parni(2),  (QOpenGLDebugMessage::Severity) par3,  (QOpenGLDebugMessage::Type) par4 ) );
  _qt4xhb_createReturnClass ( ptr, "QOPENGLDEBUGMESSAGE" );
}



HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEWFROM )
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

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QOPENGLDEBUGMESSAGE_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QOPENGLDEBUGMESSAGE_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SETSELFDESTRUCTION )
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