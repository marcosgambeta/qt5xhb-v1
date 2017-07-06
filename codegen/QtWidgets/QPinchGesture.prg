$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QPinchGesture INHERIT QGesture

   DATA self_destruction INIT .F.

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
HB_FUNC_STATIC( QPINCHGESTURE_CENTERPOINT )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->centerPoint () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
ChangeFlags changeFlags() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_CHANGEFLAGS )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->changeFlags () );
  }
}

/*
QPointF lastCenterPoint() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_LASTCENTERPOINT )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->lastCenterPoint () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
qreal lastRotationAngle() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_LASTROTATIONANGLE )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->lastRotationAngle () );
  }
}

/*
qreal lastScaleFactor() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_LASTSCALEFACTOR )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->lastScaleFactor () );
  }
}

/*
qreal rotationAngle() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_ROTATIONANGLE )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->rotationAngle () );
  }
}

/*
qreal scaleFactor() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_SCALEFACTOR )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->scaleFactor () );
  }
}

/*
void setCenterPoint(const QPointF & value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETCENTERPOINT )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setCenterPoint ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setChangeFlags(ChangeFlags value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETCHANGEFLAGS )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setChangeFlags ( (QPinchGesture::ChangeFlags) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLastCenterPoint(const QPointF & value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETLASTCENTERPOINT )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setLastCenterPoint ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLastRotationAngle(qreal value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETLASTROTATIONANGLE )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setLastRotationAngle ( PQREAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLastScaleFactor(qreal value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETLASTSCALEFACTOR )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setLastScaleFactor ( PQREAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRotationAngle(qreal value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETROTATIONANGLE )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setRotationAngle ( PQREAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScaleFactor(qreal value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETSCALEFACTOR )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setScaleFactor ( PQREAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStartCenterPoint(const QPointF & value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETSTARTCENTERPOINT )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setStartCenterPoint ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTotalChangeFlags(ChangeFlags value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETTOTALCHANGEFLAGS )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTotalChangeFlags ( (QPinchGesture::ChangeFlags) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTotalRotationAngle(qreal value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETTOTALROTATIONANGLE )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setTotalRotationAngle ( PQREAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTotalScaleFactor(qreal value)
*/
HB_FUNC_STATIC( QPINCHGESTURE_SETTOTALSCALEFACTOR )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setTotalScaleFactor ( PQREAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPointF startCenterPoint() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_STARTCENTERPOINT )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->startCenterPoint () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
ChangeFlags totalChangeFlags() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_TOTALCHANGEFLAGS )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->totalChangeFlags () );
  }
}

/*
qreal totalRotationAngle() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_TOTALROTATIONANGLE )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->totalRotationAngle () );
  }
}

/*
qreal totalScaleFactor() const
*/
HB_FUNC_STATIC( QPINCHGESTURE_TOTALSCALEFACTOR )
{
  QPinchGesture * obj = (QPinchGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->totalScaleFactor () );
  }
}

#pragma ENDDUMP
