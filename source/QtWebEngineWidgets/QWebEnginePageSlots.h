/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQWEBENGINEPAGE_H
#define SLOTSQWEBENGINEPAGE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEnginePage>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQWebEnginePage: public QObject
{
  Q_OBJECT
  public:
  SlotsQWebEnginePage(QObject *parent = 0);
  ~SlotsQWebEnginePage();
  public slots:
  void loadStarted();
  void loadProgress(int progress);
  void loadFinished(bool ok);
  void linkHovered(const QString &url);
  void selectionChanged();
  void geometryChangeRequested(const QRect& geom);
  void windowCloseRequested();
  void featurePermissionRequested(const QUrl &securityOrigin, QWebEnginePage::Feature feature);
  void featurePermissionRequestCanceled(const QUrl &securityOrigin, QWebEnginePage::Feature feature);
  void authenticationRequired(const QUrl &requestUrl, QAuthenticator *authenticator);
  void proxyAuthenticationRequired(const QUrl &requestUrl, QAuthenticator *authenticator, const QString &proxyHost);
  void titleChanged(const QString &title);
  void urlChanged(const QUrl &url);
  void iconUrlChanged(const QUrl &url);
};

#endif // SLOTSQWEBENGINEPAGE_H
