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

$prototype=QString managerName() const
$method=5,4,0|QString|managerName|

$prototype=int managerVersion() const
$method=5,4,0|int|managerVersion|

$prototype=virtual QPlaceDetailsReply *getPlaceDetails(const QString &placeId)
$virtualMethod=5,4,0|QPlaceDetailsReply *|getPlaceDetails|const QString &

$prototype=virtual QPlaceContentReply *getPlaceContent(const QPlaceContentRequest &request)
$virtualMethod=5,4,0|QPlaceContentReply *|getPlaceContent|const QPlaceContentRequest &

$prototype=virtual QPlaceSearchReply *search(const QPlaceSearchRequest &request)
$virtualMethod=5,4,0|QPlaceSearchReply *|search|const QPlaceSearchRequest &

$prototype=virtual QPlaceSearchSuggestionReply *searchSuggestions(const QPlaceSearchRequest &request)
$virtualMethod=5,4,0|QPlaceSearchSuggestionReply *|searchSuggestions|const QPlaceSearchRequest &

$prototype=virtual QPlaceIdReply *savePlace(const QPlace &place)
$virtualMethod=5,4,0|QPlaceIdReply *|savePlace|const QPlace &

$prototype=virtual QPlaceIdReply *removePlace(const QString &placeId)
$virtualMethod=5,4,0|QPlaceIdReply *|removePlace|const QString &

$prototype=virtual QPlaceIdReply *saveCategory(const QPlaceCategory &category, const QString &parentId)
$virtualMethod=5,4,0|QPlaceIdReply *|saveCategory|const QPlaceCategory &,const QString &

$prototype=virtual QPlaceIdReply *removeCategory(const QString &categoryId)
$virtualMethod=5,4,0|QPlaceIdReply *|removeCategory|const QString &

$prototype=virtual QPlaceReply *initializeCategories()
$virtualMethod=5,4,0|QPlaceReply *|initializeCategories|

$prototype=virtual QString parentCategoryId(const QString &categoryId) const
$virtualMethod=5,4,0|QString|parentCategoryId|const QString &

$prototype=virtual QStringList childCategoryIds(const QString &categoryId) const
$virtualMethod=5,4,0|QStringList|childCategoryIds|const QString &

$prototype=virtual QPlaceCategory category(const QString &categoryId) const
$virtualMethod=5,4,0|QPlaceCategory|category|const QString &

$prototype=virtual QList<QPlaceCategory> childCategories(const QString &parentId) const
$virtualMethod=5,4,0|QList<QPlaceCategory>|childCategories|const QString &

$prototype=virtual QList<QLocale> locales() const
$virtualMethod=5,4,0|QList<QLocale>|locales|

$prototype=virtual void setLocales(const QList<QLocale> &locales)
$virtualMethod=5,4,0|void|setLocales|const QList<QLocale> &

$prototype=virtual QUrl constructIconUrl(const QPlaceIcon &icon, const QSize &size) const
$virtualMethod=5,4,0|QUrl|constructIconUrl|const QPlaceIcon &,const QSize &

$prototype=virtual QPlace compatiblePlace(const QPlace &original) const
$virtualMethod=5,4,0|QPlace|compatiblePlace|const QPlace &

$prototype=virtual QPlaceMatchReply *matchingPlaces(const QPlaceMatchRequest &request)
$virtualMethod=5,4,0|QPlaceMatchReply *|matchingPlaces|const QPlaceMatchRequest &

#pragma ENDDUMP
