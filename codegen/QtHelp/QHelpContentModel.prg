%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractItemModel

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QHelpContentItem * contentItemAt ( const QModelIndex & index ) const
$method=|QHelpContentItem *|contentItemAt|const QModelIndex &

$prototype=void createContents ( const QString & customFilterName )
$method=|void|createContents|const QString &

$prototype=bool isCreatingContents () const
$method=|bool|isCreatingContents|

$prototype=virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|int|columnCount|const QModelIndex &=QModelIndex()

$prototype=virtual QVariant data ( const QModelIndex & index, int role ) const
$virtualMethod=|QVariant|data|const QModelIndex &,int

$prototype=virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual QModelIndex parent ( const QModelIndex & index ) const
$virtualMethod=|QModelIndex|parent|const QModelIndex &

$prototype=virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|int|rowCount|const QModelIndex &=QModelIndex()

$beginSignals
$signal=|contentsCreated()
$signal=|contentsCreationStarted()
$endSignals

#pragma ENDDUMP
