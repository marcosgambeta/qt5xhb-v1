%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

%%   METHOD new
   METHOD delete

   METHOD alignment
   METHOD gridLineColor
   METHOD gridLinePen
   METHOD hide
   METHOD isGridLineVisible
   METHOD isLineVisible
   METHOD isMinorGridLineVisible
   METHOD isReverse
   METHOD isTitleVisible
   METHOD isVisible
   METHOD labelsAngle
   METHOD labelsBrush
   METHOD labelsColor
   METHOD labelsFont
   METHOD labelsVisible
   METHOD linePen
   METHOD linePenColor
   METHOD minorGridLineColor
   METHOD minorGridLinePen
   METHOD orientation
   METHOD setGridLineColor
   METHOD setGridLinePen
   METHOD setGridLineVisible
   METHOD setLabelsAngle
   METHOD setLabelsBrush
   METHOD setLabelsColor
   METHOD setLabelsFont
   METHOD setLabelsVisible
   METHOD setLinePen
   METHOD setLinePenColor
   METHOD setLineVisible
   METHOD setMax
   METHOD setMin
   METHOD setMinorGridLineColor
   METHOD setMinorGridLinePen
   METHOD setMinorGridLineVisible
   METHOD setRange
   METHOD setReverse
   METHOD setShadesBorderColor
   METHOD setShadesBrush
   METHOD setShadesColor
   METHOD setShadesPen
   METHOD setShadesVisible
   METHOD setTitleBrush
   METHOD setTitleFont
   METHOD setTitleText
   METHOD setTitleVisible
   METHOD setVisible
   METHOD shadesBorderColor
   METHOD shadesBrush
   METHOD shadesColor
   METHOD shadesPen
   METHOD shadesVisible
   METHOD show
   METHOD titleBrush
   METHOD titleFont
   METHOD titleText
   METHOD type

   METHOD onColorChanged
   METHOD onGridLineColorChanged
   METHOD onGridLinePenChanged
   METHOD onGridVisibleChanged
   METHOD onLabelsAngleChanged
   METHOD onLabelsBrushChanged
   METHOD onLabelsColorChanged
   METHOD onLabelsFontChanged
   METHOD onLabelsVisibleChanged
   METHOD onLinePenChanged
   METHOD onLineVisibleChanged
   METHOD onMinorGridLineColorChanged
   METHOD onMinorGridLinePenChanged
   METHOD onMinorGridVisibleChanged
   METHOD onReverseChanged
   METHOD onShadesBorderColorChanged
   METHOD onShadesBrushChanged
   METHOD onShadesColorChanged
   METHOD onShadesPenChanged
   METHOD onShadesVisibleChanged
   METHOD onTitleBrushChanged
   METHOD onTitleFontChanged
   METHOD onTitleTextChanged
   METHOD onTitleVisibleChanged
   METHOD onVisibleChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=QAbstractAxis(QAbstractAxisPrivate &d, QObject *parent = Q_NULLPTR) (protected)

$prototype=~QAbstractAxis()
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibleChanged)
%%

$prototype=bool isVisible() const
$method=5,7,0|bool|isVisible|

$prototype=void setVisible(bool visible = true)
$method=5,7,0|void|setVisible|bool=true

%%
%% Q_PROPERTY(bool lineVisible READ isLineVisible WRITE setLineVisible NOTIFY lineVisibleChanged)
%%

$prototype=bool isLineVisible() const
$method=5,7,0|bool|isLineVisible|

$prototype=void setLineVisible(bool visible = true)
$method=5,7,0|void|setLineVisible|bool=true

%%
%% Q_PROPERTY(QPen linePen READ linePen WRITE setLinePen NOTIFY linePenChanged)
%%

$prototype=QPen linePen() const
$method=5,7,0|QPen|linePen|

$prototype=void setLinePen(const QPen &pen)
$method=5,7,0|void|setLinePen|const QPen &

%%
%% Q_PROPERTY(QColor color READ linePenColor WRITE setLinePenColor NOTIFY colorChanged)
%%

$prototype=QColor linePenColor() const
$method=5,7,0|QColor|linePenColor|

$prototype=void setLinePenColor(QColor color)
$method=5,7,0|void|setLinePenColor|QColor

%%
%% Q_PROPERTY(bool gridVisible READ isGridLineVisible WRITE setGridLineVisible NOTIFY gridVisibleChanged)
%%

$prototype=bool isGridLineVisible() const
$method=5,7,0|bool|isGridLineVisible|

$prototype=void setGridLineVisible(bool visible = true)
$method=5,7,0|void|setGridLineVisible|bool=true

%%
%% Q_PROPERTY(QPen gridLinePen READ gridLinePen WRITE setGridLinePen NOTIFY gridLinePenChanged)
%%

$prototype=QPen gridLinePen() const
$method=5,7,0|QPen|gridLinePen|

