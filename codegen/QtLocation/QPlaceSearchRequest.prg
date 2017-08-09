$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACECATEGORY
REQUEST QGEOSHAPE
REQUEST QVARIANT
#endif

CLASS QPlaceSearchRequest

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD searchTerm
   METHOD setSearchTerm
   METHOD categories
   METHOD setCategory
   METHOD setCategories
   METHOD searchArea
   METHOD setSearchArea
   METHOD recommendationId
   METHOD setRecommendationId
   METHOD searchContext
   METHOD setSearchContext
   METHOD visibilityScope
   METHOD setVisibilityScope
   METHOD relevanceHint
   METHOD setRelevanceHint
   METHOD limit
   METHOD setLimit
   METHOD clear

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QGeoShape>
#include <QVariant>

/*
QPlaceSearchRequest()
*/
$internalConstructor=5,4,0|new1|

/*
QPlaceSearchRequest(const QPlaceSearchRequest &other)
*/
$internalConstructor=5,4,0|new2|const QPlaceSearchRequest &

//[1]QPlaceSearchRequest()
//[2]QPlaceSearchRequest(const QPlaceSearchRequest &other)

HB_FUNC_STATIC( QPLACESEARCHREQUEST_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceSearchRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACESEARCHREQUEST(1) )
  {
    QPlaceSearchRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
QString searchTerm() const
*/
$method=5,4,0|QString|searchTerm|

/*
void setSearchTerm(const QString &term)
*/
$method=5,4,0|void|setSearchTerm|const QString &

/*
QList<QPlaceCategory> categories() const
*/
$method=5,4,0|QList<QPlaceCategory>|categories|

/*
void setCategory(const QPlaceCategory &category)
*/
$method=5,4,0|void|setCategory|const QPlaceCategory &

/*
void setCategories(const QList<QPlaceCategory> &categories)
*/
$method=5,4,0|void|setCategories|const QList<QPlaceCategory> &

/*
QGeoShape searchArea() const
*/
$method=5,4,0|QGeoShape|searchArea|

/*
void setSearchArea(const QGeoShape &area)
*/
$method=5,4,0|void|setSearchArea|const QGeoShape &

/*
QString recommendationId() const
*/
$method=5,4,0|QString|recommendationId|

/*
void setRecommendationId(const QString &recommendationId)
*/
$method=5,4,0|void|setRecommendationId|const QString &

/*
QVariant searchContext() const
*/
$method=5,4,0|QVariant|searchContext|

/*
void setSearchContext(const QVariant &context)
*/
$method=5,4,0|void|setSearchContext|const QVariant &

/*
QLocation::VisibilityScope visibilityScope() const
*/
$method=5,4,0|QLocation::VisibilityScope|visibilityScope|

/*
void setVisibilityScope(QLocation::VisibilityScope visibilityScopes)
*/
$method=5,4,0|void|setVisibilityScope|QLocation::VisibilityScope

/*
RelevanceHint relevanceHint() const
*/
$method=5,4,0|QPlaceSearchRequest::RelevanceHint|relevanceHint|

/*
void setRelevanceHint(RelevanceHint hint)
*/
$method=5,4,0|void|setRelevanceHint|QPlaceSearchRequest::RelevanceHint

/*
int limit() const
*/
$method=5,4,0|int|limit|

/*
void setLimit(int limit)
*/
$method=5,4,0|void|setLimit|int

/*
void clear()
*/
$method=5,4,0|void|clear|

$extraMethods

#pragma ENDDUMP
