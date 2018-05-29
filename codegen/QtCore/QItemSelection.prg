%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD select
   METHOD contains
   METHOD indexes
   METHOD merge
   METHOD split

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QItemSelection()
$internalConstructor=|new1|

$prototype=QItemSelection(const QModelIndex &topLeft, const QModelIndex &bottomRight)
$internalConstructor=|new2|const QModelIndex &,const QModelIndex &

//[1]QItemSelection()
//[2]QItemSelection(const QModelIndex &topLeft, const QModelIndex &bottomRight)

HB_FUNC_STATIC( QITEMSELECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QItemSelection_new1();
  }
  else if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISQMODELINDEX(2) )
  {
    QItemSelection_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void select(const QModelIndex &topLeft, const QModelIndex &bottomRight)
$method=|void|select|const QModelIndex &,const QModelIndex &

$prototype=bool contains(const QModelIndex &index) const
$method=|bool|contains|const QModelIndex &

$prototype=QModelIndexList indexes() const
$method=|QModelIndexList|indexes|

$prototype=void merge(const QItemSelection &other, QItemSelectionModel::SelectionFlags command)
$method=|void|merge|const QItemSelection &,QItemSelectionModel::SelectionFlags

$prototype=static void split(const QItemSelectionRange &range,const QItemSelectionRange &other,QItemSelection *result)
$staticMethod=|void|split|const QItemSelectionRange &,const QItemSelectionRange &,QItemSelection *

$extraMethods

#pragma ENDDUMP
