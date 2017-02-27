/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"



CLASS QLoggingCategory

   DATA pointer
   DATA class_id INIT Class_Id_QLoggingCategory
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QLoggingCategory>
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
#include <QLoggingCategory>
#endif
#endif

/*
QLoggingCategory(const char *category)
*/
HB_FUNC_STATIC( QLOGGINGCATEGORY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  const char * par1 = hb_parc(1);
  QLoggingCategory * o = new QLoggingCategory (  (const char *) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLoggingCategory *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QLOGGINGCATEGORY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
bool isEnabled(QtMsgType type) const
*/
HB_FUNC_STATIC( QLOGGINGCATEGORY_ISENABLED )
{
  QLoggingCategory * obj = (QLoggingCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isEnabled (  (QtMsgType) par1 ) );
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
    int par1 = hb_parni(1);
    obj->setEnabled (  (QtMsgType) par1, (bool) hb_parl(2) );
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
    hb_retl( obj->isDebugEnabled (  ) );
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
    hb_retl( obj->isWarningEnabled (  ) );
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
    hb_retl( obj->isCriticalEnabled (  ) );
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
    const char * str1 = obj->categoryName (  );
    hb_retc( str1 );
  }
}


/*
static QLoggingCategory *defaultCategory()
*/
HB_FUNC_STATIC( QLOGGINGCATEGORY_DEFAULTCATEGORY )
{
  QLoggingCategory * ptr = QLoggingCategory::defaultCategory (  );
  _qt5xhb_createReturnClass ( ptr, "QLOGGINGCATEGORY" );
}



/*
static void setFilterRules(const QString &rules)
*/
HB_FUNC_STATIC( QLOGGINGCATEGORY_SETFILTERRULES )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QLoggingCategory::setFilterRules ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
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
