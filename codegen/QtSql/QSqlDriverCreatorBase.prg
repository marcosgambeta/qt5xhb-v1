$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLDRIVER
#endif

CLASS QSqlDriverCreatorBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createObject

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
virtual QSqlDriver * createObject () const = 0
*/
HB_FUNC_STATIC( QSQLDRIVERCREATORBASE_CREATEOBJECT )
{
  QSqlDriverCreatorBase * obj = (QSqlDriverCreatorBase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlDriver * ptr = obj->createObject ();
    _qt5xhb_createReturnClass ( ptr, "QSQLDRIVER" );
  }
}

$extraMethods

#pragma ENDDUMP
