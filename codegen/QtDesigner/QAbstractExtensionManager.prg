$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QAbstractExtensionManager

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD extension
   METHOD registerExtensions
   METHOD unregisterExtensions

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QObject * extension ( QObject * object, const QString & iid ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_EXTENSION )
{
  QAbstractExtensionManager * obj = (QAbstractExtensionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) && ISCHAR(2) )
    {
      QObject * ptr = obj->extension ( PQOBJECT(1), PQSTRING(2) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void registerExtensions ( QAbstractExtensionFactory * factory, const QString & iid ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_REGISTEREXTENSIONS )
{
  QAbstractExtensionManager * obj = (QAbstractExtensionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTEXTENSIONFACTORY(1) && ISCHAR(2) )
    {
      QAbstractExtensionFactory * par1 = (QAbstractExtensionFactory *) _qt5xhb_itemGetPtr(1);
      obj->registerExtensions ( par1, PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void unregisterExtensions ( QAbstractExtensionFactory * factory, const QString & iid ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_UNREGISTEREXTENSIONS )
{
  QAbstractExtensionManager * obj = (QAbstractExtensionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTEXTENSIONFACTORY(1) && ISCHAR(2) )
    {
      QAbstractExtensionFactory * par1 = (QAbstractExtensionFactory *) _qt5xhb_itemGetPtr(1);
      obj->unregisterExtensions ( par1, PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
