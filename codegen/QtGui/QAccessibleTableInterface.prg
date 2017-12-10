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

$prototype=virtual QAccessibleInterface *cellAt (int row, int column) const = 0
$method=|QAccessibleInterface *|cellAt|int,int

$prototype=virtual QAccessibleInterface *caption() const = 0
$method=|QAccessibleInterface *|caption|

$prototype=virtual QString columnDescription(int column) const = 0
$method=|QString|columnDescription|int

$prototype=virtual int columnCount() const = 0
$method=|int|columnCount|

$prototype=virtual int rowCount() const = 0
$method=|int|rowCount|

$prototype=virtual int selectedCellCount() const = 0
$method=|int|selectedCellCount|

$prototype=virtual int selectedColumnCount() const = 0
$method=|int|selectedColumnCount|

$prototype=virtual int selectedRowCount() const = 0
$method=|int|selectedRowCount|

$prototype=virtual QString rowDescription(int row) const = 0
$method=|QString|rowDescription|int

$prototype=virtual QList<QAccessibleInterface*> selectedCells() const = 0
%% TODO: implementar
$method=|QList<QAccessibleInterface*>|selectedCells|

$prototype=virtual QList<int> selectedColumns() const = 0
$method=|QList<int>|selectedColumns|

$prototype=virtual QList<int> selectedRows() const = 0
$method=|QList<int>|selectedRows|

$prototype=virtual QAccessibleInterface *summary() const = 0
$method=|QAccessibleInterface *|summary|

$prototype=virtual bool isColumnSelected(int column) const = 0
$method=|bool|isColumnSelected|int

$prototype=virtual bool isRowSelected(int row) const = 0
$method=|bool|isRowSelected|int

$prototype=virtual bool selectRow(int row) = 0
$method=|bool|selectRow|int

$prototype=virtual bool selectColumn(int column) = 0
$method=|bool|selectColumn|int

$prototype=virtual bool unselectRow(int row) = 0
$method=|bool|unselectRow|int

$prototype=virtual bool unselectColumn(int column) = 0
$method=|bool|unselectColumn|int

$extraMethods

#pragma ENDDUMP
