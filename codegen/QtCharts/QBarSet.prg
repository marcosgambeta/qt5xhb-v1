%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=explicit QBarSet(const QString label, QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|const QString &,QObject *=Q_NULLPTR

$prototype=virtual ~QBarSet()
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(QString label READ label WRITE setLabel NOTIFY labelChanged)
%%

$prototype=QString label() const
$method=5,7,0|QString|label|

$prototype=void setLabel(const QString label)
$method=5,7,0|void|setLabel|const QString &

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
%% Q_PROPERTY(QBrush labelBrush READ labelBrush WRITE setLabelBrush NOTIFY labelBrushChanged)
%%

$prototype=QBrush labelBrush() const
$method=5,7,0|QBrush|labelBrush|

$prototype=void setLabelBrush(const QBrush &brush)
$method=5,7,0|void|setLabelBrush|const QBrush &

%%
%% Q_PROPERTY(QFont labelFont READ labelFont WRITE setLabelFont NOTIFY labelFontChanged)
%%

$prototype=QFont labelFont() const
$method=5,7,0|QFont|labelFont|

$prototype=void setLabelFont(const QFont &font)
$method=5,7,0|void|setLabelFont|const QFont &

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototype=QColor color()
$method=5,7,0|QColor|color|

$prototype=void setColor(QColor color)
$method=5,7,0|void|setColor|QColor

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototype=QColor borderColor()
$method=5,7,0|QColor|borderColor|

$prototype=void setBorderColor(QColor color)
$method=5,7,0|void|setBorderColor|QColor

%%
%% Q_PROPERTY(QColor labelColor READ labelColor WRITE setLabelColor NOTIFY labelColorChanged)
%%

$prototype=QColor labelColor()
$method=5,7,0|QColor|labelColor|

$prototype=void setLabelColor(QColor color)
$method=5,7,0|void|setLabelColor|QColor

%%
%%
%%

$prototype=void append(const qreal value)
$internalMethod=5,7,0|void|append,append1|const qreal

$prototype=void append(const QList<qreal> &values)
$internalMethod=5,7,0|void|append,append2|const QList<qreal> &

//[1]void append(const qreal value)
//[2]void append(const QList<qreal> &values)

HB_FUNC_STATIC( QBARSET_APPEND )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBarSet_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBarSet_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototype=void insert(const int index, const qreal value)
$method=5,7,0|void|insert|const int,const qreal

$prototype=void remove(const int index, const int count = 1)
$method=5,7,0|void|remove|const int,const int=1

$prototype=void replace(const int index, const qreal value)
$method=5,7,0|void|replace|const int,const qreal

$prototype=qreal at(const int index) const
$method=5,7,0|qreal|at|const int

$prototype=int count() const
$method=5,7,0|int|count|

$prototype=qreal sum() const
$method=5,7,0|qreal|sum|

$beginSignals
$signal=5,7,0|borderColorChanged(QColor)
$signal=5,7,0|brushChanged()
$signal=5,7,0|clicked(int)
$signal=5,7,0|colorChanged(QColor)
$signal=5,7,0|doubleClicked(int)
$signal=5,7,0|hovered(bool,int)
$signal=5,7,0|labelBrushChanged()
$signal=5,7,0|labelChanged()
$signal=5,7,0|labelColorChanged(QColor)
$signal=5,7,0|labelFontChanged()
$signal=5,7,0|penChanged()
$signal=5,7,0|pressed(int)
$signal=5,7,0|released(int)
$signal=5,7,0|valueChanged(int)
$signal=5,7,0|valuesAdded(int,int)
$signal=5,7,0|valuesRemoved(int,int)
$endSignals

#pragma ENDDUMP
