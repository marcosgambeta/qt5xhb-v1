$header

#include "hbclass.ch"

CLASS QGeoSatelliteInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD setSatelliteSystem
   METHOD satelliteSystem
   METHOD setSatelliteIdentifier
   METHOD satelliteIdentifier
   METHOD setSignalStrength
   METHOD signalStrength
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
QGeoSatelliteInfo()
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * o = new QGeoSatelliteInfo ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoSatelliteInfo(const QGeoSatelliteInfo &other)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * o = new QGeoSatelliteInfo ( *PQGEOSATELLITEINFO(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QGeoSatelliteInfo()
//[2]QGeoSatelliteInfo(const QGeoSatelliteInfo &other)

HB_FUNC_STATIC( QGEOSATELLITEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOSATELLITEINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGEOSATELLITEINFO(1) )
  {
    HB_FUNC_EXEC( QGEOSATELLITEINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
void setSatelliteSystem(SatelliteSystem system)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SETSATELLITESYSTEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSatelliteSystem ( (QGeoSatelliteInfo::SatelliteSystem) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
SatelliteSystem satelliteSystem() const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SATELLITESYSTEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->satelliteSystem () );
  }
#endif
}


/*
void setSatelliteIdentifier(int satId)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SETSATELLITEIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSatelliteIdentifier ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int satelliteIdentifier() const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SATELLITEIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->satelliteIdentifier () );
  }
#endif
}


/*
void setSignalStrength(int signalStrength)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SETSIGNALSTRENGTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSignalStrength ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int signalStrength() const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SIGNALSTRENGTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->signalStrength () );
  }
#endif
}


/*
void setAttribute(Attribute attribute, qreal value)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_SETATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAttribute ( (QGeoSatelliteInfo::Attribute) hb_parni(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal attribute(Attribute attribute) const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_ATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->attribute ( (QGeoSatelliteInfo::Attribute) hb_parni(1) ) );
  }
#endif
}


/*
void removeAttribute(Attribute attribute)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_REMOVEATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeAttribute ( (QGeoSatelliteInfo::Attribute) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool hasAttribute(Attribute attribute) const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFO_HASATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfo * obj = (QGeoSatelliteInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasAttribute ( (QGeoSatelliteInfo::Attribute) hb_parni(1) ) );
  }
#endif
}



$extraMethods

#pragma ENDDUMP
