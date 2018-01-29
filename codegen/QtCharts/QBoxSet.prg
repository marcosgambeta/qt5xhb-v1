%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QBoxSet INHERIT QObject

   METHOD new
   METHOD delete

   METHOD append
   METHOD at
   METHOD brush
   METHOD clear
   METHOD count
   METHOD label
   METHOD pen
   METHOD setBrush
   METHOD setLabel
   METHOD setPen
   METHOD setValue

   METHOD onBrushChanged
   METHOD onCleared
   METHOD onClicked
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPenChanged
   METHOD onPressed
   METHOD onReleased
   METHOD onValueChanged
   METHOD onValuesChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QBoxSet(const QString label = QString(), QObject *parent = Q_NULLPTR)
$internalConstructor=|new1|const QString &=QString(),QObject *=Q_NULLPTR

$prototype=explicit QBoxSet(const qreal le, const qreal lq, const qreal m, const qreal uq, const qreal ue, const QString label = QString(), QObject *parent = Q_NULLPTR)
$internalConstructor=|new2|const qreal,const qreal,const qreal,const qreal,const qreal,const QString &=QString(),QObject *=Q_NULLPTR

//[1]explicit QBoxSet(const QString label = QString(), QObject *parent = Q_NULLPTR)
//[2]explicit QBoxSet(const qreal le, const qreal lq, const qreal m, const qreal uq, const qreal ue, const QString label = QString(), QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QBOXSET_NEW )
{
}

$prototype=virtual ~QBoxSet()
$deleteMethod

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototype=QPen pen() const
$method=|QPen|pen|

$prototype=void setPen(const QPen &pen)
$method=|void|setPen|const QPen &

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototype=QBrush brush() const
$method=|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=|void|setBrush|const QBrush &

%%
%%
%%

$prototype=void append(const qreal value)
$internalMethod=|void|append,append1|const qreal

$prototype=void append(const QList<qreal> &values)
$internalMethod=|void|append,append2|const QList<qreal> &

//[1]void append(const qreal value)
//[2]void append(const QList<qreal> &values)

HB_FUNC_STATIC( QBOXSET_APPEND )
{
}

$prototype=void clear()
$method=|void|clear|

$prototype=void setLabel(const QString label)
$method=|void|setLabel|const QString &

$prototype=QString label() const
$method=|QString|label|

$prototype=void setValue(const int index, const qreal value)
$method=|void|setValue|const int,const qreal

$prototype=qreal at(const int index) const
$method=|qreal|at|const int

$prototype=int count() const
$method=|int|count|

#pragma ENDDUMP
