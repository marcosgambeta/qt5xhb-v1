/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QXmlParseException

   DATA pointer
   DATA class_id INIT Class_Id_QXmlParseException
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD columnNumber
   METHOD lineNumber
   METHOD message
   METHOD publicId
   METHOD systemId
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlParseException
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QXmlParseException>
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
#include <QXmlParseException>
#endif
#endif

/*
QXmlParseException ( const QString & name = QString(), int c = -1, int l = -1, const QString & p = QString(), const QString & s = QString() )
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
  int par2 = ISNIL(2)? -1 : hb_parni(2);
  int par3 = ISNIL(3)? -1 : hb_parni(3);
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QString par5 = ISNIL(5)? QString() : QLatin1String( hb_parc(5) );
  QXmlParseException * o = new QXmlParseException ( par1, par2, par3, par4, par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlParseException *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QXmlParseException ( const QXmlParseException & other )
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlParseException * par1 = (QXmlParseException *) _qtxhb_itemGetPtr(1);
  QXmlParseException * o = new QXmlParseException ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlParseException *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QXmlParseException ( const QString & name = QString(), int c = -1, int l = -1, const QString & p = QString(), const QString & s = QString() )
//[2]QXmlParseException ( const QXmlParseException & other )

HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEW )
{
  if( ISBETWEEN(0,5) && (ISCHAR(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QXMLPARSEEXCEPTION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLPARSEEXCEPTION(1) )
  {
    HB_FUNC_EXEC( QXMLPARSEEXCEPTION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLPARSEEXCEPTION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlParseException * obj = (QXmlParseException *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int columnNumber () const
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_COLUMNNUMBER )
{
  QXmlParseException * obj = (QXmlParseException *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnNumber (  ) );
  }
}


/*
int lineNumber () const
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_LINENUMBER )
{
  QXmlParseException * obj = (QXmlParseException *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lineNumber (  ) );
  }
}


/*
QString message () const
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_MESSAGE )
{
  QXmlParseException * obj = (QXmlParseException *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->message (  ).toLatin1().data() );
  }
}


/*
QString publicId () const
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_PUBLICID )
{
  QXmlParseException * obj = (QXmlParseException *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->publicId (  ).toLatin1().data() );
  }
}


/*
QString systemId () const
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_SYSTEMID )
{
  QXmlParseException * obj = (QXmlParseException *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->systemId (  ).toLatin1().data() );
  }
}



HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEWFROM )
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

HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEWFROMOBJECT )
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
  HB_FUNC_EXEC( QXMLPARSEEXCEPTION_NEWFROM );
}

HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEWFROMPOINTER )
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
  HB_FUNC_EXEC( QXMLPARSEEXCEPTION_NEWFROM );
}

HB_FUNC_STATIC( QXMLPARSEEXCEPTION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLPARSEEXCEPTION_SETSELFDESTRUCTION )
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