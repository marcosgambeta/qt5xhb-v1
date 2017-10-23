/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QLoggingCategory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isEnabled
   METHOD setEnabled
   METHOD isDebugEnabled
   METHOD isWarningEnabled
   METHOD isCriticalEnabled
   METHOD categoryName
   METHOD defaultCategory
   METHOD setFilterRules

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLoggingCategory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QLoggingCategory>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QLoggingCategory>
#endif

/*
QLoggingCategory(const char *category)
*/
HB_FUNC_STATIC( QLOGGINGCATEGORY_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QLoggingCategory * o = new QLoggingCategory ( PCONSTCHAR(1) );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLOGGINGCATEGORY_DELETE )
{
  QLoggingCategory * obj = (QLoggingCategory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool isEnabled(QtMsgType type) const
*/
HB_FUNC_STATIC( QLOGGINGCATEGORY_ISENABLED )
{
  QLoggingCategory * obj = (QLoggingCategory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->isEnabled ( (QtMsgType) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setEnabled(QtMsgType type, bool enable)
*/
HB_FUNC_STATIC( QLOGGINGCATEGORY_SETENABLED )
{
  QLoggingCategory * obj = (QLoggingCategory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISLOG(2) )
    {
      obj->setEnabled ( (QtMsgType) hb_parni(1), PBOOL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isDebugEnabled() const
*/
HB_FUNC_STATIC( QLOGGINGCATEGORY_ISDEBUGENABLED )
{
  QLoggingCategory * obj = (QLoggingCategory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isDebugEnabled () );
  }
}

/*
bool isWarningEnabled() const
*/
HB_FUNC_STATIC( QLOGGINGCATEGORY_ISWARNINGENABLED )
{
  QLoggingCategory * obj = (QLoggingCategory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isWarningEnabled () );
  }
}

/*
bool isCriticalEnabled() const
*/
HB_FUNC_STATIC( QLOGGINGCATEGORY_ISCRITICALENABLED )
{
  QLoggingCategory * obj = (QLoggingCategory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isCriticalEnabled () );
  }
}

/*
const char *categoryName() const
*/
HB_FUNC_STATIC( QLOGGINGCATEGORY_CATEGORYNAME )
{
  QLoggingCategory * obj = (QLoggingCategory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const char * str1 = obj->categoryName ();
    hb_retc( str1 );
  }
}

/*
static QLoggingCategory *defaultCategory()
*/
HB_FUNC_STATIC( QLOGGINGCATEGORY_DEFAULTCATEGORY )
{
  QLoggingCategory * ptr = QLoggingCategory::defaultCategory ();
  _qt5xhb_createReturnClass ( ptr, "QLOGGINGCATEGORY" );
}

/*
static void setFilterRules(const QString &rules)
*/
HB_FUNC_STATIC( QLOGGINGCATEGORY_SETFILTERRULES )
{
  if( ISCHAR(1) )
  {
    QLoggingCategory::setFilterRules ( PQSTRING(1) );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLOGGINGCATEGORY_NEWFROM )
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

HB_FUNC_STATIC( QLOGGINGCATEGORY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QLOGGINGCATEGORY_NEWFROM );
}

HB_FUNC_STATIC( QLOGGINGCATEGORY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QLOGGINGCATEGORY_NEWFROM );
}

HB_FUNC_STATIC( QLOGGINGCATEGORY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QLOGGINGCATEGORY_SETSELFDESTRUCTION )
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
