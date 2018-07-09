%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QModelIndex ()
$internalConstructor=|new1|

$prototype=QModelIndex ( const QModelIndex & other )
$internalConstructor=|new2|const QModelIndex &

//[1]QModelIndex ()
//[2]QModelIndex ( const QModelIndex & other )

HB_FUNC_STATIC( QMODELINDEX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QModelIndex_new1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QModelIndex_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QModelIndex child(int row, int column) const
$method=|QModelIndex|child|int,int

$prototype=int column() const
$method=|int|column|

$prototype=QVariant data(int role = Qt::DisplayRole) const
$method=|QVariant|data|int=Qt::DisplayRole

$prototype=Qt::ItemFlags flags() const
$method=|Qt::ItemFlags|flags|

$prototype=quintptr internalId() const
$method=|quintptr|internalId|

$prototype=void * internalPointer() const
$method=|void *|internalPointer|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=const QAbstractItemModel * model() const
$method=|const QAbstractItemModel *|model|

$prototype=QModelIndex parent() const
$method=|QModelIndex|parent|

$prototype=int row() const
$method=|int|row|

$prototype=QModelIndex sibling(int row, int column) const
$method=|QModelIndex|sibling|int,int

$extraMethods

#pragma ENDDUMP
