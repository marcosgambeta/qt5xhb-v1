$header

#include "hbclass.ch"

CLASS QAtomicPointer

   DATA pointer
   DATA self_destruction INIT .F.

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

// TODO: implementar(?) construtores

//[1]QAtomicPointer(T * value = 0)
//[2]QAtomicPointer(const QAtomicPointer<T> & other)

//HB_FUNC_STATIC( QATOMICPOINTER_NEW )
//{
//}

$extraMethods

#pragma ENDDUMP
