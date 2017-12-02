$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACEICON
#endif

CLASS QPlaceSearchResult

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD title
   METHOD setTitle
   METHOD icon
   METHOD setIcon

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

#include <QPlaceIcon>

$prototype=QPlaceSearchResult()
$internalConstructor=5,4,0|new1|

$prototype=QPlaceSearchResult(const QPlaceSearchResult &other)
$internalConstructor=5,4,0|new2|const QPlaceSearchResult &

//[1]QPlaceSearchResult()
//[2]QPlaceSearchResult(const QPlaceSearchResult &other)

HB_FUNC_STATIC( QPLACESEARCHRESULT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceSearchResult_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACESEARCHRESULT(1) )
  {
    QPlaceSearchResult_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

$prototype=SearchResultType type() const
$method=5,4,0|QPlaceSearchResult::SearchResultType|type|

$prototype=QString title() const
$method=5,4,0|QString|title|

$prototype=void setTitle(const QString &title)
$method=5,4,0|void|setTitle|const QString &

$prototype=QPlaceIcon icon() const
$method=5,4,0|QPlaceIcon|icon|

$prototype=void setIcon(const QPlaceIcon &icon)
$method=5,4,0|void|setIcon|const QPlaceIcon &

$extraMethods

#pragma ENDDUMP
