%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=explicit QBoxSet(const QString label = QString(), QObject *parent = Q_NULLPTR)
$internalConstructor=5,7,0|new1|const QString &=QString(),QObject *=Q_NULLPTR

$prototype=explicit QBoxSet(const qreal le, const qreal lq, const qreal m, const qreal uq, const qreal ue, const QString label = QString(), QObject *parent = Q_NULLPTR)
$internalConstructor=5,7,0|new2|const qreal,const qreal,const qreal,const qreal,const qreal,const QString &=QString(),QObject *=Q_NULLPTR

//[1]explicit QBoxSet(const QString label = QString(), QObject *parent = Q_NULLPTR)
//[2]explicit QBoxSet(const qreal le, const qreal lq, const qreal m, const qreal uq, const qreal ue, const QString label = QString(), QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QBOXSET_NEW )
{
  if( ISBETWEEN(0,2) && (ISCHAR(1)||ISNIL(1)) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QBoxSet_new1();
  }
  else if( ISBETWEEN(5,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISCHAR(6)||ISNIL(6)) && (ISQOBJECT(7)||ISNIL(7)) )
  {
    QBoxSet_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QBoxSet()
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototype=QPen pen() const
$method=5,7,0|QPen|pen|

$prototype=void setPen(const QPen &pen)
$method=5,7,0|void|setPen|const QPen &

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototype=QBrush brush() const
$method=5,7,0|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=5,7,0|void|setBrush|const QBrush &

%%
%%
%%

$prototype=void append(const qreal value)
$internalMethod=5,7,0|void|append,append1|const qreal

$prototype=void append(const QList<qreal> &values)
$internalMethod=5,7,0|void|append,append2|const QList<qreal> &

//[1]void append(const qreal value)
//[2]void append(const QList<qreal> &values)

HB_FUNC_STATIC( QBOXSET_APPEND )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBoxSet_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBoxSet_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototype=void clear()
$method=5,7,0|void|clear|

$prototype=void setLabel(const QString label)
$method=5,7,0|void|setLabel|const QString &

$prototype=QString label() const
$method=5,7,0|QString|label|

$prototype=void setValue(const int index, const qreal value)
$method=5,7,0|void|setValue|const int,const qreal

$prototype=qreal at(const int index) const
$method=5,7,0|qreal|at|const int

$prototype=int count() const
$method=5,7,0|int|count|

$beginSignals
$signal=5,7,0|brushChanged()
$signal=5,7,0|cleared()
$signal=5,7,0|clicked()
$signal=5,7,0|doubleClicked()
$signal=5,7,0|hovered(bool)
$signal=5,7,0|penChanged()
$signal=5,7,0|pressed()
$signal=5,7,0|released()
$signal=5,7,0|valueChanged(int)
$signal=5,7,0|valuesChanged()
$endSignals

#pragma ENDDUMP
