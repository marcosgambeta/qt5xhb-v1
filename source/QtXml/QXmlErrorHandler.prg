/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QXmlErrorHandler

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD error
   METHOD errorString
   METHOD fatalError
   METHOD warning

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlErrorHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXmlErrorHandler>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlErrorHandler>
#endif

HB_FUNC_STATIC( QXMLERRORHANDLER_DELETE )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool error ( const QXmlParseException & exception ) = 0
*/
HB_FUNC_STATIC( QXMLERRORHANDLER_ERROR )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlParseException  * par1 = (QXmlParseException  *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->error ( *par1 ) );
  }
}


/*
virtual QString errorString () const = 0
*/
HB_FUNC_STATIC( QXMLERRORHANDLER_ERRORSTRING )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
virtual bool fatalError ( const QXmlParseException & exception ) = 0
*/
HB_FUNC_STATIC( QXMLERRORHANDLER_FATALERROR )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlParseException * par1 = (QXmlParseException *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->fatalError ( *par1 ) );
  }
}


/*
virtual bool warning ( const QXmlParseException & exception ) = 0
*/
HB_FUNC_STATIC( QXMLERRORHANDLER_WARNING )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlParseException * par1 = (QXmlParseException *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->warning ( *par1 ) );
  }
}



HB_FUNC_STATIC( QXMLERRORHANDLER_NEWFROM )
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

HB_FUNC_STATIC( QXMLERRORHANDLER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLERRORHANDLER_NEWFROM );
}

HB_FUNC_STATIC( QXMLERRORHANDLER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLERRORHANDLER_NEWFROM );
}

HB_FUNC_STATIC( QXMLERRORHANDLER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLERRORHANDLER_SETSELFDESTRUCTION )
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