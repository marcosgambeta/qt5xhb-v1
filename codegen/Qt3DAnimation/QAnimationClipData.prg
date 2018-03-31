%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO:
%% // Iterator API
%% typedef const QChannel *const_iterator;
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

CLASS QAnimationClipData

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD appendChannel
   METHOD channelCount
   METHOD clearChannels
   METHOD insertChannel
   METHOD isValid
   METHOD name
   METHOD removeChannel
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

$prototype=QAnimationClipData()

$prototype=QAnimationClipData(const QAnimationClipData &)

$prototype=~QAnimationClipData()
$deleteMethod

$prototype=void setName(const QString &name)

$prototype=QString name() const

$prototype=int channelCount() const

$prototype=void appendChannel(const QChannel &c)

$prototype=void insertChannel(int index, const QChannel &c)

$prototype=void removeChannel(int index)

$prototype=void clearChannels()

$prototype=bool isValid() const Q_DECL_NOTHROW

$extraMethods

#pragma ENDDUMP
