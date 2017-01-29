/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QMacPasteboardMime::QMacPasteboardMimeType
*/
#define QMacPasteboardMime_MIME_DND                                  0x01
#define QMacPasteboardMime_MIME_CLIP                                 0x02
#define QMacPasteboardMime_MIME_QT_CONVERTOR                         0x04
#define QMacPasteboardMime_MIME_QT3_CONVERTOR                        0x08
#define QMacPasteboardMime_MIME_ALL                                  hb_bitor(QMacPasteboardMime_MIME_DND,QMacPasteboardMime_MIME_CLIP)
