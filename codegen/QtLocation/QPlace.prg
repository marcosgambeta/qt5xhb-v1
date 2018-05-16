%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACECATEGORY
REQUEST QGEOLOCATION
REQUEST QPLACERATINGS
REQUEST QPLACESUPPLIER
REQUEST QPLACEICON
REQUEST QURL
REQUEST QPLACEATTRIBUTE
REQUEST QPLACECONTACTDETAIL
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD categories
   METHOD setCategories
   METHOD setCategory
   METHOD location
   METHOD setLocation
   METHOD ratings
   METHOD setRatings
   METHOD supplier
   METHOD setSupplier
   METHOD attribution
   METHOD setAttribution
   METHOD icon
   METHOD setIcon
   METHOD totalContentCount
   METHOD setTotalContentCount
   METHOD name
   METHOD setName
   METHOD placeId
   METHOD setPlaceId
   METHOD primaryPhone
   METHOD primaryFax
   METHOD primaryEmail
   METHOD primaryWebsite
   METHOD detailsFetched
   METHOD setDetailsFetched
   METHOD extendedAttributeTypes
   METHOD extendedAttribute
   METHOD setExtendedAttribute
   METHOD removeExtendedAttribute
   METHOD contactTypes
   METHOD contactDetails
   METHOD setContactDetails
   METHOD appendContactDetail
   METHOD removeContactDetails
   METHOD visibility
   METHOD setVisibility
   METHOD isEmpty

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QPlaceSupplier>
#include <QPlaceIcon>

$prototype=QPlace()
$internalConstructor=5,4,0|new1|

$prototype=QPlace(const QPlace &other)
$internalConstructor=5,4,0|new2|const QPlace &

//[1]QPlace()
//[2]QPlace(const QPlace &other)

HB_FUNC_STATIC( QPLACE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlace_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACE(1) )
  {
    QPlace_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

$prototype=QList<QPlaceCategory> categories() const
$method=5,4,0|QList<QPlaceCategory>|categories|

$prototype=void setCategories(const QList<QPlaceCategory> &categories)
$method=5,4,0|void|setCategories|const QList<QPlaceCategory> &

$prototype=void setCategory(const QPlaceCategory &category)
$method=5,4,0|void|setCategory|const QPlaceCategory &

$prototype=QGeoLocation location() const
$method=5,4,0|QGeoLocation|location|

$prototype=void setLocation(const QGeoLocation &location)
$method=5,4,0|void|setLocation|const QGeoLocation &

$prototype=QPlaceRatings ratings() const
$method=5,4,0|QPlaceRatings|ratings|

$prototype=void setRatings(const QPlaceRatings &ratings)
$method=5,4,0|void|setRatings|const QPlaceRatings &

$prototype=QPlaceSupplier supplier() const
$method=5,4,0|QPlaceSupplier|supplier|

$prototype=void setSupplier(const QPlaceSupplier &supplier)
$method=5,4,0|void|setSupplier|const QPlaceSupplier &

$prototype=QString attribution() const
$method=5,4,0|QString|attribution|

$prototype=void setAttribution(const QString &attribution)
$method=5,4,0|void|setAttribution|const QString &

$prototype=QPlaceIcon icon() const
$method=5,4,0|QPlaceIcon|icon|

$prototype=void setIcon(const QPlaceIcon &icon)
$method=5,4,0|void|setIcon|const QPlaceIcon &

$prototype=int totalContentCount(QPlaceContent::Type type) const
$method=5,4,0|int|totalContentCount|QPlaceContent::Type

$prototype=void setTotalContentCount(QPlaceContent::Type type, int total)
$method=5,4,0|void|setTotalContentCount|QPlaceContent::Type,int

$prototype=QString name() const
$method=5,4,0|QString|name|

$prototype=void setName(const QString &name)
$method=5,4,0|void|setName|const QString &

$prototype=QString placeId() const
$method=5,4,0|QString|placeId|

$prototype=void setPlaceId(const QString &identifier)
$method=5,4,0|void|setPlaceId|const QString &

$prototype=QString primaryPhone() const
$method=5,4,0|QString|primaryPhone|

$prototype=QString primaryFax() const
$method=5,4,0|QString|primaryFax|

$prototype=QString primaryEmail() const
$method=5,4,0|QString|primaryEmail|

$prototype=QUrl primaryWebsite() const
$method=5,4,0|QUrl|primaryWebsite|

$prototype=bool detailsFetched() const
$method=5,4,0|bool|detailsFetched|

$prototype=void setDetailsFetched(bool fetched)
$method=5,4,0|void|setDetailsFetched|bool

$prototype=QStringList extendedAttributeTypes() const
$method=5,4,0|QStringList|extendedAttributeTypes|

$prototype=QPlaceAttribute extendedAttribute(const QString &attributeType) const
$method=5,4,0|QPlaceAttribute|extendedAttribute|const QString &

$prototype=void setExtendedAttribute(const QString &attributeType, const QPlaceAttribute &attribute)
$method=5,4,0|void|setExtendedAttribute|const QString &,const QPlaceAttribute &

$prototype=void removeExtendedAttribute(const QString &attributeType)
$method=5,4,0|void|removeExtendedAttribute|const QString &

$prototype=QStringList contactTypes() const
$method=5,4,0|QStringList|contactTypes|

$prototype=QList<QPlaceContactDetail> contactDetails(const QString &contactType) const
$method=5,4,0|QList<QPlaceContactDetail>|contactDetails|const QString &

$prototype=void setContactDetails(const QString &contactType, QList<QPlaceContactDetail> details)
$method=5,4,0|void|setContactDetails|const QString &,QList<QPlaceContactDetail>

$prototype=void appendContactDetail(const QString &contactType, const QPlaceContactDetail &detail)
$method=5,4,0|void|appendContactDetail|const QString &,const QPlaceContactDetail &

$prototype=void removeContactDetails(const QString &contactType)
$method=5,4,0|void|removeContactDetails|const QString &

$prototype=QLocation::Visibility visibility() const
$method=5,4,0|QLocation::Visibility|visibility|

$prototype=void setVisibility(QLocation::Visibility visibility)
$method=5,4,0|void|setVisibility|QLocation::Visibility

$prototype=bool isEmpty() const
$method=5,4,0|bool|isEmpty|

$extraMethods

#pragma ENDDUMP
