/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QWebEnginePageSlots.h"


static SlotsQWebEnginePage * s = NULL;

SlotsQWebEnginePage::SlotsQWebEnginePage(QObject *parent) : QObject(parent)
{
}

SlotsQWebEnginePage::~SlotsQWebEnginePage()
{
}

void SlotsQWebEnginePage::loadStarted()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loadStarted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQWebEnginePage::loadProgress(int progress)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loadProgress(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pprogress = hb_itemPutNI( NULL, progress );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprogress );
    hb_itemRelease( psender );
    hb_itemRelease( pprogress );
  }
#endif
}

void SlotsQWebEnginePage::loadFinished(bool ok)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loadFinished(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pok = hb_itemPutL( NULL, ok );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pok );
    hb_itemRelease( psender );
    hb_itemRelease( pok );
  }
#endif
}

void SlotsQWebEnginePage::linkHovered(const QString &url)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "linkHovered(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM purl = hb_itemPutC( NULL, (const char *) url.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, purl );
    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
#endif
}

void SlotsQWebEnginePage::selectionChanged()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQWebEnginePage::geometryChangeRequested(const QRect& geom)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "geometryChangeRequested(QRect)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pgeom = hb_itemPutPtr( NULL, (QRect *) &geom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pgeom );
    hb_itemRelease( psender );
    hb_itemRelease( pgeom );
  }
#endif
}

void SlotsQWebEnginePage::windowCloseRequested()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "windowCloseRequested()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQWebEnginePage::featurePermissionRequested(const QUrl &securityOrigin, QWebEnginePage::Feature feature)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "featurePermissionRequested(QUrl,QWebEnginePage::Feature)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psecurityOrigin = hb_itemPutPtr( NULL, (QUrl *) &securityOrigin );
    PHB_ITEM pfeature = hb_itemPutNI( NULL, (int) feature );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, psecurityOrigin, pfeature );
    hb_itemRelease( psender );
    hb_itemRelease( psecurityOrigin );
    hb_itemRelease( pfeature );
  }
#endif
}

void SlotsQWebEnginePage::featurePermissionRequestCanceled(const QUrl &securityOrigin, QWebEnginePage::Feature feature)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "featurePermissionRequestCanceled(QUrl,QWebEnginePage::Feature)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psecurityOrigin = hb_itemPutPtr( NULL, (QUrl *) &securityOrigin );
    PHB_ITEM pfeature = hb_itemPutNI( NULL, (int) feature );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, psecurityOrigin, pfeature );
    hb_itemRelease( psender );
    hb_itemRelease( psecurityOrigin );
    hb_itemRelease( pfeature );
  }
#endif
}

void SlotsQWebEnginePage::authenticationRequired(const QUrl &requestUrl, QAuthenticator *authenticator)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "authenticationRequired(QUrl,QAuthenticator*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prequestUrl = hb_itemPutPtr( NULL, (QUrl *) &requestUrl );
    PHB_ITEM pauthenticator = hb_itemPutPtr( NULL, (QAuthenticator *) authenticator );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prequestUrl, pauthenticator );
    hb_itemRelease( psender );
    hb_itemRelease( prequestUrl );
    hb_itemRelease( pauthenticator );
  }
#endif
}

void SlotsQWebEnginePage::proxyAuthenticationRequired(const QUrl &requestUrl, QAuthenticator *authenticator, const QString &proxyHost)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "proxyAuthenticationRequired(QUrl,QAuthenticator*,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prequestUrl = hb_itemPutPtr( NULL, (QUrl *) &requestUrl );
    PHB_ITEM pauthenticator = hb_itemPutPtr( NULL, (QAuthenticator *) authenticator );
    PHB_ITEM pproxyHost = hb_itemPutC( NULL, (const char *) proxyHost.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, prequestUrl, pauthenticator, pproxyHost );
    hb_itemRelease( psender );
    hb_itemRelease( prequestUrl );
    hb_itemRelease( pauthenticator );
    hb_itemRelease( pproxyHost );
  }
#endif
}

void SlotsQWebEnginePage::titleChanged(const QString &title)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "titleChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptitle = hb_itemPutC( NULL, (const char *) title.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptitle );
    hb_itemRelease( psender );
    hb_itemRelease( ptitle );
  }
#endif
}

void SlotsQWebEnginePage::urlChanged(const QUrl &url)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "urlChanged(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM purl = hb_itemPutPtr( NULL, (QUrl *) &url );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, purl );
    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
#endif
}

void SlotsQWebEnginePage::iconUrlChanged(const QUrl &url)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "iconUrlChanged(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM purl = hb_itemPutPtr( NULL, (QUrl *) &url );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, purl );
    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
#endif
}

HB_FUNC( QWEBENGINEPAGE_ONLOADSTARTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEnginePage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadStarted()", "loadStarted()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEPAGE_ONLOADPROGRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEnginePage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadProgress(int)", "loadProgress(int)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEPAGE_ONLOADFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEnginePage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadFinished(bool)", "loadFinished(bool)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEPAGE_ONLINKHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEnginePage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "linkHovered(QString)", "linkHovered(QString)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEPAGE_ONSELECTIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEnginePage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "selectionChanged()", "selectionChanged()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEPAGE_ONGEOMETRYCHANGEREQUESTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEnginePage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "geometryChangeRequested(QRect)", "geometryChangeRequested(QRect)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEPAGE_ONWINDOWCLOSEREQUESTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEnginePage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "windowCloseRequested()", "windowCloseRequested()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEPAGE_ONFEATUREPERMISSIONREQUESTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEnginePage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "featurePermissionRequested(QUrl,QWebEnginePage::Feature)", "featurePermissionRequested(QUrl,QWebEnginePage::Feature)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEPAGE_ONFEATUREPERMISSIONREQUESTCANCELED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEnginePage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "featurePermissionRequestCanceled(QUrl,QWebEnginePage::Feature)", "featurePermissionRequestCanceled(QUrl,QWebEnginePage::Feature)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEPAGE_ONAUTHENTICATIONREQUIRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEnginePage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "authenticationRequired(QUrl,QAuthenticator*)", "authenticationRequired(QUrl,QAuthenticator*)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEPAGE_ONPROXYAUTHENTICATIONREQUIRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEnginePage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "proxyAuthenticationRequired(QUrl,QAuthenticator*,QString)", "proxyAuthenticationRequired(QUrl,QAuthenticator*,QString)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEPAGE_ONTITLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEnginePage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "titleChanged(QString)", "titleChanged(QString)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEPAGE_ONURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEnginePage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "urlChanged(QUrl)", "urlChanged(QUrl)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEPAGE_ONICONURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEnginePage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "iconUrlChanged(QUrl)", "iconUrlChanged(QUrl)" ) );
#else
  hb_retl(false);
#endif
}
