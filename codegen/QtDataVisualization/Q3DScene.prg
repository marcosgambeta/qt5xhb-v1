%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QObject

   METHOD new
   METHOD delete

   METHOD activeCamera
   METHOD activeLight
   METHOD devicePixelRatio
   METHOD graphPositionQuery
   METHOD invalidSelectionPoint
   METHOD isPointInPrimarySubView
   METHOD isPointInSecondarySubView
   METHOD isSecondarySubviewOnTop
   METHOD isSlicingActive
   METHOD primarySubViewport
   METHOD secondarySubViewport
   METHOD selectionQueryPosition
   METHOD setActiveCamera
   METHOD setActiveLight
   METHOD setDevicePixelRatio
   METHOD setGraphPositionQuery
   METHOD setPrimarySubViewport
   METHOD setSecondarySubviewOnTop
   METHOD setSecondarySubViewport
   METHOD setSelectionQueryPosition
   METHOD setSlicingActive
   METHOD viewport

   METHOD onActiveCameraChanged
   METHOD onActiveLightChanged
   METHOD onDevicePixelRatioChanged
   METHOD onGraphPositionQueryChanged
   METHOD onPrimarySubViewportChanged
   METHOD onSecondarySubviewOnTopChanged
   METHOD onSecondarySubViewportChanged
   METHOD onSelectionQueryPositionChanged
   METHOD onSlicingActiveChanged
   METHOD onViewportChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit Q3DScene(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=virtual ~Q3DScene()
$deleteMethod

%%
%% Q_PROPERTY(QRect viewport READ viewport NOTIFY viewportChanged)
%%

$prototype=QRect viewport() const
$method=|QRect|viewport|

%%
%% Q_PROPERTY(QRect primarySubViewport READ primarySubViewport WRITE setPrimarySubViewport NOTIFY primarySubViewportChanged)
%%

$prototype=QRect primarySubViewport() const
$method=|QRect|primarySubViewport|

$prototype=void setPrimarySubViewport(const QRect &primarySubViewport)
$method=|void|setPrimarySubViewport|const QRect &

%%
%% Q_PROPERTY(QRect secondarySubViewport READ secondarySubViewport WRITE setSecondarySubViewport NOTIFY secondarySubViewportChanged)
%%

$prototype=QRect secondarySubViewport() const
$method=|QRect|secondarySubViewport|

$prototype=void setSecondarySubViewport(const QRect &secondarySubViewport)
$method=|void|setSecondarySubViewport|const QRect &

%%
%% Q_PROPERTY(QPoint selectionQueryPosition READ selectionQueryPosition WRITE setSelectionQueryPosition NOTIFY selectionQueryPositionChanged)
%%

$prototype=QPoint selectionQueryPosition() const
$method=|QPoint|selectionQueryPosition|

$prototype=void setSelectionQueryPosition(const QPoint &point)
$method=|void|setSelectionQueryPosition|const QPoint &

%%
%% Q_PROPERTY(bool secondarySubviewOnTop READ isSecondarySubviewOnTop  WRITE setSecondarySubviewOnTop  NOTIFY secondarySubviewOnTopChanged)
%%

$prototype=bool isSecondarySubviewOnTop() const
$method=|bool|isSecondarySubviewOnTop|

$prototype=void setSecondarySubviewOnTop(bool isSecondaryOnTop)
$method=|void|setSecondarySubviewOnTop|bool

%%
%% Q_PROPERTY(bool slicingActive READ isSlicingActive WRITE setSlicingActive NOTIFY slicingActiveChanged)
%%

$prototype=bool isSlicingActive() const
$method=|bool|isSlicingActive|

$prototype=void setSlicingActive(bool isSlicing)
$method=|void|setSlicingActive|bool

%%
%% Q_PROPERTY(Q3DCamera* activeCamera READ activeCamera WRITE setActiveCamera NOTIFY activeCameraChanged)
%%

$prototype=Q3DCamera *activeCamera() const
$method=|Q3DCamera *|activeCamera|

$prototype=void setActiveCamera(Q3DCamera *camera)
$method=|void|setActiveCamera|Q3DCamera *

%%
%% Q_PROPERTY(Q3DLight* activeLight READ activeLight WRITE setActiveLight NOTIFY activeLightChanged)
%%

$prototype=Q3DLight *activeLight() const
$method=|Q3DLight *|activeLight|

$prototype=void setActiveLight(Q3DLight *light)
$method=|void|setActiveLight|Q3DLight *

%%
%% Q_PROPERTY(float devicePixelRatio READ devicePixelRatio WRITE setDevicePixelRatio NOTIFY devicePixelRatioChanged)
%%

$prototype=float devicePixelRatio() const
$method=|float|devicePixelRatio|

$prototype=void setDevicePixelRatio(float pixelRatio)
$method=|void|setDevicePixelRatio|float

%%
%% Q_PROPERTY(QPoint graphPositionQuery READ graphPositionQuery WRITE setGraphPositionQuery NOTIFY graphPositionQueryChanged REVISION 1)
%%

$prototype=QPoint graphPositionQuery() const
$method=|QPoint|graphPositionQuery|

$prototype=void setGraphPositionQuery(const QPoint &point)
$method=|void|setGraphPositionQuery|const QPoint &

%%
%%
%%

$prototype=bool isPointInPrimarySubView(const QPoint &point)
$method=|bool|isPointInPrimarySubView|const QPoint &

$prototype=bool isPointInSecondarySubView(const QPoint &point)
$method=|bool|isPointInSecondarySubView|const QPoint &

$prototype=static QPoint invalidSelectionPoint()
$staticMethod=|QPoint|invalidSelectionPoint|

$beginSignals
$signal=|activeCameraChanged(Q3DCamera*)
$signal=|activeLightChanged(Q3DLight*)
$signal=|devicePixelRatioChanged(float)
$signal=|graphPositionQueryChanged(QPoint)
$signal=|primarySubViewportChanged(QRect)
$signal=|secondarySubviewOnTopChanged(bool)
$signal=|secondarySubViewportChanged(QRect)
$signal=|selectionQueryPositionChanged(QPoint)
$signal=|slicingActiveChanged(bool)
$signal=|viewportChanged(QRect)
$endSignals

#pragma ENDDUMP
