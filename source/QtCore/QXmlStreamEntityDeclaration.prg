/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamEntityDeclaration

   DATA pointer
   DATA self_destruction INIT .F.

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

#include <Qt>

#ifndef __XHARBOUR__
#include <QXmlStreamEntityDeclaration>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlStreamEntityDeclaration>
#endif

/*
QXmlStreamEntityDeclaration()
*/
void QXmlStreamEntityDeclaration_new1 ()
{
  QXmlStreamEntityDeclaration * o = new QXmlStreamEntityDeclaration ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamEntityDeclaration(const QXmlStreamEntityDeclaration & other)
*/
void QXmlStreamEntityDeclaration_new2 ()
{
  QXmlStreamEntityDeclaration * par1 = (QXmlStreamEntityDeclaration *) _qt5xhb_itemGetPtr(1);
  QXmlStreamEntityDeclaration * o = new QXmlStreamEntityDeclaration ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QXmlStreamEntityDeclaration()
//[2]QXmlStreamEntityDeclaration(const QXmlStreamEntityDeclaration & other)

HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamEntityDeclaration_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMENTITYDECLARATION(1) )
  {
    QXmlStreamEntityDeclaration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_DELETE )
{
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
}

/*
QStringRef name() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NAME )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->name () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef notationName() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NOTATIONNAME )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->notationName () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef publicId() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_PUBLICID )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->publicId () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef systemId() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_SYSTEMID )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->systemId () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef value() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_VALUE )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->value () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
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
  HB_FUNC_EXEC( QXMLSTREAMENTITYDECLARATION_NEWFROM );
}

HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NEWFROMPOINTER )
{
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
