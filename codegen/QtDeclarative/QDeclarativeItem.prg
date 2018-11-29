%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDeclarative

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsObject,QDeclarativeParserStatus

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDeclarativeItem ( QDeclarativeItem * parent = 0 )
$constructor=|new|QDeclarativeItem *=0

$deleteMethod

$prototype=qreal baselineOffset () const
$method=|qreal|baselineOffset|

$prototype=QDeclarativeItem * childAt ( qreal x, qreal y ) const
$method=|QDeclarativeItem *|childAt|qreal,qreal

$prototype=QRectF childrenRect ()
$method=|QRectF|childrenRect|

$prototype=bool clip () const
$method=|bool|clip|

$prototype=void forceActiveFocus ()
$method=|void|forceActiveFocus|

$prototype=qreal implicitHeight () const
$method=|qreal|implicitHeight|

$prototype=qreal implicitWidth () const
$method=|qreal|implicitWidth|

$prototype=bool keepMouseGrab () const
$method=|bool|keepMouseGrab|

$prototype=QScriptValue mapFromItem ( const QScriptValue & item, qreal x, qreal y ) const
$method=|QScriptValue|mapFromItem|const QScriptValue &,qreal,qreal

$prototype=QScriptValue mapToItem ( const QScriptValue & item, qreal x, qreal y ) const
$method=|QScriptValue|mapToItem|const QScriptValue &,qreal,qreal

$prototype=QDeclarativeItem * parentItem () const
$method=|QDeclarativeItem *|parentItem|

$prototype=void setBaselineOffset ( qreal )
$method=|void|setBaselineOffset|qreal

$prototype=void setClip ( bool )
$method=|void|setClip|bool

$prototype=void setKeepMouseGrab ( bool keep )
$method=|void|setKeepMouseGrab|bool

$prototype=void setParentItem ( QDeclarativeItem * parent )
$method=|void|setParentItem|QDeclarativeItem *

$prototype=void setSmooth ( bool smooth )
$method=|void|setSmooth|bool

$prototype=void setTransformOrigin ( TransformOrigin origin )
$method=|void|setTransformOrigin|QDeclarativeItem::TransformOrigin

$prototype=bool smooth () const
$method=|bool|smooth|

$prototype=TransformOrigin transformOrigin () const
$method=|QDeclarativeItem::TransformOrigin|transformOrigin|

#pragma ENDDUMP
