%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

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

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

#include <QString>

$prototype=QGeoAddress()
$constructor=5,2,0|new1|

$prototype=QGeoAddress(const QGeoAddress &other)
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

$prototype=QString text() const
$method=5,2,0|QString|text|

$prototype=void setText(const QString &text)
$method=5,2,0|void|setText|const QString &

$prototype=QString country() const
$method=5,2,0|QString|country|

$prototype=void setCountry(const QString &country)
$method=5,2,0|void|setCountry|const QString &

$prototype=QString countryCode() const
$method=5,2,0|QString|countryCode|

$prototype=void setCountryCode(const QString &countryCode)
$method=5,2,0|void|setCountryCode|const QString &

$prototype=QString state() const
$method=5,2,0|QString|state|

$prototype=void setState(const QString &state)
$method=5,2,0|void|setState|const QString &

$prototype=QString county() const
$method=5,2,0|QString|county|

$prototype=void setCounty(const QString &county)
$method=5,2,0|void|setCounty|const QString &

$prototype=QString city() const
$method=5,2,0|QString|city|

$prototype=void setCity(const QString &city)
$method=5,2,0|void|setCity|const QString &

$prototype=QString district() const
$method=5,2,0|QString|district|

$prototype=void setDistrict(const QString &district)
$method=5,2,0|void|setDistrict|const QString &

$prototype=QString postalCode() const
$method=5,2,0|QString|postalCode|

$prototype=void setPostalCode(const QString &postalCode)
$method=5,2,0|void|setPostalCode|const QString &

$prototype=QString street() const
$method=5,2,0|QString|street|

$prototype=void setStreet(const QString &street)
$method=5,2,0|void|setStreet|const QString &

$prototype=bool isEmpty() const
$method=5,2,0|bool|isEmpty|

$prototype=void clear()
$method=5,2,0|void|clear|

$prototype=bool isTextGenerated() const
$method=5,2,0|bool|isTextGenerated|

$extraMethods

#pragma ENDDUMP
