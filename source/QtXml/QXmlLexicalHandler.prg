/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QXmlLexicalHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD comment
   METHOD endCDATA
   METHOD endDTD
   METHOD endEntity
   METHOD errorString
   METHOD startCDATA
   METHOD startDTD
   METHOD startEntity

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlLexicalHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXmlLexicalHandler>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlLexicalHandler>
#endif

HB_FUNC_STATIC( QXMLLEXICALHANDLER_DELETE )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool comment ( const QString & ch ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_COMMENT )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->comment ( PQSTRING(1) ) );
  }
}


/*
virtual bool endCDATA () = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ENDCDATA )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->endCDATA () );
  }
}


/*
virtual bool endDTD () = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ENDDTD )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->endDTD () );
  }
}


/*
virtual bool endEntity ( const QString & name ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ENDENTITY )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->endEntity ( PQSTRING(1) ) );
  }
}


/*
virtual QString errorString () const = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ERRORSTRING )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
virtual bool startCDATA () = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_STARTCDATA )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->startCDATA () );
  }
}


/*
virtual bool startDTD ( const QString & name, const QString & publicId, const QString & systemId ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_STARTDTD )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->startDTD ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
  }
}


/*
virtual bool startEntity ( const QString & name ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_STARTENTITY )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->startEntity ( PQSTRING(1) ) );
  }
}



HB_FUNC_STATIC( QXMLLEXICALHANDLER_NEWFROM )
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

HB_FUNC_STATIC( QXMLLEXICALHANDLER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLLEXICALHANDLER_NEWFROM );
}

HB_FUNC_STATIC( QXMLLEXICALHANDLER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLLEXICALHANDLER_NEWFROM );
}

HB_FUNC_STATIC( QXMLLEXICALHANDLER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLLEXICALHANDLER_SETSELFDESTRUCTION )
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