%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QAccessibleInterface *cellAt (int row, int column) const = 0
$virtualMethod=|QAccessibleInterface *|cellAt|int,int

$prototype=virtual QAccessibleInterface *caption() const = 0
$virtualMethod=|QAccessibleInterface *|caption|

$prototype=virtual QString columnDescription(int column) const = 0
$virtualMethod=|QString|columnDescription|int

$prototype=virtual int columnCount() const = 0
$virtualMethod=|int|columnCount|

$prototype=virtual int rowCount() const = 0
$virtualMethod=|int|rowCount|

$prototype=virtual int selectedCellCount() const = 0
$virtualMethod=|int|selectedCellCount|

$prototype=virtual int selectedColumnCount() const = 0
$virtualMethod=|int|selectedColumnCount|

$prototype=virtual int selectedRowCount() const = 0
$virtualMethod=|int|selectedRowCount|

$prototype=virtual QString rowDescription(int row) const = 0
$virtualMethod=|QString|rowDescription|int

$prototype=virtual QList<QAccessibleInterface*> selectedCells() const = 0
%% TODO: implementar
$virtualMethod=|QList<QAccessibleInterface *>|selectedCells|

$prototype=virtual QList<int> selectedColumns() const = 0
$virtualMethod=|QList<int>|selectedColumns|

$prototype=virtual QList<int> selectedRows() const = 0
$virtualMethod=|QList<int>|selectedRows|

$prototype=virtual QAccessibleInterface *summary() const = 0
$virtualMethod=|QAccessibleInterface *|summary|

$prototype=virtual bool isColumnSelected(int column) const = 0
$virtualMethod=|bool|isColumnSelected|int

$prototype=virtual bool isRowSelected(int row) const = 0
$virtualMethod=|bool|isRowSelected|int

$prototype=virtual bool selectRow(int row) = 0
$virtualMethod=|bool|selectRow|int

$prototype=virtual bool selectColumn(int column) = 0
$virtualMethod=|bool|selectColumn|int

$prototype=virtual bool unselectRow(int row) = 0
$virtualMethod=|bool|unselectRow|int

$prototype=virtual bool unselectColumn(int column) = 0
$virtualMethod=|bool|unselectColumn|int

$extraMethods

#pragma ENDDUMP
