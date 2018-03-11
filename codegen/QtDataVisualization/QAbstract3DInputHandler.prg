%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAbstract3DInputHandler INHERIT QObject

%%   METHOD new
   METHOD delete

   METHOD inputPosition
   METHOD inputView
%%   METHOD mouseDoubleClickEvent
%%   METHOD mouseMoveEvent
%%   METHOD mousePressEvent
%%   METHOD mouseReleaseEvent
   METHOD scene
   METHOD setInputPosition
   METHOD setInputView
   METHOD setScene
%%   METHOD touchEvent
%%   METHOD wheelEvent

   METHOD onInputViewChanged
   METHOD onPositionChanged
   METHOD onSceneChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QAbstract3DInputHandler(QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QAbstract3DInputHandler()
$deleteMethod

%%
%% Q_PROPERTY(InputView inputView READ inputView WRITE setInputView NOTIFY inputViewChanged)
%%

$prototype=InputView inputView() const
$method=|QAbstract3DInputHandler::InputView|inputView|

$prototype=void setInputView(InputView inputView)
$method=|void|setInputView|QAbstract3DInputHandler::InputView

%%
%% Q_PROPERTY(QPoint inputPosition READ inputPosition WRITE setInputPosition NOTIFY positionChanged)
%%

$prototype=QPoint inputPosition() const
$method=|QPoint|inputPosition|

$prototype=void setInputPosition(const QPoint &position)
$method=|void|setInputPosition|const QPoint &

%%
%% Q_PROPERTY(Q3DScene *scene READ scene WRITE setScene NOTIFY sceneChanged)
%%

$prototype=Q3DScene *scene() const
$method=|Q3DScene *|scene|

$prototype=void setScene(Q3DScene *scene)
$method=|void|setScene|Q3DScene *

%%
%%
%%

$prototype=virtual void mouseDoubleClickEvent(QMouseEvent *event)

$prototype=virtual void touchEvent(QTouchEvent *event)

$prototype=virtual void mousePressEvent(QMouseEvent *event, const QPoint &mousePos)

$prototype=virtual void mouseReleaseEvent(QMouseEvent *event, const QPoint &mousePos)

$prototype=virtual void mouseMoveEvent(QMouseEvent *event, const QPoint &mousePos)

%% #if QT_CONFIG(wheelevent)
$prototype=virtual void wheelEvent(QWheelEvent *event)
%% #endif

$prototype=void setPrevDistance(int distance) (protected)

$prototype=int prevDistance() const (protected)

$prototype=void setPreviousInputPos(const QPoint &position) (protected)

$prototype=QPoint previousInputPos() const (protected)

$beginSignals
$signal=|inputViewChanged(QAbstract3DInputHandler::InputView)
$signal=|positionChanged(QPoint)
$signal=|sceneChanged(Q3DScene*)
$endSignals

#pragma ENDDUMP
