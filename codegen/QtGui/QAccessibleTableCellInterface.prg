$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleTableCellInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD columnExtent
   METHOD columnHeaderCells
   METHOD columnIndex
   METHOD rowExtent
   METHOD rowHeaderCells
   METHOD rowIndex
   METHOD isSelected
   METHOD table

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
virtual int columnExtent() const = 0
*/
$method=|int|columnExtent|

/*
virtual QList<QAccessibleInterface*> columnHeaderCells() const = 0
*/
$method=|QList<QAccessibleInterface*>|columnHeaderCells|

/*
virtual int columnIndex() const = 0
*/
$method=|int|columnIndex|

/*
virtual int rowExtent() const = 0
*/
$method=|int|rowExtent|

/*
virtual QList<QAccessibleInterface*> rowHeaderCells() const = 0
*/
$method=|QList<QAccessibleInterface*>|rowHeaderCells|

/*
virtual int rowIndex() const = 0
*/
$method=|int|rowIndex|

/*
virtual bool isSelected() const = 0
*/
$method=|bool|isSelected|

/*
virtual QAccessibleInterface* table() const = 0
*/
$method=|QAccessibleInterface *|table|

$extraMethods

#pragma ENDDUMP
