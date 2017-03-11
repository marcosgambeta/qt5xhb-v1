/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QQmlScriptString

   DATA pointer
   DATA class_id INIT Class_Id_QQmlScriptString
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD booleanLiteral
   METHOD isEmpty
   METHOD isNullLiteral
   METHOD isUndefinedLiteral
   METHOD numberLiteral
   METHOD stringLiteral
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlScriptString
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQmlScriptString>
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
#include <QQmlScriptString>
#endif

/*
QQmlScriptString()
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_NEW1 )
{
  QQmlScriptString * o = new QQmlScriptString (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlScriptString *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QQmlScriptString(const QQmlScriptString & other)
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_NEW2 )
{
  QQmlScriptString * par1 = (QQmlScriptString *) _qt5xhb_itemGetPtr(1);
  QQmlScriptString * o = new QQmlScriptString ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlScriptString *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QQmlScriptString()
//[2]QQmlScriptString(const QQmlScriptString & other)

HB_FUNC_STATIC( QQMLSCRIPTSTRING_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQMLSCRIPTSTRING_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQQMLSCRIPTSTRING(1) )
  {
    HB_FUNC_EXEC( QQMLSCRIPTSTRING_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQMLSCRIPTSTRING_DELETE )
{
  QQmlScriptString * obj = (QQmlScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool booleanLiteral(bool * ok) const
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_BOOLEANLITERAL )
{
  QQmlScriptString * obj = (QQmlScriptString *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    hb_retl( obj->booleanLiteral ( &par1 ) );
    hb_storl( par1, 1 );
  }
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_ISEMPTY )
{
  QQmlScriptString * obj = (QQmlScriptString *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
bool isNullLiteral() const
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_ISNULLLITERAL )
{
  QQmlScriptString * obj = (QQmlScriptString *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNullLiteral (  ) );
  }
}


/*
bool isUndefinedLiteral() const
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_ISUNDEFINEDLITERAL )
{
  QQmlScriptString * obj = (QQmlScriptString *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isUndefinedLiteral (  ) );
  }
}


/*
qreal numberLiteral(bool * ok) const
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_NUMBERLITERAL )
{
  QQmlScriptString * obj = (QQmlScriptString *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    hb_retnd( obj->numberLiteral ( &par1 ) );
    hb_storl( par1, 1 );
  }
}


/*
QString stringLiteral() const
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_STRINGLITERAL )
{
  QQmlScriptString * obj = (QQmlScriptString *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->stringLiteral (  ).toLatin1().data() );
  }
}



HB_FUNC_STATIC( QQMLSCRIPTSTRING_NEWFROM )
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

HB_FUNC_STATIC( QQMLSCRIPTSTRING_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QQMLSCRIPTSTRING_NEWFROM );
}

HB_FUNC_STATIC( QQMLSCRIPTSTRING_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QQMLSCRIPTSTRING_NEWFROM );
}

HB_FUNC_STATIC( QQMLSCRIPTSTRING_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QQMLSCRIPTSTRING_SETSELFDESTRUCTION )
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