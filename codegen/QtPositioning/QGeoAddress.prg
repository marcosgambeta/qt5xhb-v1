$header

#include "hbclass.ch"

CLASS QGeoAddress

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD text
   METHOD setText
   METHOD country
   METHOD setCountry
   METHOD countryCode
   METHOD setCountryCode
   METHOD state
   METHOD setState
   METHOD county
   METHOD setCounty
   METHOD city
   METHOD setCity
   METHOD district
   METHOD setDistrict
   METHOD postalCode
   METHOD setPostalCode
   METHOD street
   METHOD setStreet
   METHOD isEmpty
   METHOD clear
   METHOD isTextGenerated

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

#include <QString>

/*
QGeoAddress()
*/
HB_FUNC_STATIC( QGEOADDRESS_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * o = new QGeoAddress ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoAddress(const QGeoAddress &other)
*/
HB_FUNC_STATIC( QGEOADDRESS_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * o = new QGeoAddress ( *PQGEOADDRESS(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QGeoAddress()
//[2]QGeoAddress(const QGeoAddress &other)

HB_FUNC_STATIC( QGEOADDRESS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOADDRESS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGEOADDRESS(1) )
  {
    HB_FUNC_EXEC( QGEOADDRESS_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
QString text() const
*/
HB_FUNC_STATIC( QGEOADDRESS_TEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->text () );
  }
#endif
}


/*
void setText(const QString &text)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString country() const
*/
HB_FUNC_STATIC( QGEOADDRESS_COUNTRY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->country () );
  }
#endif
}


/*
void setCountry(const QString &country)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETCOUNTRY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCountry ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString countryCode() const
*/
HB_FUNC_STATIC( QGEOADDRESS_COUNTRYCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->countryCode () );
  }
#endif
}


/*
void setCountryCode(const QString &countryCode)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETCOUNTRYCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCountryCode ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString state() const
*/
HB_FUNC_STATIC( QGEOADDRESS_STATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->state () );
  }
#endif
}


/*
void setState(const QString &state)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETSTATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setState ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString county() const
*/
HB_FUNC_STATIC( QGEOADDRESS_COUNTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->county () );
  }
#endif
}


/*
void setCounty(const QString &county)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETCOUNTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCounty ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString city() const
*/
HB_FUNC_STATIC( QGEOADDRESS_CITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->city () );
  }
#endif
}


/*
void setCity(const QString &city)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETCITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCity ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString district() const
*/
HB_FUNC_STATIC( QGEOADDRESS_DISTRICT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->district () );
  }
#endif
}


/*
void setDistrict(const QString &district)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETDISTRICT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDistrict ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString postalCode() const
*/
HB_FUNC_STATIC( QGEOADDRESS_POSTALCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->postalCode () );
  }
#endif
}


/*
void setPostalCode(const QString &postalCode)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETPOSTALCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPostalCode ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString street() const
*/
HB_FUNC_STATIC( QGEOADDRESS_STREET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->street () );
  }
#endif
}


/*
void setStreet(const QString &street)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETSTREET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStreet ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QGEOADDRESS_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
#endif
}


/*
void clear()
*/
HB_FUNC_STATIC( QGEOADDRESS_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isTextGenerated() const
*/
HB_FUNC_STATIC( QGEOADDRESS_ISTEXTGENERATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isTextGenerated () );
  }
#endif
}



$extraMethods

#pragma ENDDUMP
