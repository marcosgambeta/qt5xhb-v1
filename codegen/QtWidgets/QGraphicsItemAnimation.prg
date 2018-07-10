%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QMatrix>
#include <QPointF>
#include <QTimeLine>

$prototype=QGraphicsItemAnimation ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void clear ()
$method=|void|clear|

$prototype=qreal horizontalScaleAt ( qreal step ) const
$method=|qreal|horizontalScaleAt|qreal

$prototype=qreal horizontalShearAt ( qreal step ) const
$method=|qreal|horizontalShearAt|qreal

$prototype=QGraphicsItem * item () const
$method=|QGraphicsItem *|item|

$prototype=QMatrix matrixAt ( qreal step ) const
$method=|QMatrix|matrixAt|qreal

$prototype=QPointF posAt ( qreal step ) const
$method=|QPointF|posAt|qreal

$prototype=qreal rotationAt ( qreal step ) const
$method=|qreal|rotationAt|qreal

$prototype=void setItem ( QGraphicsItem * item )
$method=|void|setItem|QGraphicsItem *

$prototype=void setPosAt ( qreal step, const QPointF & point )
$method=|void|setPosAt|qreal,const QPointF &

$prototype=void setRotationAt ( qreal step, qreal angle )
$method=|void|setRotationAt|qreal,qreal

$prototype=void setScaleAt ( qreal step, qreal sx, qreal sy )
$method=|void|setScaleAt|qreal,qreal,qreal

$prototype=void setShearAt ( qreal step, qreal sh, qreal sv )
$method=|void|setShearAt|qreal,qreal,qreal

$prototype=void setTimeLine ( QTimeLine * timeLine )
$method=|void|setTimeLine|QTimeLine *

$prototype=void setTranslationAt ( qreal step, qreal dx, qreal dy )
$method=|void|setTranslationAt|qreal,qreal,qreal

$prototype=QTimeLine * timeLine () const
$method=|QTimeLine *|timeLine|

$prototype=qreal verticalScaleAt ( qreal step ) const
$method=|qreal|verticalScaleAt|qreal

$prototype=qreal verticalShearAt ( qreal step ) const
$method=|qreal|verticalShearAt|qreal

$prototype=qreal xTranslationAt ( qreal step ) const
$method=|qreal|xTranslationAt|qreal

$prototype=qreal yTranslationAt ( qreal step ) const
$method=|qreal|yTranslationAt|qreal

$prototype=void setStep ( qreal step )
$method=|void|setStep|qreal

#pragma ENDDUMP
