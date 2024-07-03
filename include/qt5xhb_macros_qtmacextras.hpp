//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QT5XHB_MACROS_QTMACEXTRAS_H
#define QT5XHB_MACROS_QTMACEXTRAS_H

#define ISQMACPASTEBOARDMIME(n)                             Qt5xHb::isObjectDerivedFrom(n, "QMacPasteboardMime")

#define PQMACPASTEBOARDMIME(n)                              static_cast<QMacPasteboardMime*>(Qt5xHb::itemGetPtr(n))

#define OPQMACPASTEBOARDMIME(n, v)                          HB_ISNIL(n) ? v : static_cast<QMacPasteboardMime*>(Qt5xHb::itemGetPtr(n))

#endif /* QT5XHB_MACROS_QTMACEXTRAS_H */
