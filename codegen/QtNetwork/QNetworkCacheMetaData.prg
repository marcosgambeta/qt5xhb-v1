%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

%% TODO:
%% typedef QPair<QByteArray, QByteArray> RawHeader;
%% typedef QList<RawHeader> RawHeaderList;
%% typedef QHash<QNetworkRequest::Attribute, QVariant> AttributesMap;

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QDateTime>

$prototype=QNetworkCacheMetaData ()
$internalConstructor=|new1|

$prototype=QNetworkCacheMetaData ( const QNetworkCacheMetaData & other )
$internalConstructor=|new2|const QNetworkCacheMetaData &

//[1]QNetworkCacheMetaData ()
//[2]QNetworkCacheMetaData ( const QNetworkCacheMetaData & other )

HB_FUNC_STATIC( QNETWORKCACHEMETADATA_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkCacheMetaData_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKCACHEMETADATA(1) )
  {
    QNetworkCacheMetaData_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QNetworkCacheMetaData()
$deleteMethod

$prototype=void swap(QNetworkCacheMetaData &other) Q_DECL_NOTHROW
$method=|void|swap|QNetworkCacheMetaData &

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QUrl url() const
$method=|QUrl|url|

$prototype=void setUrl(const QUrl &url)
$method=|void|setUrl|const QUrl &

$prototype=RawHeaderList rawHeaders() const
%% TODO: implementar
%% $method=|RawHeaderList|rawHeaders|

$prototype=void setRawHeaders(const RawHeaderList &headers)
%% TODO: implementar
%% $method=|void|setRawHeaders|const RawHeaderList &

$prototype=QDateTime lastModified() const
$method=|QDateTime|lastModified|

$prototype=void setLastModified(const QDateTime &dateTime)
$method=|void|setLastModified|const QDateTime &

$prototype=QDateTime expirationDate() const
$method=|QDateTime|expirationDate|

$prototype=void setExpirationDate(const QDateTime &dateTime)
$method=|void|setExpirationDate|const QDateTime &

$prototype=bool saveToDisk() const
$method=|bool|saveToDisk|

$prototype=void setSaveToDisk(bool allow)
$method=|void|setSaveToDisk|bool

$prototype=AttributesMap attributes() const
%% TODO: implementar
%% $method=|AttributesMap|attributes|

$prototype=void setAttributes(const AttributesMap &attributes)
%% TODO: implementar
%% $method=|void|setAttributes|const AttributesMap &

$extraMethods

#pragma ENDDUMP
