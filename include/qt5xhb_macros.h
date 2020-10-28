/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QT5XHB_MACROS_H
#define QT5XHB_MACROS_H

#include "qt5xhb_macros_activeqt.h"
#include "qt5xhb_macros_qtbluetooth.h"
#include "qt5xhb_macros_qtcharts.h"
#include "qt5xhb_macros_qtcore.h"
#include "qt5xhb_macros_qtdatavisualization.h"
#include "qt5xhb_macros_qtdbus.h"
#include "qt5xhb_macros_qtdeclarative.h"
#include "qt5xhb_macros_qtdesigner.h"
#include "qt5xhb_macros_qtgamepad.h"
#include "qt5xhb_macros_qtgui.h"
#include "qt5xhb_macros_qthelp.h"
#include "qt5xhb_macros_qtlocation.h"
#include "qt5xhb_macros_qtmacextras.h"
#include "qt5xhb_macros_qtmultimedia.h"
#include "qt5xhb_macros_qtmultimediawidgets.h"
#include "qt5xhb_macros_qtnetwork.h"
#include "qt5xhb_macros_qtnetworkauth.h"
#include "qt5xhb_macros_qtopengl.h"
#include "qt5xhb_macros_qtpositioning.h"
#include "qt5xhb_macros_qtprintsupport.h"
#include "qt5xhb_macros_qtpurchasing.h"
#include "qt5xhb_macros_qtqml.h"
#include "qt5xhb_macros_qtquick.h"
#include "qt5xhb_macros_qtquickwidgets.h"
#include "qt5xhb_macros_qtscript.h"
#include "qt5xhb_macros_qtscripttools.h"
#include "qt5xhb_macros_qtsensors.h"
#include "qt5xhb_macros_qtserialbus.h"
#include "qt5xhb_macros_qtserialport.h"
#include "qt5xhb_macros_qtsql.h"
#include "qt5xhb_macros_qtsvg.h"
#include "qt5xhb_macros_qttexttospeech.h"
#include "qt5xhb_macros_qtuitools.h"
#include "qt5xhb_macros_qtwebchannel.h"
#include "qt5xhb_macros_qtwebengine.h"
#include "qt5xhb_macros_qtwebenginecore.h"
#include "qt5xhb_macros_qtwebenginewidgets.h"
#include "qt5xhb_macros_qtwebkit.h"
#include "qt5xhb_macros_qtwebkitwidgets.h"
#include "qt5xhb_macros_qtwebsockets.h"
#include "qt5xhb_macros_qtwebview.h"
#include "qt5xhb_macros_qtwidgets.h"
#include "qt5xhb_macros_qtwinextras.h"
#include "qt5xhb_macros_qtx11extras.h"
#include "qt5xhb_macros_qtxml.h"
#include "qt5xhb_macros_qtxmlpatterns.h"

// TODO: revise
#define ISQSTRINGREF(n)                                     Qt5xHb::isObjectDerivedFrom(n,"QStringRef")
#define PQSTRINGREF(n)                                     (QStringRef *) Qt5xHb::itemGetPtr(n)
#define ISQRUNNABLE(n)                                      Qt5xHb::isObjectDerivedFrom(n,"QRunnable")
#define PQRUNNABLE(n)                                      (QRunnable *) Qt5xHb::itemGetPtr(n)
#define ISQLATIN1STRING(n)                                  Qt5xHb::isObjectDerivedFrom(n,"QLatin1String")
#define PQLATIN1STRING(n)                                  (QLatin1String *) Qt5xHb::itemGetPtr(n)
#define ISQDESIGNERFORMWINDOWINTERFACE(n)                   Qt5xHb::isObjectDerivedFrom(n,"QDesignerFormWindowInterface")
#define PQDESIGNERFORMWINDOWINTERFACE(n)                   (QDesignerFormWindowInterface *) Qt5xHb::itemGetPtr(n)

#define ISOPTQWIDGET(n)                                     (ISQWIDGET(n)||ISNIL(n))
#define ISOPTQBYTEARRAY(n)                                  (ISQBYTEARRAY(n)||ISNIL(n))
#define ISOPTQACTION(n)                                     (ISQACTION(n)||ISNIL(n))

#define ISBETWEEN(a,b)                                      hb_pcount() >= a && hb_pcount() <= b
#define ISNUMPAR(a)                                         hb_pcount() == a
#define INHERITS(a,b)                                       Qt5xHb::isObjectDerivedFrom(a,b)

