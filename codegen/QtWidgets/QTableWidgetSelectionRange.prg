%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTableWidgetSelectionRange()
$internalConstructor=|new1|

$prototype=QTableWidgetSelectionRange(int top, int left, int bottom, int right)
$internalConstructor=|new2|int,int,int,int

$prototype=QTableWidgetSelectionRange(const QTableWidgetSelectionRange & other)
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

$prototype=int bottomRow() const
$method=|int|bottomRow|

$prototype=int columnCount() const
$method=|int|columnCount|

$prototype=int leftColumn() const
$method=|int|leftColumn|

$prototype=int rightColumn() const
$method=|int|rightColumn|

$prototype=int rowCount() const
$method=|int|rowCount|

$prototype=int topRow() const
$method=|int|topRow|

$extraMethods

#pragma ENDDUMP
