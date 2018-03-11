%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QValue3DAxis INHERIT QAbstract3DAxis

   METHOD new
   METHOD delete

   METHOD formatter
   METHOD labelFormat
   METHOD reversed
   METHOD segmentCount
   METHOD setFormatter
   METHOD setLabelFormat
   METHOD setReversed
   METHOD setSegmentCount
   METHOD setSubSegmentCount
   METHOD subSegmentCount

%%   METHOD onFormatterChanged
%%   METHOD onLabelFormatChanged
%%   METHOD onReversedChanged
%%   METHOD onSegmentCountChanged
%%   METHOD onSubSegmentCountChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QValue3DAxis(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=virtual ~QValue3DAxis()
$deleteMethod

%%
%% Q_PROPERTY(int segmentCount READ segmentCount WRITE setSegmentCount NOTIFY segmentCountChanged)
%%

$prototype=int segmentCount() const
$method=|int|segmentCount|

$prototype=void setSegmentCount(int count)
$method=|void|setSegmentCount|int

%%
%% Q_PROPERTY(int subSegmentCount READ subSegmentCount WRITE setSubSegmentCount NOTIFY subSegmentCountChanged)
%%

$prototype=int subSegmentCount() const
$method=|int|subSegmentCount|

$prototype=void setSubSegmentCount(int count)
$method=|void|setSubSegmentCount|int

%%
%% Q_PROPERTY(QString labelFormat READ labelFormat WRITE setLabelFormat NOTIFY labelFormatChanged)
%%

$prototype=QString labelFormat() const
$method=|QString|labelFormat|

$prototype=void setLabelFormat(const QString &format)
$method=|void|setLabelFormat|const QString &

%%
%% Q_PROPERTY(QValue3DAxisFormatter* formatter READ formatter WRITE setFormatter NOTIFY formatterChanged REVISION 1)
%%

$prototype=QValue3DAxisFormatter *formatter() const
$method=|QValue3DAxisFormatter *|formatter|

$prototype=void setFormatter(QValue3DAxisFormatter *formatter)
$method=|void|setFormatter|QValue3DAxisFormatter *

%%
%% Q_PROPERTY(bool reversed READ reversed WRITE setReversed NOTIFY reversedChanged REVISION 1)
%%

$prototype=bool reversed() const
$method=|bool|reversed|

$prototype=void setReversed(bool enable)
$method=|void|setReversed|bool

%%
%%
%%

$beginSignals
%% $signal=|formatterChanged(QValue3DAxisFormatter*)
%% $signal=|labelFormatChanged(QString)
%% $signal=|reversedChanged(bool)
%% $signal=|segmentCountChanged(int)
%% $signal=|subSegmentCountChanged(int)
$endSignals

#pragma ENDDUMP
