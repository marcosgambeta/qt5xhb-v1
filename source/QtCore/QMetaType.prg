/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QMetaType

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD registerTypedef
   METHOD type
   METHOD typeName
   METHOD isRegistered
   METHOD construct
   METHOD destroy
   METHOD save
   METHOD load

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMetaType
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMetaType>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMetaType>
#endif

/*
static int registerTypedef(const char *typeName, int aliasId)
*/
HB_FUNC_STATIC( QMETATYPE_REGISTERTYPEDEF )
{
  if( ISCHAR(1) && ISNUM(1) )
  {
    const char * par1 = hb_parc(1);
    hb_retni( QMetaType::registerTypedef ( (const char *) par1, PINT(2) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static int type(const char *typeName)
*/
HB_FUNC_STATIC( QMETATYPE_TYPE )
{
  if( ISCHAR(1) )
  {
    const char * par1 = hb_parc(1);
    hb_retni( QMetaType::type ( (const char *) par1 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static const char *typeName(int type)
*/
HB_FUNC_STATIC( QMETATYPE_TYPENAME )
{
  if( ISNUM(1) )
  {
    const char * str1 = QMetaType::typeName ( PINT(1) );
    hb_retc( str1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool isRegistered(int type)
*/
HB_FUNC_STATIC( QMETATYPE_ISREGISTERED )
{
  if( ISNUM(1) )
  {
    hb_retl( QMetaType::isRegistered ( PINT(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void *construct(int type, void *where, const void *copy)
*/
HB_FUNC_STATIC( QMETATYPE_CONSTRUCT )
{
  if( ISNUM(1) && ISPOINTER(2) && ISPOINTER(3) )
  {
    void * par2 = (void *) hb_parptr(2);
    const void * par3 = (const void *) hb_parptr(3);
    hb_retptr( (void *) QMetaType::construct ( PINT(1), par2, par3 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void destroy(int type, void *data)
*/
HB_FUNC_STATIC( QMETATYPE_DESTROY )
{
  if( ISNUM(1) && ISPOINTER(2) )
  {
    void * par2 = (void *) hb_parptr(2);
    QMetaType::destroy ( PINT(1), par2 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool save(QDataStream &stream, int type, const void *data)
*/
HB_FUNC_STATIC( QMETATYPE_SAVE )
{
  if( ISQDATASTREAM(1) && ISNUM(2) && ISPOINTER(3) )
  {
    QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
    const void * par3 = (const void *) hb_parptr(3);
    hb_retl( QMetaType::save ( *par1, PINT(2), par3 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool load(QDataStream &stream, int type, void *data)
*/
HB_FUNC_STATIC( QMETATYPE_LOAD )
{
  if( ISQDATASTREAM(1) && ISNUM(2) && ISPOINTER(3) )
  {
    QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
    void * par3 = (void *) hb_parptr(3);
    hb_retl( QMetaType::load ( *par1, PINT(2), par3 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMETATYPE_NEWFROM )
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

HB_FUNC_STATIC( QMETATYPE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMETATYPE_NEWFROM );
}

HB_FUNC_STATIC( QMETATYPE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMETATYPE_NEWFROM );
}

HB_FUNC_STATIC( QMETATYPE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMETATYPE_SETSELFDESTRUCTION )
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
