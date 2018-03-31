%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO:
%% // Iterator API
%% typedef const QChannelComponent *const_iterator;
%% typedef std::reverse_iterator<const_iterator> const_reverse_iterator;
%%
%% const_iterator begin()  const Q_DECL_NOTHROW;
%% const_iterator cbegin() const Q_DECL_NOTHROW { return begin(); }
%% const_iterator end()    const Q_DECL_NOTHROW;
%% const_iterator cend()   const Q_DECL_NOTHROW { return end(); }
%% const_reverse_iterator rbegin()  const Q_DECL_NOTHROW { return const_reverse_iterator(end()); }
%% const_reverse_iterator crbegin() const Q_DECL_NOTHROW { return rbegin(); }
%% const_reverse_iterator rend()    const Q_DECL_NOTHROW { return const_reverse_iterator(begin()); }
%% const_reverse_iterator crend()   const Q_DECL_NOTHROW { return rend(); }

#include "hbclass.ch"

CLASS QChannel

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD appendChannelComponent
   METHOD channelComponentCount
   METHOD clearChannelComponents
   METHOD insertChannelComponent
   METHOD jointIndex
   METHOD name
   METHOD removeChannelComponent
   METHOD setJointIndex
   METHOD setName

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

$prototype=QChannel()
$prototype=explicit QChannel(const QString &name)
$prototype=QChannel(const QChannel &)

$prototype=~QChannel()
$deleteMethod

$prototype=void setName(const QString &name)

$prototype=QString name() const

$prototype=void setJointIndex(int jointIndex)

$prototype=int jointIndex() const

$prototype=int channelComponentCount() const

$prototype=void appendChannelComponent(const QChannelComponent &component)

$prototype=void insertChannelComponent(int index, const QChannelComponent &component)

$prototype=void removeChannelComponent(int index)

$prototype=void clearChannelComponents()

$extraMethods

#pragma ENDDUMP
