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
$constructor=5,2,0|new1|

/*
QGeoAddress(const QGeoAddress &other)
*/
$constructor=5,2,0|new2|const QGeoAddress &

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
$method=5,2,0|QString|text|

/*
void setText(const QString &text)
*/
$method=5,2,0|void|setText|const QString &

/*
QString country() const
*/
$method=5,2,0|QString|country|

/*
void setCountry(const QString &country)
*/
$method=5,2,0|void|setCountry|const QString &

/*
QString countryCode() const
*/
$method=5,2,0|QString|countryCode|

/*
void setCountryCode(const QString &countryCode)
*/
$method=5,2,0|void|setCountryCode|const QString &

/*
QString state() const
*/
$method=5,2,0|QString|state|

/*
void setState(const QString &state)
*/
$method=5,2,0|void|setState|const QString &

/*
QString county() const
*/
$method=5,2,0|QString|county|

/*
void setCounty(const QString &county)
*/
$method=5,2,0|void|setCounty|const QString &

/*
QString city() const
*/
$method=5,2,0|QString|city|

/*
void setCity(const QString &city)
*/
$method=5,2,0|void|setCity|const QString &

/*
QString district() const
*/
$method=5,2,0|QString|district|

/*
void setDistrict(const QString &district)
*/
$method=5,2,0|void|setDistrict|const QString &

/*
QString postalCode() const
*/
$method=5,2,0|QString|postalCode|

/*
void setPostalCode(const QString &postalCode)
*/
$method=5,2,0|void|setPostalCode|const QString &

/*
QString street() const
*/
$method=5,2,0|QString|street|

/*
void setStreet(const QString &street)
*/
$method=5,2,0|void|setStreet|const QString &

/*
bool isEmpty() const
*/
$method=5,2,0|bool|isEmpty|

/*
void clear()
*/
$method=5,2,0|void|clear|

/*
bool isTextGenerated() const
*/
$method=5,2,0|bool|isTextGenerated|

$extraMethods

#pragma ENDDUMP