$prototype=void setGridLinePen(const QPen &pen)
$method=5,7,0|void|setGridLinePen|const QPen &

%%
%% Q_PROPERTY(bool minorGridVisible READ isMinorGridLineVisible WRITE setMinorGridLineVisible NOTIFY minorGridVisibleChanged)
%%

$prototype=bool isMinorGridLineVisible() const
$method=5,7,0|bool|isMinorGridLineVisible|

$prototype=void setMinorGridLineVisible(bool visible = true)
$method=5,7,0|void|setMinorGridLineVisible|bool=true

%%
%% Q_PROPERTY(QPen minorGridLinePen READ minorGridLinePen WRITE setMinorGridLinePen NOTIFY minorGridLinePenChanged)
%%

$prototype=QPen minorGridLinePen() const
$method=5,7,0|QPen|minorGridLinePen|

$prototype=void setMinorGridLinePen(const QPen &pen)
$method=5,7,0|void|setMinorGridLinePen|const QPen &

%%
%% Q_PROPERTY(QColor gridLineColor READ gridLineColor WRITE setGridLineColor NOTIFY gridLineColorChanged)
%%

$prototype=QColor gridLineColor()
$method=5,7,0|QColor|gridLineColor|

$prototype=void setGridLineColor(const QColor &color)
$method=5,7,0|void|setGridLineColor|const QColor &

%%
%% Q_PROPERTY(QColor minorGridLineColor READ minorGridLineColor WRITE setMinorGridLineColor NOTIFY minorGridLineColorChanged)
%%

$prototype=QColor minorGridLineColor()
$method=5,7,0|QColor|minorGridLineColor|

$prototype=void setMinorGridLineColor(const QColor &color)
$method=5,7,0|void|setMinorGridLineColor|const QColor &

%%
%% Q_PROPERTY(bool labelsVisible READ labelsVisible WRITE setLabelsVisible NOTIFY labelsVisibleChanged)
%%

$prototype=bool labelsVisible() const
$method=5,7,0|bool|labelsVisible|

$prototype=void setLabelsVisible(bool visible = true)
$method=5,7,0|void|setLabelsVisible|bool=true

%%
%% Q_PROPERTY(QBrush labelsBrush READ labelsBrush WRITE setLabelsBrush NOTIFY labelsBrushChanged)
%%

$prototype=QBrush labelsBrush() const
$method=5,7,0|QBrush|labelsBrush|

$prototype=void setLabelsBrush(const QBrush &brush)
$method=5,7,0|void|setLabelsBrush|const QBrush &

%%
%% Q_PROPERTY(QFont labelsFont READ labelsFont WRITE setLabelsFont NOTIFY labelsFontChanged)
%%

$prototype=QFont labelsFont() const
$method=5,7,0|QFont|labelsFont|

$prototype=void setLabelsFont(const QFont &font)
$method=5,7,0|void|setLabelsFont|const QFont &

%%
%% Q_PROPERTY(int labelsAngle READ labelsAngle WRITE setLabelsAngle NOTIFY labelsAngleChanged)
%%

$prototype=int labelsAngle() const
$method=5,7,0|int|labelsAngle|

$prototype=void setLabelsAngle(int angle)
$method=5,7,0|void|setLabelsAngle|int

%%
%% Q_PROPERTY(QColor labelsColor READ labelsColor WRITE setLabelsColor NOTIFY labelsColorChanged)
%%

$prototype=QColor labelsColor() const
$method=5,7,0|QColor|labelsColor|

$prototype=void setLabelsColor(QColor color)
$method=5,7,0|void|setLabelsColor|QColor

%%
%% Q_PROPERTY(bool titleVisible READ isTitleVisible WRITE setTitleVisible NOTIFY titleVisibleChanged)
%%

$prototype=bool isTitleVisible() const
$method=5,7,0|bool|isTitleVisible|

$prototype=void setTitleVisible(bool visible = true)
$method=5,7,0|void|setTitleVisible|bool=true

%%
%% Q_PROPERTY(QBrush titleBrush READ titleBrush WRITE setTitleBrush NOTIFY titleBrushChanged)
%%

$prototype=QBrush titleBrush() const
$method=5,7,0|QBrush|titleBrush|

$prototype=void setTitleBrush(const QBrush &brush)
$method=5,7,0|void|setTitleBrush|const QBrush &

%%
%% Q_PROPERTY(QFont titleFont READ titleFont WRITE setTitleFont NOTIFY titleFontChanged)
%%

$prototype=QFont titleFont() const
$method=5,7,0|QFont|titleFont|

$prototype=void setTitleFont(const QFont &font)
$method=5,7,0|void|setTitleFont|const QFont &

%%
%% Q_PROPERTY(QString titleText READ titleText WRITE setTitleText NOTIFY titleTextChanged)
%%

$prototype=QString titleText() const
$method=5,7,0|QString|titleText|

