%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtVirtualKeyboard

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractListModel

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QVirtualKeyboardSelectionListModel(QObject *parent = nullptr)

$prototype=~QVirtualKeyboardSelectionListModel()
$deleteMethod

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototype=int count() const

%%
%%
%%

$prototype=void setDataSource(QVirtualKeyboardAbstractInputMethod *dataSource, Type type)
$prototype=QVirtualKeyboardAbstractInputMethod *dataSource() const
$prototype=int rowCount(const QModelIndex &parent = QModelIndex()) const
$prototype=QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
$prototype=QHash<int,QByteArray> roleNames() const
$prototype=Q_INVOKABLE void selectItem(int index)
$prototype=Q_INVOKABLE void removeItem(int index)
$prototype=Q_INVOKABLE QVariant dataAt(int index, Role role = Role::Display) const
$prototype=void selectionListChanged(Type type) [protected] [slot]
$prototype=void selectionListActiveItemChanged(Type type, int index) [protected] [slot]

$beginSignals
$signal=|countChanged()
$signal=|activeItemChanged(int)
$signal=|itemSelected(int)
$endSignals

#pragma ENDDUMP
