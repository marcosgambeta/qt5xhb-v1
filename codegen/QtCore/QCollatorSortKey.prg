$header

#include "hbclass.ch"

CLASS QCollatorSortKey

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD compare

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

/*
QCollatorSortKey(const QCollatorSortKey &other)
*/
$constructor=|new|const QCollatorSortKey &

$deleteMethod

/*
void swap(QCollatorSortKey &other)
*/
$method=|void|swap|QCollatorSortKey &

/*
int compare(const QCollatorSortKey &key) const
*/
$method=|int|compare|const QCollatorSortKey &

$extraMethods

#pragma ENDDUMP
