$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleTableInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD cellAt
   METHOD caption
   METHOD columnDescription
   METHOD columnCount
   METHOD rowCount
   METHOD selectedCellCount
   METHOD selectedColumnCount
   METHOD selectedRowCount
   METHOD rowDescription
   METHOD selectedCells
   METHOD selectedColumns
   METHOD selectedRows
   METHOD summary
   METHOD isColumnSelected
   METHOD isRowSelected
   METHOD selectRow
   METHOD selectColumn
   METHOD unselectRow
   METHOD unselectColumn

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
virtual QAccessibleInterface *cellAt (int row, int column) const = 0
*/
$method=|QAccessibleInterface *|cellAt|int,int

/*
virtual QAccessibleInterface *caption() const = 0
*/
$method=|QAccessibleInterface *|caption|

/*
virtual QString columnDescription(int column) const = 0
*/
$method=|QString|columnDescription|int

/*
virtual int columnCount() const = 0
*/
$method=|int|columnCount|

/*
virtual int rowCount() const = 0
*/
$method=|int|rowCount|

/*
virtual int selectedCellCount() const = 0
*/
$method=|int|selectedCellCount|

/*
virtual int selectedColumnCount() const = 0
*/
$method=|int|selectedColumnCount|

/*
virtual int selectedRowCount() const = 0
*/
$method=|int|selectedRowCount|

/*
virtual QString rowDescription(int row) const = 0
*/
$method=|QString|rowDescription|int

/*
virtual QList<QAccessibleInterface*> selectedCells() const = 0
*/
%% TODO: implementar
$method=|QList<QAccessibleInterface*>|selectedCells|

/*
virtual QList<int> selectedColumns() const = 0
*/
$method=|QList<int>|selectedColumns|

/*
virtual QList<int> selectedRows() const = 0
*/
$method=|QList<int>|selectedRows|

/*
virtual QAccessibleInterface *summary() const = 0
*/
$method=|QAccessibleInterface *|summary|

/*
virtual bool isColumnSelected(int column) const = 0
*/
$method=|bool|isColumnSelected|int

/*
virtual bool isRowSelected(int row) const = 0
*/
$method=|bool|isRowSelected|int

/*
virtual bool selectRow(int row) = 0
*/
$method=|bool|selectRow|int

/*
virtual bool selectColumn(int column) = 0
*/
$method=|bool|selectColumn|int

/*
virtual bool unselectRow(int row) = 0
*/
$method=|bool|unselectRow|int

/*
virtual bool unselectColumn(int column) = 0
*/
$method=|bool|unselectColumn|int

$extraMethods

#pragma ENDDUMP
