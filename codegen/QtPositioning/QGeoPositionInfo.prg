$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QGEOCOORDINATE
#endif

CLASS QGeoPositionInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setTimestamp
   METHOD timestamp
   METHOD setCoordinate
   METHOD coordinate
   METHOD setAttribute
   METHOD attribute
   METHOD removeAttribute
   METHOD hasAttribute

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QGeoPositionInfo()
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * o = new QGeoPositionInfo ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoPositionInfo(const QGeoCoordinate &coordinate, const QDateTime &updateTime)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * o = new QGeoPositionInfo ( *PQGEOCOORDINATE(1), *PQDATETIME(2) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoPositionInfo(const QGeoPositionInfo &other)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * o = new QGeoPositionInfo ( *PQGEOPOSITIONINFO(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QGeoPositionInfo()
//[2]QGeoPositionInfo(const QGeoCoordinate &coordinate, const QDateTime &updateTime)
//[3]QGeoPositionInfo(const QGeoPositionInfo &other)

HB_FUNC_STATIC( QGEOPOSITIONINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOPOSITIONINFO_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQGEOCOORDINATE(1) && ISQDATETIME(2) )
  {
    HB_FUNC_EXEC( QGEOPOSITIONINFO_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQGEOPOSITIONINFO(1) )
  {
    HB_FUNC_EXEC( QGEOPOSITIONINFO_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
bool isValid() const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
#endif
}


/*
void setTimestamp(const QDateTime &timestamp)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_SETTIMESTAMP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTimestamp ( *PQDATETIME(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QDateTime timestamp() const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_TIMESTAMP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->timestamp () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
#endif
}


/*
void setCoordinate(const QGeoCoordinate &coordinate)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_SETCOORDINATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCoordinate ( *PQGEOCOORDINATE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QGeoCoordinate coordinate() const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_COORDINATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCoordinate * ptr = new QGeoCoordinate( obj->coordinate () );
    _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
  }
#endif
}


/*
void setAttribute(Attribute attribute, qreal value)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_SETATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAttribute ( (QGeoPositionInfo::Attribute) hb_parni(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal attribute(Attribute attribute) const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_ATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->attribute ( (QGeoPositionInfo::Attribute) hb_parni(1) ) );
  }
#endif
}


/*
void removeAttribute(Attribute attribute)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_REMOVEATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeAttribute ( (QGeoPositionInfo::Attribute) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool hasAttribute(Attribute attribute) const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFO_HASATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfo * obj = (QGeoPositionInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasAttribute ( (QGeoPositionInfo::Attribute) hb_parni(1) ) );
  }
#endif
}



$extraMethods

#pragma ENDDUMP
