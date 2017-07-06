$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QAbstractExtensionFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD extension

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
HB_FUNC_STATIC( QABSTRACTEXTENSIONFACTORY_EXTENSION )
{
  QAbstractExtensionFactory * obj = (QAbstractExtensionFactory *) _qt5xhb_itemGetPtrStackSelfItem();

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

$extraMethods

#pragma ENDDUMP