$prototype=void setTitleText(const QString &title)
$method=5,7,0|void|setTitleText|const QString &

%%
%% Q_PROPERTY(bool shadesVisible READ shadesVisible WRITE setShadesVisible NOTIFY shadesVisibleChanged)
%%

$prototype=bool shadesVisible() const
$method=5,7,0|bool|shadesVisible|

$prototype=void setShadesVisible(bool visible = true)
$method=5,7,0|void|setShadesVisible|bool=true

%%
%% Q_PROPERTY(QPen shadesPen READ shadesPen WRITE setShadesPen NOTIFY shadesPenChanged)
%%

$prototype=QPen shadesPen() const
$method=5,7,0|QPen|shadesPen|

$prototype=void setShadesPen(const QPen &pen)
$method=5,7,0|void|setShadesPen|const QPen &

%%
%% Q_PROPERTY(QBrush shadesBrush READ shadesBrush WRITE setShadesBrush NOTIFY shadesBrushChanged)
%%

$prototype=QBrush shadesBrush() const
$method=5,7,0|QBrush|shadesBrush|

$prototype=void setShadesBrush(const QBrush &brush)
$method=5,7,0|void|setShadesBrush|const QBrush &

%%
%% Q_PROPERTY(QColor shadesColor READ shadesColor WRITE setShadesColor NOTIFY shadesColorChanged)
%%

$prototype=QColor shadesColor() const
$method=5,7,0|QColor|shadesColor|

$prototype=void setShadesColor(QColor color)
$method=5,7,0|void|setShadesColor|QColor

%%
%% Q_PROPERTY(QColor shadesBorderColor READ shadesBorderColor WRITE setShadesBorderColor NOTIFY shadesBorderColorChanged)
%%

$prototype=QColor shadesBorderColor() const
$method=5,7,0|QColor|shadesBorderColor|

$prototype=void setShadesBorderColor(QColor color)
$method=5,7,0|void|setShadesBorderColor|QColor

%%
%% Q_PROPERTY(Qt::Orientation orientation READ orientation)
%%

$prototype=Qt::Orientation orientation() const
$method=5,7,0|Qt::Orientation|orientation|

%%
%% Q_PROPERTY(Qt::Alignment alignment READ alignment)
%%

$prototype=Qt::Alignment alignment() const
$method=5,7,0|Qt::Alignment|alignment|

%%
%% Q_PROPERTY(bool reverse READ isReverse WRITE setReverse NOTIFY reverseChanged)
%%

$prototype=bool isReverse() const
$method=5,7,0|bool|isReverse|

$prototype=void setReverse(bool reverse = true)
$method=5,7,0|void|setReverse|bool=true

%%
%%
%%

$prototype=virtual AxisType type() const = 0
$virtualMethod=5,7,0|QAbstractAxis::AxisType|type|

$prototype=void show()
$method=5,7,0|void|show|

$prototype=void hide()
$method=5,7,0|void|hide|

$prototype=void setMin(const QVariant &min)
$method=5,7,0|void|setMin|const QVariant &

$prototype=void setMax(const QVariant &max)
$method=5,7,0|void|setMax|const QVariant &

$prototype=void setRange(const QVariant &min, const QVariant &max)
$method=5,7,0|void|setRange|const QVariant &,const QVariant &

$beginSignals
$signal=5,7,0|colorChanged(QColor)
$signal=5,7,0|gridLineColorChanged(QColor)
$signal=5,7,0|gridLinePenChanged(QPen)
$signal=5,7,0|gridVisibleChanged(bool)
$signal=5,7,0|labelsAngleChanged(int)
$signal=5,7,0|labelsBrushChanged(QBrush)
$signal=5,7,0|labelsColorChanged(QColor)
$signal=5,7,0|labelsFontChanged(QFont)
$signal=5,7,0|labelsVisibleChanged(bool)
$signal=5,7,0|linePenChanged(QPen)
$signal=5,7,0|lineVisibleChanged(bool)
$signal=5,7,0|minorGridLineColorChanged(QColor)
$signal=5,7,0|minorGridLinePenChanged(QPen)
$signal=5,7,0|minorGridVisibleChanged(bool)
$signal=5,7,0|reverseChanged(bool)
$signal=5,7,0|shadesBorderColorChanged(QColor)
$signal=5,7,0|shadesBrushChanged(QBrush)
$signal=5,7,0|shadesColorChanged(QColor)
$signal=5,7,0|shadesPenChanged(QPen)
$signal=5,7,0|shadesVisibleChanged(bool)
$signal=5,7,0|titleBrushChanged(QBrush)
$signal=5,7,0|titleFontChanged(QFont)
$signal=5,7,0|titleTextChanged(QString)
$signal=5,7,0|titleVisibleChanged(bool)
$signal=5,7,0|visibleChanged(bool)
$endSignals

#pragma ENDDUMP