// macros for parameters
#define PQREAL(n)                                           (qreal) hb_parnd(n)
//#define PQREAL(n,d)                                         (qreal) ISNIL(n)? d : hb_parnd(n)
//#define PQSTRING(n)                                         _qt5xhb_convert_string_parameter_to_qstring(n)
#define PQSTRING(n)                                         QString::fromLatin1( hb_parc(n) )
//#define PQSTRING(n)                                         QString::fromUtf8( hb_parc(n) )
#define PBOOL(n)                                            (bool) hb_parl(n)
#define PCHAR(n)                                            (char) hb_parni(n)
#define PSHORT(n)                                           (short) hb_parni(n)
#define PUSHORT(n)                                          (ushort) hb_parni(n)
#define PINT(n)                                             (int) hb_parni(n)
#define PUINT(n)                                            (uint) hb_parni(n)
#define PFLOAT(n)                                           (float) hb_parnd(n)
#define PDOUBLE(n)                                          (double) hb_parnd(n)
#define PLONG(n)                                            (long) hb_parnl(n)
#define PULONG(n)                                           (ulong) hb_parnl(n)
#define PCONSTCHAR(n)                                       (const char *) hb_parc(n)
#define PCONSTUCHAR(n)                                      (const uchar *) hb_parc(n)
#define PQSTRINGLIST(n)                                     Qt5xHb::convert_array_parameter_to_qstringlist(n)
#define PQVARIANTLIST(n)                                    Qt5xHb::convert_array_parameter_to_qvariantlist(n)
#define PQINT8(n)                                           (qint8) hb_parni(n)
#define PQINT16(n)                                          (qint16) hb_parni(n)
#define PQINT32(n)                                          (qint32) hb_parni(n)
#define PQINT64(n)                                          (qint64) hb_parnll(n)
#define PQUINT8(n)                                          (quint8) hb_parni(n)
#define PQUINT16(n)                                         (quint16) hb_parni(n)
#define PQUINT32(n)                                         (quint32) hb_parni(n)
#define PQUINT64(n)                                         (quint64) hb_parnll(n)
#define PQLONGLONG(n)                                       (qlonglong) hb_parnll(n)
#define PQULONGLONG(n)                                      (qulonglong) hb_parnll(n)
#define PGLBOOLEAN(n)                                       (GLboolean) hb_parl(n)
#define PGLINT(n)                                           (GLint) hb_parni(n)
#define PGLUINT(n)                                          (GLuint) hb_parni(n)
#define PGLUINT64(n)                                        (GLuint64) hb_parnll(n)
#define PGLFLOAT(n)                                         (GLfloat) hb_parnd(n)
#define PGLCLAMPF(n)                                        (GLclampf) hb_parnd(n)
#define PGLENUM(n)                                          (GLenum) hb_parni(n)
#define PGLBITFIELD(n)                                      (GLbitfield) hb_parni(n)
#define PGLSIZEI(n)                                         (GLsizei) hb_parni(n)
#define PUNSIGNEDLONG(n)                                    (unsigned long) hb_parnl(n)
#define PQRGB(n)                                            (QRgb) hb_parni(n)
// TODO: checar macros qintptr/quintptr
#define PQINTPTR(n)                                         (qintptr) hb_parnll(n)
#define PQUINTPTR(n)                                        (quintptr) hb_parnll(n)
#define PBLOCKORSYMBOL(n)                                   hb_param( n, HB_IT_BLOCK | HB_IT_SYMBOL )

