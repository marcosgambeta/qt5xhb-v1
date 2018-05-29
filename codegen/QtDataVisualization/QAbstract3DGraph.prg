%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWindow
%% CLASS QAbstract3DGraph INHERIT QWindow // protected QOpenGLFunction

%%   METHOD new
   METHOD delete

   METHOD activeInputHandler
   METHOD activeTheme
   METHOD addCustomItem
   METHOD addInputHandler
   METHOD addTheme
   METHOD aspectRatio
   METHOD clearSelection
   METHOD currentFps
   METHOD customItems
   METHOD hasContext
   METHOD horizontalAspectRatio
   METHOD inputHandlers
   METHOD isOrthoProjection
   METHOD isPolar
   METHOD isReflection
   METHOD locale
   METHOD margin
   METHOD measureFps
   METHOD optimizationHints
   METHOD queriedGraphPosition
   METHOD radialLabelOffset
   METHOD reflectivity
   METHOD releaseCustomItem
   METHOD releaseInputHandler
   METHOD releaseTheme
   METHOD removeCustomItem
   METHOD removeCustomItemAt
   METHOD removeCustomItems
   METHOD renderToImage
   METHOD scene
   METHOD selectedAxis
   METHOD selectedCustomItem
   METHOD selectedCustomItemIndex
   METHOD selectedElement
   METHOD selectedLabelIndex
   METHOD selectionMode
   METHOD setActiveInputHandler
   METHOD setActiveTheme
   METHOD setAspectRatio
   METHOD setHorizontalAspectRatio
   METHOD setLocale
   METHOD setMargin
   METHOD setMeasureFps
   METHOD setOptimizationHints
   METHOD setOrthoProjection
   METHOD setPolar
   METHOD setRadialLabelOffset
   METHOD setReflection
   METHOD setReflectivity
   METHOD setSelectionMode
   METHOD setShadowQuality
   METHOD shadowQuality
   METHOD shadowsSupported
   METHOD themes

   METHOD onActiveInputHandlerChanged
   METHOD onActiveThemeChanged
   METHOD onAspectRatioChanged
   METHOD onCurrentFpsChanged
   METHOD onHorizontalAspectRatioChanged
   METHOD onLocaleChanged
   METHOD onMarginChanged
   METHOD onMeasureFpsChanged
   METHOD onOptimizationHintsChanged
   METHOD onOrthoProjectionChanged
   METHOD onPolarChanged
   METHOD onQueriedGraphPositionChanged
   METHOD onRadialLabelOffsetChanged
   METHOD onReflectionChanged
   METHOD onReflectivityChanged
   METHOD onSelectedElementChanged
   METHOD onSelectionModeChanged
   METHOD onShadowQualityChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QAbstract3DAxis>
#include <QCustom3DItem>

using namespace QtDataVisualization;

