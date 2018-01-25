%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

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
    PHB_ITEM purl = hb_itemPutC( NULL, QSTRINGTOSTRING(url) );
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
    PHB_ITEM pproxyHost = hb_itemPutC( NULL, QSTRINGTOSTRING(proxyHost) );
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
    PHB_ITEM ptitle = hb_itemPutC( NULL, QSTRINGTOSTRING(title) );
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

$signalMethod=5,4,0|loadStarted()
$signalMethod=5,4,0|loadProgress(int)
$signalMethod=5,4,0|loadFinished(bool)
$signalMethod=5,4,0|linkHovered(QString)
$signalMethod=5,4,0|selectionChanged()
$signalMethod=5,4,0|geometryChangeRequested(QRect)
$signalMethod=5,4,0|windowCloseRequested()
$signalMethod=5,4,0|featurePermissionRequested(QUrl,QWebEnginePage::Feature)
$signalMethod=5,4,0|featurePermissionRequestCanceled(QUrl,QWebEnginePage::Feature)
$signalMethod=5,4,0|authenticationRequired(QUrl,QAuthenticator*)
$signalMethod=5,4,0|proxyAuthenticationRequired(QUrl,QAuthenticator*,QString)
$signalMethod=5,4,0|titleChanged(QString)
$signalMethod=5,4,0|urlChanged(QUrl)
$signalMethod=5,4,0|iconUrlChanged(QUrl)

$endSlotsClass
