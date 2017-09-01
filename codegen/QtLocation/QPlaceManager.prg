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
REQUEST QPLACE
REQUEST QPLACEMATCHREPLY
#endif

CLASS QPlaceManager INHERIT QObject

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
   METHOD setLocale
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
QPlaceDetailsReply *getPlaceDetails(const QString &placeId) const
*/
$method=5,4,0|QPlaceDetailsReply *|getPlaceDetails|const QString &

/*
QPlaceContentReply *getPlaceContent(const QPlaceContentRequest &request) const
*/
$method=5,4,0|QPlaceContentReply *|getPlaceContent|const QPlaceContentRequest &

/*
QPlaceSearchReply *search(const QPlaceSearchRequest &query) const
*/
$method=5,4,0|QPlaceSearchReply *|search|const QPlaceSearchRequest &

/*
QPlaceSearchSuggestionReply *searchSuggestions(const QPlaceSearchRequest &request) const
*/
$method=5,4,0|QPlaceSearchSuggestionReply *|searchSuggestions|const QPlaceSearchRequest &

/*
QPlaceIdReply *savePlace(const QPlace &place)
*/
$method=5,4,0|QPlaceIdReply *|savePlace|const QPlace &

/*
QPlaceIdReply *removePlace(const QString &placeId)
*/
$method=5,4,0|QPlaceIdReply *|removePlace|const QString &

/*
QPlaceIdReply *saveCategory(const QPlaceCategory &category, const QString &parentId = QString())
*/
$method=5,4,0|QPlaceIdReply *|saveCategory|const QPlaceCategory &,const QString &=QString()

/*
QPlaceIdReply *removeCategory(const QString &categoryId)
*/
$method=5,4,0|QPlaceIdReply *|removeCategory|const QString &

/*
QPlaceReply *initializeCategories()
*/
$method=5,4,0|QPlaceReply *|initializeCategories|

/*
QString parentCategoryId(const QString &categoryId) const
*/
$method=5,4,0|QString|parentCategoryId|const QString &

/*
QStringList childCategoryIds(const QString &parentId = QString()) const
*/
$method=5,4,0|QStringList|childCategoryIds|const QString &=QString()

/*
QPlaceCategory category(const QString &categoryId) const
*/
$method=5,4,0|QPlaceCategory|category|const QString &

/*
QList<QPlaceCategory> childCategories(const QString &parentId = QString()) const
*/
$method=5,4,0|QList<QPlaceCategory>|childCategories|const QString &=QString()

/*
QList<QLocale> locales() const
*/
$method=5,4,0|QList<QLocale>|locales|

/*
void setLocales(const QList<QLocale> &locale)
*/
$method=5,4,0|void|setLocales|const QList<QLocale> &

/*
void setLocale(const QLocale &locale)
*/
$method=5,4,0|void|setLocale|const QLocale &

/*
QPlace compatiblePlace(const QPlace &place)
*/
$method=5,4,0|QPlace|compatiblePlace|const QPlace &

/*
QPlaceMatchReply *matchingPlaces(const QPlaceMatchRequest &request) const
*/
$method=5,4,0|QPlaceMatchReply *|matchingPlaces|const QPlaceMatchRequest &

#pragma ENDDUMP
