%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QGeoShape>
#include <QVariant>

$prototype=QPlaceSearchRequest()
$internalConstructor=5,4,0|new1|

$prototype=QPlaceSearchRequest(const QPlaceSearchRequest &other)
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

$prototype=QString searchTerm() const
$method=5,4,0|QString|searchTerm|

$prototype=void setSearchTerm(const QString &term)
$method=5,4,0|void|setSearchTerm|const QString &

$prototype=QList<QPlaceCategory> categories() const
$method=5,4,0|QList<QPlaceCategory>|categories|

$prototype=void setCategory(const QPlaceCategory &category)
$method=5,4,0|void|setCategory|const QPlaceCategory &

$prototype=void setCategories(const QList<QPlaceCategory> &categories)
$method=5,4,0|void|setCategories|const QList<QPlaceCategory> &

$prototype=QGeoShape searchArea() const
$method=5,4,0|QGeoShape|searchArea|

$prototype=void setSearchArea(const QGeoShape &area)
$method=5,4,0|void|setSearchArea|const QGeoShape &

$prototype=QString recommendationId() const
$method=5,4,0|QString|recommendationId|

$prototype=void setRecommendationId(const QString &recommendationId)
$method=5,4,0|void|setRecommendationId|const QString &

$prototype=QVariant searchContext() const
$method=5,4,0|QVariant|searchContext|

$prototype=void setSearchContext(const QVariant &context)
$method=5,4,0|void|setSearchContext|const QVariant &

$prototype=QLocation::VisibilityScope visibilityScope() const
$method=5,4,0|QLocation::VisibilityScope|visibilityScope|

$prototype=void setVisibilityScope(QLocation::VisibilityScope visibilityScopes)
$method=5,4,0|void|setVisibilityScope|QLocation::VisibilityScope

$prototype=RelevanceHint relevanceHint() const
$method=5,4,0|QPlaceSearchRequest::RelevanceHint|relevanceHint|

$prototype=void setRelevanceHint(RelevanceHint hint)
$method=5,4,0|void|setRelevanceHint|QPlaceSearchRequest::RelevanceHint

$prototype=int limit() const
$method=5,4,0|int|limit|

$prototype=void setLimit(int limit)
$method=5,4,0|void|setLimit|int

$prototype=void clear()
$method=5,4,0|void|clear|

$extraMethods

#pragma ENDDUMP
