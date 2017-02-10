/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWEBENGINEPAGE_H
#define SLOTSQWEBENGINEPAGE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEnginePage>
#endif


#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);

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
