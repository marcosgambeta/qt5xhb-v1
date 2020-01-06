%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QTreeWidgetItemIterator(const QTreeWidgetItemIterator & it)
$internalConstructor=|new1|const QTreeWidgetItemIterator &

$prototype=QTreeWidgetItemIterator(QTreeWidget * widget, IteratorFlags flags = All)
$internalConstructor=|new2|QTreeWidget *,QTreeWidgetItemIterator::IteratorFlags=QTreeWidgetItemIterator::All

$prototype=QTreeWidgetItemIterator(QTreeWidgetItem * item, IteratorFlags flags = All)
$internalConstructor=|new3|QTreeWidgetItem *,QTreeWidgetItemIterator::IteratorFlags=QTreeWidgetItemIterator::All

//[1]QTreeWidgetItemIterator(const QTreeWidgetItemIterator & it)
//[2]QTreeWidgetItemIterator(QTreeWidget * widget, IteratorFlags flags = All)
//[3]QTreeWidgetItemIterator(QTreeWidgetItem * item, IteratorFlags flags = All)

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEW )
{
  if( ISNUMPAR(1) && ISQTREEWIDGETITEMITERATOR(1) )
  {
    QTreeWidgetItemIterator_new1();
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGET(1) && ISOPTNUM(2) )
  {
    QTreeWidgetItemIterator_new2();
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGETITEM(1) && ISOPTNUM(2) )
  {
    QTreeWidgetItemIterator_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
