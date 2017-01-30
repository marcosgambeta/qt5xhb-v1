/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSTRINGREF

CLASS QXmlStreamEntityDeclaration

   DATA pointer
   DATA class_id INIT Class_Id_QXmlStreamEntityDeclaration
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD notationName
   METHOD publicId
   METHOD systemId
   METHOD value
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlStreamEntityDeclaration
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QXmlStreamEntityDeclaration>
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
#include <QXmlStreamEntityDeclaration>
#endif
#endif

/*
QXmlStreamEntityDeclaration()
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlStreamEntityDeclaration * o = new QXmlStreamEntityDeclaration (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamEntityDeclaration *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QXmlStreamEntityDeclaration(const QXmlStreamEntityDeclaration & other)
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlStreamEntityDeclaration * par1 = (QXmlStreamEntityDeclaration *) _qtxhb_itemGetPtr(1);
  QXmlStreamEntityDeclaration * o = new QXmlStreamEntityDeclaration ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamEntityDeclaration *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QXmlStreamEntityDeclaration()
//[2]QXmlStreamEntityDeclaration(const QXmlStreamEntityDeclaration & other)

HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSTREAMENTITYDECLARATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMENTITYDECLARATION(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMENTITYDECLARATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QStringRef name() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NAME )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->name (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef notationName() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NOTATIONNAME )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->notationName (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef publicId() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_PUBLICID )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->publicId (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef systemId() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_SYSTEMID )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->systemId (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef value() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_VALUE )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->value (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}



HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NEWFROM )
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

HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QXMLSTREAMENTITYDECLARATION_NEWFROM );
}

HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QXMLSTREAMENTITYDECLARATION_NEWFROM );
}

HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_SETSELFDESTRUCTION )
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