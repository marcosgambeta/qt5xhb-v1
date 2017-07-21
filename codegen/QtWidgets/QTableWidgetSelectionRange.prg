$header

#include "hbclass.ch"

CLASS QTableWidgetSelectionRange

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bottomRow
   METHOD columnCount
   METHOD leftColumn
   METHOD rightColumn
   METHOD rowCount
   METHOD topRow

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
QTableWidgetSelectionRange()
*/
$internalConstructor=|new1|

/*
QTableWidgetSelectionRange(int top, int left, int bottom, int right)
*/
$internalConstructor=|new2|int,int,int,int

/*
QTableWidgetSelectionRange(const QTableWidgetSelectionRange & other)
*/
$internalConstructor=|new3|const QTableWidgetSelectionRange &

//[1]QTableWidgetSelectionRange()
//[2]QTableWidgetSelectionRange(int top, int left, int bottom, int right)
//[3]QTableWidgetSelectionRange(const QTableWidgetSelectionRange & other)

HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTableWidgetSelectionRange_new1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QTableWidgetSelectionRange_new2();
  }
  else if( ISNUMPAR(1) && ISQTABLEWIDGETSELECTIONRANGE(1) )
  {
    QTableWidgetSelectionRange_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int bottomRow() const
*/
$method=|int|bottomRow|

/*
int columnCount() const
*/
$method=|int|columnCount|

/*
int leftColumn() const
*/
$method=|int|leftColumn|

/*
int rightColumn() const
*/
$method=|int|rightColumn|

/*
int rowCount() const
*/
$method=|int|rowCount|

/*
int topRow() const
*/
$method=|int|topRow|

$extraMethods

#pragma ENDDUMP
