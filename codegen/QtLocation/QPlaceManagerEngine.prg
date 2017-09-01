$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACEDETAILSREPLY
REQUEST QPLACECONTENTREPLY
REQUEST QPLACESEARCHREPLY
REQUEST QPLACESEARCHSUGGESTIONREPLY
REQUEST QPLACEIDREPLY
REQUEST QPLACEREPLY
REQUEST QPLACECATEGORY
REQUEST QLOCALE
REQUEST QURL
REQUEST QPLACE
REQUEST QPLACEMATCHREPLY
#endif

CLASS QPlaceManagerEngine INHERIT QObject

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD getPlaceDetails
   METHOD getPlaceContent
   METHOD search
   METHOD searchSuggestions
   METHOD savePlace
   METHOD removePlace
   METHOD saveCategory
   METHOD removeCategory
   METHOD initializeCategories
   METHOD parentCategoryId
   METHOD childCategoryIds
   METHOD category
   METHOD childCategories
   METHOD locales
   METHOD setLocales
   METHOD constructIconUrl
   METHOD compatiblePlace
   METHOD matchingPlaces

   METHOD onFinished
   METHOD onError
   METHOD onPlaceAdded
   METHOD onPlaceUpdated
   METHOD onPlaceRemoved
   METHOD onCategoryAdded
   METHOD onCategoryUpdated
   METHOD onCategoryRemoved
   METHOD onDataChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$deleteMethod=5,4,0

/*
QString managerName() const
*/
$method=5,4,0|QString|managerName|

/*
int managerVersion() const
*/
$method=5,4,0|int|managerVersion|

/*
virtual QPlaceDetailsReply *getPlaceDetails(const QString &placeId)
*/
$method=5,4,0|QPlaceDetailsReply *|getPlaceDetails|const QString &

/*
virtual QPlaceContentReply *getPlaceContent(const QPlaceContentRequest &request)
*/
$method=5,4,0|QPlaceContentReply *|getPlaceContent|const QPlaceContentRequest &

/*
virtual QPlaceSearchReply *search(const QPlaceSearchRequest &request)
*/
$method=5,4,0|QPlaceSearchReply *|search|const QPlaceSearchRequest &

/*
virtual QPlaceSearchSuggestionReply *searchSuggestions(const QPlaceSearchRequest &request)
*/
$method=5,4,0|QPlaceSearchSuggestionReply *|searchSuggestions|const QPlaceSearchRequest &

/*
virtual QPlaceIdReply *savePlace(const QPlace &place)
*/
$method=5,4,0|QPlaceIdReply *|savePlace|const QPlace &

/*
virtual QPlaceIdReply *removePlace(const QString &placeId)
*/
$method=5,4,0|QPlaceIdReply *|removePlace|const QString &

/*
virtual QPlaceIdReply *saveCategory(const QPlaceCategory &category, const QString &parentId)
*/
$method=5,4,0|QPlaceIdReply *|saveCategory|const QPlaceCategory &,const QString &

/*
virtual QPlaceIdReply *removeCategory(const QString &categoryId)
*/
$method=5,4,0|QPlaceIdReply *|removeCategory|const QString &

/*
virtual QPlaceReply *initializeCategories()
*/
$method=5,4,0|QPlaceReply *|initializeCategories|

/*
virtual QString parentCategoryId(const QString &categoryId) const
*/
$method=5,4,0|QString|parentCategoryId|const QString &

/*
virtual QStringList childCategoryIds(const QString &categoryId) const
*/
$method=5,4,0|QStringList|childCategoryIds|const QString &

/*
virtual QPlaceCategory category(const QString &categoryId) const
*/
$method=5,4,0|QPlaceCategory|category|const QString &

/*
virtual QList<QPlaceCategory> childCategories(const QString &parentId) const
*/
$method=5,4,0|QList<QPlaceCategory>|childCategories|const QString &

/*
virtual QList<QLocale> locales() const
*/
$method=5,4,0|QList<QLocale>|locales|

/*
virtual void setLocales(const QList<QLocale> &locales)
*/
$method=5,4,0|void|setLocales|const QList<QLocale> &

/*
virtual QUrl constructIconUrl(const QPlaceIcon &icon, const QSize &size) const
*/
$method=5,4,0|QUrl|constructIconUrl|const QPlaceIcon &,const QSize &

/*
virtual QPlace compatiblePlace(const QPlace &original) const
*/
$method=5,4,0|QPlace|compatiblePlace|const QPlace &

/*
virtual QPlaceMatchReply *matchingPlaces(const QPlaceMatchRequest &request)
*/
$method=5,4,0|QPlaceMatchReply *|matchingPlaces|const QPlaceMatchRequest &

#pragma ENDDUMP
