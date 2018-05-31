%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD new
   METHOD delete

   METHOD angleSpan
   METHOD borderColor
   METHOD borderWidth
   METHOD brush
   METHOD color
   METHOD explodeDistanceFactor
   METHOD isExploded
   METHOD isLabelVisible
   METHOD label
   METHOD labelArmLengthFactor
   METHOD labelBrush
   METHOD labelColor
   METHOD labelFont
   METHOD labelPosition
   METHOD pen
   METHOD percentage
   METHOD series
   METHOD setBorderColor
   METHOD setBorderWidth
   METHOD setBrush
   METHOD setColor
   METHOD setExploded
   METHOD setExplodeDistanceFactor
   METHOD setLabel
   METHOD setLabelArmLengthFactor
   METHOD setLabelBrush
   METHOD setLabelColor
   METHOD setLabelFont
   METHOD setLabelPosition
   METHOD setLabelVisible
   METHOD setPen
   METHOD setValue
   METHOD startAngle
   METHOD value

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

#include <QPieSeries>

using namespace QtCharts;

$prototype=explicit QPieSlice(QObject *parent = Q_NULLPTR)
$internalConstructor=5,7,0|new1|QObject *=Q_NULLPTR

$prototype=QPieSlice(QString label, qreal value, QObject *parent = Q_NULLPTR)
$internalConstructor=5,7,0|new2|QString,qreal,QObject *=Q_NULLPTR

//[1]explicit QPieSlice(QObject *parent = Q_NULLPTR)
//[2]QPieSlice(QString label, qreal value, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QPIESLICE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QPieSlice_new1();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QPieSlice_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QPieSlice();
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(QString label READ label WRITE setLabel NOTIFY labelChanged)
%%

$prototype=QString label() const
$method=5,7,0|QString|label|

$prototype=void setLabel(QString label)
$method=5,7,0|void|setLabel|QString

%%
%% Q_PROPERTY(qreal value READ value WRITE setValue NOTIFY valueChanged)
%%

$prototype=qreal value() const
$method=5,7,0|qreal|value|

$prototype=void setValue(qreal value)
$method=5,7,0|void|setValue|qreal

%%
%% Q_PROPERTY(bool labelVisible READ isLabelVisible WRITE setLabelVisible NOTIFY labelVisibleChanged)
%%

$prototype=bool isLabelVisible() const
$method=5,7,0|bool|isLabelVisible|

$prototype=void setLabelVisible(bool visible = true)
$method=5,7,0|void|setLabelVisible|bool=true

%%
%% Q_PROPERTY(LabelPosition labelPosition READ labelPosition WRITE setLabelPosition)
%%

$prototype=LabelPosition labelPosition()
$method=5,7,0|QPieSlice::LabelPosition|labelPosition|

$prototype=void setLabelPosition(LabelPosition position)
$method=5,7,0|void|setLabelPosition|QPieSlice::LabelPosition

%%
%% Q_PROPERTY(bool exploded READ isExploded WRITE setExploded)
%%

$prototype=bool isExploded() const
$method=5,7,0|bool|isExploded|

$prototype=void setExploded(bool exploded = true)
$method=5,7,0|void|setExploded|bool=true

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototype=QPen pen() const
$method=5,7,0|QPen|pen|

$prototype=void setPen(const QPen &pen)
$method=5,7,0|void|setPen|const QPen &

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototype=QColor borderColor()
$method=5,7,0|QColor|borderColor|

$prototype=void setBorderColor(QColor color)
$method=5,7,0|void|setBorderColor|QColor

%%
%% Q_PROPERTY(int borderWidth READ borderWidth WRITE setBorderWidth NOTIFY borderWidthChanged)
%%

$prototype=int borderWidth()
$method=5,7,0|int|borderWidth|

$prototype=void setBorderWidth(int width)
$method=5,7,0|void|setBorderWidth|int

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototype=QBrush brush() const
$method=5,7,0|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=5,7,0|void|setBrush|const QBrush &

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototype=QColor color()
$method=5,7,0|QColor|color|

$prototype=void setColor(QColor color)
$method=5,7,0|void|setColor|QColor

%%
%% Q_PROPERTY(QBrush labelBrush READ labelBrush WRITE setLabelBrush NOTIFY labelBrushChanged)
%%

$prototype=QBrush labelBrush() const
$method=5,7,0|QBrush|labelBrush|

$prototype=void setLabelBrush(const QBrush &brush)
$method=5,7,0|void|setLabelBrush|const QBrush &

%%
%% Q_PROPERTY(QColor labelColor READ labelColor WRITE setLabelColor NOTIFY labelColorChanged)
%%

$prototype=QColor labelColor()
$method=5,7,0|QColor|labelColor|

$prototype=void setLabelColor(QColor color)
$method=5,7,0|void|setLabelColor|QColor

%%
%% Q_PROPERTY(QFont labelFont READ labelFont WRITE setLabelFont NOTIFY labelFontChanged)
%%

$prototype=QFont labelFont() const
$method=5,7,0|QFont|labelFont|

$prototype=void setLabelFont(const QFont &font)
$method=5,7,0|void|setLabelFont|const QFont &

%%
%% Q_PROPERTY(qreal labelArmLengthFactor READ labelArmLengthFactor WRITE setLabelArmLengthFactor)
%%

$prototype=qreal labelArmLengthFactor() const
$method=5,7,0|qreal|labelArmLengthFactor|

$prototype=void setLabelArmLengthFactor(qreal factor)
$method=5,7,0|void|setLabelArmLengthFactor|qreal

%%
%% Q_PROPERTY(qreal explodeDistanceFactor READ explodeDistanceFactor WRITE setExplodeDistanceFactor)
%%

$prototype=qreal explodeDistanceFactor() const
$method=5,7,0|qreal|explodeDistanceFactor|

$prototype=void setExplodeDistanceFactor(qreal factor)
$method=5,7,0|void|setExplodeDistanceFactor|qreal

%%
%% Q_PROPERTY(qreal percentage READ percentage NOTIFY percentageChanged)
%%

$prototype=qreal percentage() const
$method=5,7,0|qreal|percentage|

%%
%% Q_PROPERTY(qreal startAngle READ startAngle NOTIFY startAngleChanged)
%%

$prototype=qreal startAngle() const
$method=5,7,0|qreal|startAngle|

%%
%% Q_PROPERTY(qreal angleSpan READ angleSpan NOTIFY angleSpanChanged)
%%

$prototype=qreal angleSpan() const
$method=5,7,0|qreal|angleSpan|

%%
%%
%%

$prototype=QPieSeries *series() const
$method=5,7,0|QPieSeries *|series|

$beginSignals
$signal=5,7,0|angleSpanChanged()
$signal=5,7,0|borderColorChanged()
$signal=5,7,0|borderWidthChanged()
$signal=5,7,0|brushChanged()
$signal=5,7,0|clicked()
$signal=5,7,0|colorChanged()
$signal=5,7,0|doubleClicked()
$signal=5,7,0|hovered(bool)
$signal=5,7,0|labelBrushChanged()
$signal=5,7,0|labelChanged()
$signal=5,7,0|labelColorChanged()
$signal=5,7,0|labelFontChanged()
$signal=5,7,0|labelVisibleChanged()
$signal=5,7,0|penChanged()
$signal=5,7,0|percentageChanged()
$signal=5,7,0|pressed()
$signal=5,7,0|released()
$signal=5,7,0|startAngleChanged()
$signal=5,7,0|valueChanged()
$endSignals

#pragma ENDDUMP