// macros for optional parameters
#define OPBOOL(n,v)                                         (bool) ISNIL(n)? v : hb_parl(n)
#define OPCHAR(n,v)                                         (char) ISNIL(n)? v : hb_parni(n)
#define OPUSHORT(n,v)                                       (ushort) ISNIL(n)? v : hb_parni(n)
#define OPINT(n,v)                                          (int) ISNIL(n)? v : hb_parni(n)
#define OPUINT(n,v)                                         (uint) ISNIL(n)? v : hb_parni(n)
#define OPFLOAT(n,v)                                        (float) ISNIL(n)? v : hb_parnd(n)
#define OPDOUBLE(n,v)                                       (double) ISNIL(n)? v : hb_parnd(n)
#define OPQREAL(n,v)                                        (qreal) ISNIL(n)? v : hb_parnd(n)
#define OPCONSTCHAR(n,v)                                    (const char *) ISNIL(n)? v : hb_parc(n)
#define OPQSTRING(n,v)                                      ISNIL(n)? v : QString::fromLatin1( hb_parc(n) )
//#define OPQSTRING(n,v)                                      ISNIL(n)? v : QString::fromUtf8( hb_parc(n) )
#define OPQSTRINGLIST(n,v)                                  ISNIL(n)? v : Qt5xHb::convert_array_parameter_to_qstringlist(n)
#define OPQVARIANTLIST(n,v)                                 ISNIL(n)? v : Qt5xHb::convert_array_parameter_to_qvariantlist(n)
#define OPQINT8(n,v)                                        (qint8) ISNIL(n)? v : hb_parni(n)
#define OPQINT16(n,v)                                       (qint16) ISNIL(n)? v : hb_parni(n)
#define OPQINT32(n,v)                                       (qint32) ISNIL(n)? v : hb_parni(n)
#define OPQINT64(n,v)                                       (qint64) ISNIL(n)? v : hb_parnll(n)
#define OPQUINT8(n,v)                                       (quint8) ISNIL(n)? v : hb_parni(n)
#define OPQUINT16(n,v)                                      (quint16) ISNIL(n)? v : hb_parni(n)
#define OPQUINT32(n,v)                                      (quint32) ISNIL(n)? v : hb_parni(n)
#define OPQUINT64(n,v)                                      (quint64) ISNIL(n)? v : hb_parnll(n)
#define OPGLBOOLEAN(n,v)                                    (GLboolean) ISNIL(n)? v : hb_parl(n)
#define OPGLINT(n,v)                                        (GLint) ISNIL(n)? v : hb_parni(n)
#define OPGLUINT(n,v)                                       (GLuint) ISNIL(n)? v : hb_parni(n)
#define OPGLUINT64(n,v)                                     (GLuint64) ISNIL(n)? v : hb_parnll(n)
#define OPGLFLOAT(n,v)                                      (GLfloat) ISNIL(n)? v : hb_parnd(n)
#define OPGLCLAMPF(n,v)                                     (GLclampf) ISNIL(n)? v : hb_parnd(n)
#define OPGLENUM(n,v)                                       (GLenum) ISNIL(n)? v : hb_parni(n)
#define OPGLBITFIELD(n,v)                                   (GLbitfield) ISNIL(n)? v : hb_parni(n)
#define OPGLSIZEI(n,v)                                      (GLsizei) ISNIL(n)? v : hb_parni(n)

// macros for return's
#define RQSTRING(x)                                         hb_retc( (const char *) x.toLatin1().data() )
//#define RQSTRING(x)                                         (const char *) x.toUtf8().data()
#define RBOOL(x)                                            hb_retl(x)
#define RSHORT(x)                                           hb_retni(x)
#define RUSHORT(x)                                          hb_retni(x)
#define RINT(x)                                             hb_retni(x)
#define RUINT(x)                                            hb_retni(x)
#define RFLOAT(x)                                           hb_retnd(x)
#define RDOUBLE(x)                                          hb_retnd(x)
#define RLONG(x)                                            hb_retnl(x)
#define RULONG(x)                                           hb_retnl(x)
#define RUNSIGNEDLONG(x)                                    hb_retnl(x)
#define RQLONGLONG(x)                                       hb_retnll(x)
#define RQULONGLONG(x)                                      hb_retnll(x)
#define RQREAL(x )                                          hb_retnd(x)
#define RQINT8(x)                                           hb_retni(x)
#define RQINT16(x)                                          hb_retni(x)
#define RQINT32(x)                                          hb_retni(x)
#define RQINT64(x)                                          hb_retnll(x)
#define RQUINT8(x)                                          hb_retni(x)
#define RQUINT16(x)                                         hb_retni(x)
#define RQUINT32(x)                                         hb_retni(x)
#define RQUINT64(x)                                         hb_retnll(x)
#define RGLBOOLEAN(x)                                       hb_retl( (GLboolean) x )
#define RGLINT(x)                                           hb_retni( (GLint) x )
#define RGLUINT(x)                                          hb_retni( (GLuint) x )
#define RGLUINT64(x)                                        hb_retnll( (GLuint64) x )
#define RGLFLOAT(x)                                         hb_retnd( (GLfloat) x )
#define RGLCLAMPF(n)                                        hb_retnd( (GLclampf) x )
#define RGLENUM(x)                                          hb_retni( (GLenum) x )
#define RGLBITFIELD(x)                                      hb_retni( (GLbitfield) x )
#define RGLSIZEI(x)                                         hb_retni( (GLsizei) x )
#define RQSTRINGLIST(x)                                     Qt5xHb::convert_qstringlist_to_array( x )
#define RENUM(x)                                            hb_retni(x)
#define RQRGB(x)                                            hb_retni(x)
#define RQINTPTR(x)                                         hb_retnll(x)
#define RQUINTPTR(x)                                        hb_retnll(x)

// conversion from QString to string
#define QSTRINGTOSTRING(x)                                  (const char *) x.toLatin1().data()
//#define QSTRINGTOSTRING(x)                                  (const char *) x.toUtf8().data()

#endif /* QT5XHB_MACROS_H */
