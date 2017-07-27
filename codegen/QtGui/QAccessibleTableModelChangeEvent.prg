$header

#include "hbclass.ch"

CLASS QAccessibleTableModelChangeEvent INHERIT QAccessibleEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setModelChangeType
   METHOD modelChangeType
   METHOD setFirstRow
   METHOD setFirstColumn
   METHOD setLastRow
   METHOD setLastColumn
   METHOD firstRow
   METHOD firstColumn
   METHOD lastRow
   METHOD lastColumn

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAccessibleTableModelChangeEvent(QObject *obj, ModelChangeType changeType)
*/
$constructor=|new|QObject *,QAccessibleTableModelChangeEvent::ModelChangeType

$deleteMethod

/*
void setModelChangeType(ModelChangeType changeType)
*/
$method=|void|setModelChangeType|QAccessibleTableModelChangeEvent::ModelChangeType

/*
ModelChangeType modelChangeType() const
*/
$method=|QAccessibleTableModelChangeEvent::ModelChangeType|modelChangeType|

/*
void setFirstRow(int row)
*/
$method=|void|setFirstRow|int

/*
void setFirstColumn(int col)
*/
$method=|void|setFirstColumn|int

/*
void setLastRow(int row)
*/
$method=|void|setLastRow|int

/*
void setLastColumn(int col)
*/
$method=|void|setLastColumn|int

/*
int firstRow() const
*/
$method=|int|firstRow|

/*
int firstColumn() const
*/
$method=|int|firstColumn|

/*
int lastRow() const
*/
$method=|int|lastRow|

/*
int lastColumn() const
*/
$method=|int|lastColumn|

#pragma ENDDUMP
