//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#ifndef QMACPASTEBOARDMIME_CH
#define QMACPASTEBOARDMIME_CH

// enum QMacPasteboardMime::QMacPasteboardMimeType
#define QMacPasteboardMime_MIME_DND                                  0x01
#define QMacPasteboardMime_MIME_CLIP                                 0x02
#define QMacPasteboardMime_MIME_QT_CONVERTOR                         0x04
#define QMacPasteboardMime_MIME_QT3_CONVERTOR                        0x08
#define QMacPasteboardMime_MIME_ALL                                  hb_bitor(QMacPasteboardMime_MIME_DND,QMacPasteboardMime_MIME_CLIP)

#endif // QMACPASTEBOARDMIME_CH
