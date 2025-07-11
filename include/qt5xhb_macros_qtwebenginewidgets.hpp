//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QT5XHB_MACROS_QTWEBENGINEWIDGETS_H
#define QT5XHB_MACROS_QTWEBENGINEWIDGETS_H

#define ISQWEBENGINECERTIFICATEERROR(n)                     Qt5xHb::isObjectDerivedFrom(n, "QWebEngineCertificateError")
#define ISQWEBENGINEHISTORY(n)                              Qt5xHb::isObjectDerivedFrom(n, "QWebEngineHistory")
#define ISQWEBENGINEHISTORYITEM(n)                          Qt5xHb::isObjectDerivedFrom(n, "QWebEngineHistoryItem")
#define ISQWEBENGINEPAGE(n)                                 Qt5xHb::isObjectDerivedFrom(n, "QWebEnginePage")
#define ISQWEBENGINESETTINGS(n)                             Qt5xHb::isObjectDerivedFrom(n, "QWebEngineSettings")
#define ISQWEBENGINEVIEW(n)                                 Qt5xHb::isObjectDerivedFrom(n, "QWebEngineView")

#define PQWEBENGINECERTIFICATEERROR(n)                      static_cast<QWebEngineCertificateError*>(Qt5xHb::itemGetPtr(n))
#define PQWEBENGINEHISTORY(n)                               static_cast<QWebEngineHistory*>(Qt5xHb::itemGetPtr(n))
#define PQWEBENGINEHISTORYITEM(n)                           static_cast<QWebEngineHistoryItem*>(Qt5xHb::itemGetPtr(n))
#define PQWEBENGINEPAGE(n)                                  static_cast<QWebEnginePage*>(Qt5xHb::itemGetPtr(n))
#define PQWEBENGINESETTINGS(n)                              static_cast<QWebEngineSettings*>(Qt5xHb::itemGetPtr(n))
#define PQWEBENGINEVIEW(n)                                  static_cast<QWebEngineView*>(Qt5xHb::itemGetPtr(n))

#define OPQWEBENGINECERTIFICATEERROR(n, v)                  HB_ISNIL(n) ? v : static_cast<QWebEngineCertificateError*>(Qt5xHb::itemGetPtr(n))
#define OPQWEBENGINEHISTORY(n, v)                           HB_ISNIL(n) ? v : static_cast<QWebEngineHistory*>(Qt5xHb::itemGetPtr(n))
#define OPQWEBENGINEHISTORYITEM(n, v)                       HB_ISNIL(n) ? v : static_cast<QWebEngineHistoryItem*>(Qt5xHb::itemGetPtr(n))
#define OPQWEBENGINEPAGE(n, v)                              HB_ISNIL(n) ? v : static_cast<QWebEnginePage*>(Qt5xHb::itemGetPtr(n))
#define OPQWEBENGINESETTINGS(n, v)                          HB_ISNIL(n) ? v : static_cast<QWebEngineSettings*>(Qt5xHb::itemGetPtr(n))
#define OPQWEBENGINEVIEW(n, v)                              HB_ISNIL(n) ? v : static_cast<QWebEngineView*>(Qt5xHb::itemGetPtr(n))

#endif // QT5XHB_MACROS_QTWEBENGINEWIDGETS_H
