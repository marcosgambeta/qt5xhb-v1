/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCOORDINATE
#endif

CLASS QGeoManeuver

   DATA pointer
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QGeoManeuver
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoManeuver>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoManeuver>
#endif
#endif

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
  QGeoManeuver * par1 = (QGeoManeuver *) _qt5xhb_itemGetPtr(1);
  QGeoManeuver * o = new QGeoManeuver ( *par1 );
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

HB_FUNC_STATIC( QGEOMANEUVER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * obj = (QGeoManeuver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QGEOMANEUVER_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoManeuver * obj = (QGeoManeuver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid () );
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
    QGeoCoordinate * par1 = (QGeoCoordinate *) _qt5xhb_itemGetPtr(1);
    obj->setPosition ( *par1 );
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
    hb_retc( (const char *) obj->instructionText ().toLatin1().data() );
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
    int par1 = hb_parni(1);
    obj->setDirection (  (QGeoManeuver::InstructionDirection) par1 );
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
    int i = obj->direction ();
    hb_retni( i );
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
    hb_retni( obj->timeToNextInstruction () );
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
    hb_retnd( obj->distanceToNextInstruction () );
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
    QGeoCoordinate * par1 = (QGeoCoordinate *) _qt5xhb_itemGetPtr(1);
    obj->setWaypoint ( *par1 );
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



HB_FUNC_STATIC( QGEOMANEUVER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QGEOMANEUVER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGEOMANEUVER_NEWFROM );
}

HB_FUNC_STATIC( QGEOMANEUVER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGEOMANEUVER_NEWFROM );
}

HB_FUNC_STATIC( QGEOMANEUVER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGEOMANEUVER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
