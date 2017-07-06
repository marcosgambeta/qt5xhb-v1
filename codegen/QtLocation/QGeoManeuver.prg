$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCOORDINATE
#endif

CLASS QGeoManeuver

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setPosition
   METHOD position
   METHOD setInstructionText
   METHOD instructionText
   METHOD setDirection
   METHOD direction
   METHOD setTimeToNextInstruction
   METHOD timeToNextInstruction
   METHOD setDistanceToNextInstruction
   METHOD distanceToNextInstruction
   METHOD setWaypoint
   METHOD waypoint

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QGeoCoordinate>

/*
QGeoManeuver()
*/
void QGeoManeuver_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * o = new QGeoManeuver ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoManeuver(const QGeoManeuver &other)
*/
void QGeoManeuver_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * o = new QGeoManeuver ( *PQGEOMANEUVER(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QGeoManeuver()
//[2]QGeoManeuver(const QGeoManeuver &other)

HB_FUNC_STATIC( QGEOMANEUVER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoManeuver_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOMANEUVER(1) )
  {
    QGeoManeuver_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
bool isValid() const
*/
HB_FUNC_STATIC( QGEOMANEUVER_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * obj = (QGeoManeuver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
#endif
}


/*
void setPosition(const QGeoCoordinate &position)
*/
HB_FUNC_STATIC( QGEOMANEUVER_SETPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * obj = (QGeoManeuver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPosition ( *PQGEOCOORDINATE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGeoCoordinate position() const
*/
HB_FUNC_STATIC( QGEOMANEUVER_POSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * obj = (QGeoManeuver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCoordinate * ptr = new QGeoCoordinate( obj->position () );
    _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
  }
#endif
}


/*
void setInstructionText(const QString &instructionText)
*/
HB_FUNC_STATIC( QGEOMANEUVER_SETINSTRUCTIONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * obj = (QGeoManeuver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setInstructionText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString instructionText() const
*/
HB_FUNC_STATIC( QGEOMANEUVER_INSTRUCTIONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * obj = (QGeoManeuver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->instructionText () );
  }
#endif
}


/*
void setDirection(InstructionDirection direction)
*/
HB_FUNC_STATIC( QGEOMANEUVER_SETDIRECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * obj = (QGeoManeuver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDirection ( (QGeoManeuver::InstructionDirection) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
InstructionDirection direction() const
*/
HB_FUNC_STATIC( QGEOMANEUVER_DIRECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * obj = (QGeoManeuver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->direction () );
  }
#endif
}


/*
void setTimeToNextInstruction(int secs)
*/
HB_FUNC_STATIC( QGEOMANEUVER_SETTIMETONEXTINSTRUCTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * obj = (QGeoManeuver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTimeToNextInstruction ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int timeToNextInstruction() const
*/
HB_FUNC_STATIC( QGEOMANEUVER_TIMETONEXTINSTRUCTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * obj = (QGeoManeuver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->timeToNextInstruction () );
  }
#endif
}


/*
void setDistanceToNextInstruction(qreal distance)
*/
HB_FUNC_STATIC( QGEOMANEUVER_SETDISTANCETONEXTINSTRUCTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * obj = (QGeoManeuver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDistanceToNextInstruction ( (qreal) hb_parnd(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qreal distanceToNextInstruction() const
*/
HB_FUNC_STATIC( QGEOMANEUVER_DISTANCETONEXTINSTRUCTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * obj = (QGeoManeuver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->distanceToNextInstruction () );
  }
#endif
}


/*
void setWaypoint(const QGeoCoordinate &coordinate)
*/
HB_FUNC_STATIC( QGEOMANEUVER_SETWAYPOINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * obj = (QGeoManeuver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWaypoint ( *PQGEOCOORDINATE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGeoCoordinate waypoint() const
*/
HB_FUNC_STATIC( QGEOMANEUVER_WAYPOINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * obj = (QGeoManeuver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCoordinate * ptr = new QGeoCoordinate( obj->waypoint () );
    _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
  }
#endif
}



$extraMethods

#pragma ENDDUMP