$prototype=explicit QAbstract3DGraph(QAbstract3DGraphPrivate *d, const QSurfaceFormat *format, QWindow *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QAbstract3DGraph()
$deleteMethod

%%
%% Q_PROPERTY(QAbstract3DInputHandler* activeInputHandler READ activeInputHandler WRITE setActiveInputHandler NOTIFY activeInputHandlerChanged)
%%

$prototype=QAbstract3DInputHandler *activeInputHandler() const
$method=|QAbstract3DInputHandler *|activeInputHandler|

$prototype=void setActiveInputHandler(QAbstract3DInputHandler *inputHandler)
$method=|void|setActiveInputHandler|QAbstract3DInputHandler *

%%
%% Q_PROPERTY(Q3DTheme* activeTheme READ activeTheme WRITE setActiveTheme NOTIFY activeThemeChanged)
%%

$prototype=Q3DTheme *activeTheme() const
$method=|Q3DTheme *|activeTheme|

$prototype=void setActiveTheme(Q3DTheme *theme)
$method=|void|setActiveTheme|Q3DTheme *

%%
%% Q_PROPERTY(SelectionFlags selectionMode READ selectionMode WRITE setSelectionMode NOTIFY selectionModeChanged)
%%

$prototype=SelectionFlags selectionMode() const
$method=|QAbstract3DGraph::SelectionFlags|selectionMode|

$prototype=void setSelectionMode(SelectionFlags mode)
$method=|void|setSelectionMode|QAbstract3DGraph::SelectionFlags

%%
%% Q_PROPERTY(ShadowQuality shadowQuality READ shadowQuality WRITE setShadowQuality NOTIFY shadowQualityChanged)
%%

$prototype=ShadowQuality shadowQuality() const
$method=|QAbstract3DGraph::ShadowQuality|shadowQuality|

$prototype=void setShadowQuality(ShadowQuality quality)
$method=|void|setShadowQuality|QAbstract3DGraph::ShadowQuality

%%
%% Q_PROPERTY(Q3DScene* scene READ scene)
%%

$prototype=Q3DScene *scene() const
$method=|Q3DScene *|scene|

%%
%% Q_PROPERTY(bool measureFps READ measureFps WRITE setMeasureFps NOTIFY measureFpsChanged)
%%

$prototype=bool measureFps() const
$method=|bool|measureFps|

$prototype=void setMeasureFps(bool enable)
$method=|void|setMeasureFps|bool

%%
%% Q_PROPERTY(qreal currentFps READ currentFps NOTIFY currentFpsChanged)
%%

$prototype=qreal currentFps() const
$method=|qreal|currentFps|

%%
%% Q_PROPERTY(bool orthoProjection READ isOrthoProjection WRITE setOrthoProjection NOTIFY orthoProjectionChanged)
%%

$prototype=bool isOrthoProjection() const
$method=|bool|isOrthoProjection|

$prototype=void setOrthoProjection(bool enable)
$method=|void|setOrthoProjection|bool

%%
%% Q_PROPERTY(ElementType selectedElement READ selectedElement NOTIFY selectedElementChanged)
%%

$prototype=ElementType selectedElement() const
$method=|QAbstract3DGraph::ElementType|selectedElement|

%%
%% Q_PROPERTY(qreal aspectRatio READ aspectRatio WRITE setAspectRatio NOTIFY aspectRatioChanged)
%%

$prototype=qreal aspectRatio() const
$method=|qreal|aspectRatio|

$prototype=void setAspectRatio(qreal ratio)
$method=|void|setAspectRatio|qreal

%%
%% Q_PROPERTY(OptimizationHints optimizationHints READ optimizationHints WRITE setOptimizationHints NOTIFY optimizationHintsChanged)
%%

$prototype=OptimizationHints optimizationHints() const
$method=|QAbstract3DGraph::OptimizationHints|optimizationHints|

$prototype=void setOptimizationHints(OptimizationHints hints)
$method=|void|setOptimizationHints|QAbstract3DGraph::OptimizationHints

%%
%% Q_PROPERTY(bool polar READ isPolar WRITE setPolar NOTIFY polarChanged)
%%

$prototype=bool isPolar() const
$method=|bool|isPolar|

$prototype=void setPolar(bool enable)
$method=|void|setPolar|bool

%%
%% Q_PROPERTY(float radialLabelOffset READ radialLabelOffset WRITE setRadialLabelOffset NOTIFY radialLabelOffsetChanged)
%%

$prototype=float radialLabelOffset() const
$method=|float|radialLabelOffset|

$prototype=void setRadialLabelOffset(float offset)
$method=|void|setRadialLabelOffset|float

%%
%% Q_PROPERTY(qreal horizontalAspectRatio READ horizontalAspectRatio WRITE setHorizontalAspectRatio NOTIFY horizontalAspectRatioChanged)
%%

$prototype=qreal horizontalAspectRatio() const
$method=|qreal|horizontalAspectRatio|

$prototype=void setHorizontalAspectRatio(qreal ratio)
$method=|void|setHorizontalAspectRatio|qreal

%%
%% Q_PROPERTY(bool reflection READ isReflection WRITE setReflection NOTIFY reflectionChanged)
%%

$prototype=bool isReflection() const
$method=|bool|isReflection|

$prototype=void setReflection(bool enable)
$method=|void|setReflection|bool

%%
%% Q_PROPERTY(qreal reflectivity READ reflectivity WRITE setReflectivity NOTIFY reflectivityChanged)
%%

$prototype=qreal reflectivity() const
$method=|qreal|reflectivity|

$prototype=void setReflectivity(qreal reflectivity)
$method=|void|setReflectivity|qreal

%%
%% Q_PROPERTY(QLocale locale READ locale WRITE setLocale NOTIFY localeChanged)
%%

$prototype=QLocale locale() const
$method=|QLocale|locale|

$prototype=void setLocale(const QLocale &locale)
$method=|void|setLocale|const QLocale &

%%
%% Q_PROPERTY(QVector3D queriedGraphPosition READ queriedGraphPosition NOTIFY queriedGraphPositionChanged)
%%

$prototype=QVector3D queriedGraphPosition() const
$method=|QVector3D|queriedGraphPosition|

%%
%% Q_PROPERTY(qreal margin READ margin WRITE setMargin NOTIFY marginChanged)
%%

$prototype=qreal margin() const
$method=|qreal|margin|

$prototype=void setMargin(qreal margin)
$method=|void|setMargin|qreal

%%
%%
%%

$prototype=void addInputHandler(QAbstract3DInputHandler *inputHandler)
$method=|void|addInputHandler|QAbstract3DInputHandler *

$prototype=void releaseInputHandler(QAbstract3DInputHandler *inputHandler)
$method=|void|releaseInputHandler|QAbstract3DInputHandler *

$prototype=QList<QAbstract3DInputHandler *> inputHandlers() const
$method=|QList<QAbstract3DInputHandler *>|inputHandlers|

$prototype=void addTheme(Q3DTheme *theme)
$method=|void|addTheme|Q3DTheme *

$prototype=void releaseTheme(Q3DTheme *theme)
$method=|void|releaseTheme|Q3DTheme *

$prototype=QList<Q3DTheme *> themes() const
$method=|QList<Q3DTheme *>|themes|

$prototype=virtual bool shadowsSupported() const
$virtualMethod=|bool|shadowsSupported|

$prototype=void clearSelection()
$method=|void|clearSelection|

$prototype=int addCustomItem(QCustom3DItem *item)
$method=|int|addCustomItem|QCustom3DItem *

$prototype=void removeCustomItems()
$method=|void|removeCustomItems|

$prototype=void removeCustomItem(QCustom3DItem *item)
$method=|void|removeCustomItem|QCustom3DItem *

$prototype=void removeCustomItemAt(const QVector3D &position)
$method=|void|removeCustomItemAt|const QVector3D &

$prototype=void releaseCustomItem(QCustom3DItem *item)
$method=|void|releaseCustomItem|QCustom3DItem *

$prototype=QList<QCustom3DItem *> customItems() const
$method=|QList<QCustom3DItem *>|customItems|

$prototype=QAbstract3DAxis *selectedAxis() const
$method=|QAbstract3DAxis *|selectedAxis|

$prototype=int selectedLabelIndex() const
$method=|int|selectedLabelIndex|

$prototype=int selectedCustomItemIndex() const
$method=|int|selectedCustomItemIndex|

$prototype=QCustom3DItem *selectedCustomItem() const
$method=|QCustom3DItem *|selectedCustomItem|

$prototype=QImage renderToImage(int msaaSamples = 0, const QSize &imageSize = QSize())
$method=|QImage|renderToImage|int=0,const QSize &=QSize()

$prototype=bool hasContext() const
$method=|bool|hasContext|

$prototype=bool event(QEvent *event) (protected)

$prototype=void resizeEvent(QResizeEvent *event) (protected)

$prototype=void exposeEvent(QExposeEvent *event) (protected)

$prototype=void mouseDoubleClickEvent(QMouseEvent *event) (protected)

$prototype=void touchEvent(QTouchEvent *event) (protected)

$prototype=void mousePressEvent(QMouseEvent *event) (protected)

$prototype=void mouseReleaseEvent(QMouseEvent *event) (protected)

$prototype=void mouseMoveEvent(QMouseEvent *event) (protected)

%% #if QT_CONFIG(wheelevent)
$prototype=void wheelEvent(QWheelEvent *event) (protected)
%% #endif

$beginSignals
$signal=|activeInputHandlerChanged(QAbstract3DInputHandler*)
$signal=|activeThemeChanged(Q3DTheme*)
$signal=|aspectRatioChanged(qreal)
$signal=|currentFpsChanged(qreal)
$signal=|horizontalAspectRatioChanged(qreal)
$signal=|localeChanged(QLocale)
$signal=|marginChanged(qreal)
$signal=|measureFpsChanged(bool)
$signal=|optimizationHintsChanged(QAbstract3DGraph::OptimizationHints)
$signal=|orthoProjectionChanged(bool)
$signal=|polarChanged(bool)
$signal=|queriedGraphPositionChanged(QVector3D)
$signal=|radialLabelOffsetChanged(float)
$signal=|reflectionChanged(bool)
$signal=|reflectivityChanged(qreal)
$signal=|selectedElementChanged(QAbstract3DGraph::ElementType)
$signal=|selectionModeChanged(QAbstract3DGraph::SelectionFlags)
$signal=|shadowQualityChanged(QAbstract3DGraph::ShadowQuality)
$endSignals

#pragma ENDDUMP
