%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSqlTableModel

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSqlRelationalTableModel ( QObject * parent = 0, QSqlDatabase db = QSqlDatabase() )
$constructor=|new|QObject *=0,QSqlDatabase=QSqlDatabase()

$deleteMethod

$prototype=QSqlRelation relation ( int column ) const
$method=|QSqlRelation|relation|int

$prototype=virtual QSqlTableModel * relationModel ( int column ) const
$virtualMethod=|QSqlTableModel *|relationModel|int

$prototype=virtual void setRelation ( int column, const QSqlRelation & relation )
$virtualMethod=|void|setRelation|int,const QSqlRelation &

$prototype=void clear ()
$method=|void|clear|

$prototype=QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$method=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=bool select ()
$method=|bool|select|

$prototype=bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=void setTable ( const QString & table )
$method=|void|setTable|const QString &

$prototype=void revertRow ( int row )
$method=|void|revertRow|int

$prototype=void setJoinMode( QSqlRelationalTableModel::JoinMode joinMode )
$method=|void|setJoinMode|QSqlRelationalTableModel::JoinMode

#pragma ENDDUMP
