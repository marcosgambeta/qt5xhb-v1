/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QXmlLexicalHandler

   DATA pointer
   DATA class_id INIT Class_Id_QXmlLexicalHandler
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QXmlLexicalHandler>
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
#include <QXmlLexicalHandler>
#endif
#endif

HB_FUNC_STATIC( QXMLLEXICALHANDLER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
virtual bool comment ( const QString & ch ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_COMMENT )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->comment ( par1 ) );
  }
}


/*
virtual bool endCDATA () = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ENDCDATA )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->endCDATA (  ) );
  }
}


/*
virtual bool endDTD () = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ENDDTD )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->endDTD (  ) );
  }
}


/*
virtual bool endEntity ( const QString & name ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ENDENTITY )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->endEntity ( par1 ) );
  }
}


/*
virtual QString errorString () const = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ERRORSTRING )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
virtual bool startCDATA () = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_STARTCDATA )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->startCDATA (  ) );
  }
}


/*
virtual bool startDTD ( const QString & name, const QString & publicId, const QString & systemId ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_STARTDTD )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    hb_retl( obj->startDTD ( par1, par2, par3 ) );
  }
}


/*
virtual bool startEntity ( const QString & name ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_STARTENTITY )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->startEntity ( par1 ) );
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