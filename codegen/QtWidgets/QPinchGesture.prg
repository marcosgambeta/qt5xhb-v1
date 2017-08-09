$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QPinchGesture INHERIT QGesture

   METHOD delete
   METHOD centerPoint
   METHOD changeFlags
   METHOD lastCenterPoint
   METHOD lastRotationAngle
   METHOD lastScaleFactor
   METHOD rotationAngle
   METHOD scaleFactor
   METHOD setCenterPoint
   METHOD setChangeFlags
   METHOD setLastCenterPoint
   METHOD setLastRotationAngle
   METHOD setLastScaleFactor
   METHOD setRotationAngle
   METHOD setScaleFactor
   METHOD setStartCenterPoint
   METHOD setTotalChangeFlags
   METHOD setTotalRotationAngle
   METHOD setTotalScaleFactor
   METHOD startCenterPoint
   METHOD totalChangeFlags
   METHOD totalRotationAngle
   METHOD totalScaleFactor

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QPointF centerPoint() const
*/
$method=|QPointF|centerPoint|

/*
ChangeFlags changeFlags() const
*/
$method=|QPinchGesture::ChangeFlags|changeFlags|

/*
QPointF lastCenterPoint() const
*/
$method=|QPointF|lastCenterPoint|

/*
qreal lastRotationAngle() const
*/
$method=|qreal|lastRotationAngle|

/*
qreal lastScaleFactor() const
*/
$method=|qreal|lastScaleFactor|

/*
qreal rotationAngle() const
*/
$method=|qreal|rotationAngle|

/*
qreal scaleFactor() const
*/
$method=|qreal|scaleFactor|

/*
void setCenterPoint(const QPointF & value)
*/
$method=|void|setCenterPoint|const QPointF &

/*
void setChangeFlags(ChangeFlags value)
*/
$method=|void|setChangeFlags|QPinchGesture::ChangeFlags

/*
void setLastCenterPoint(const QPointF & value)
*/
$method=|void|setLastCenterPoint|const QPointF &

/*
void setLastRotationAngle(qreal value)
*/
$method=|void|setLastRotationAngle|qreal

/*
void setLastScaleFactor(qreal value)
*/
$method=|void|setLastScaleFactor|qreal

/*
void setRotationAngle(qreal value)
*/
$method=|void|setRotationAngle|qreal

/*
void setScaleFactor(qreal value)
*/
$method=|void|setScaleFactor|qreal

/*
void setStartCenterPoint(const QPointF & value)
*/
$method=|void|setStartCenterPoint|const QPointF &

/*
void setTotalChangeFlags(ChangeFlags value)
*/
$method=|void|setTotalChangeFlags|QPinchGesture::ChangeFlags

/*
void setTotalRotationAngle(qreal value)
*/
$method=|void|setTotalRotationAngle|qreal

/*
void setTotalScaleFactor(qreal value)
*/
$method=|void|setTotalScaleFactor|qreal

/*
QPointF startCenterPoint() const
*/
$method=|QPointF|startCenterPoint|

/*
ChangeFlags totalChangeFlags() const
*/
$method=|QPinchGesture::ChangeFlags|totalChangeFlags|

/*
qreal totalRotationAngle() const
*/
$method=|qreal|totalRotationAngle|

/*
qreal totalScaleFactor() const
*/
$method=|qreal|totalScaleFactor|

#pragma ENDDUMP
