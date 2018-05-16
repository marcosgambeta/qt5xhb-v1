%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD new
   METHOD delete

   METHOD coordinates
   METHOD interpolationType
   METHOD leftControlPoint
   METHOD rightControlPoint
   METHOD setCoordinates
   METHOD setInterpolationType
   METHOD setLeftControlPoint
   METHOD setRightControlPoint

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=Q_DECL_CONSTEXPR QKeyFrame() Q_DECL_NOTHROW
$prototype=Q_DECL_CONSTEXPR explicit QKeyFrame(QVector2D coords) Q_DECL_NOTHROW
$prototype=Q_DECL_CONSTEXPR explicit QKeyFrame(QVector2D coords, QVector2D lh, QVector2D rh) Q_DECL_NOTHROW

$deleteMethod

$prototype=void setCoordinates(QVector2D coords) Q_DECL_NOTHROW
$prototype=Q_DECL_CONSTEXPR QVector2D coordinates() const Q_DECL_NOTHROW
$prototype=void setLeftControlPoint(QVector2D lh) Q_DECL_NOTHROW
$prototype=Q_DECL_CONSTEXPR QVector2D leftControlPoint() const Q_DECL_NOTHROW
$prototype=void setRightControlPoint(QVector2D rh) Q_DECL_NOTHROW
$prototype=Q_DECL_CONSTEXPR QVector2D rightControlPoint() const Q_DECL_NOTHROW
$prototype=void setInterpolationType(InterpolationType interp) Q_DECL_NOTHROW
$prototype=Q_DECL_CONSTEXPR InterpolationType interpolationType() const Q_DECL_NOTHROW

$extraMethods

#pragma ENDDUMP
