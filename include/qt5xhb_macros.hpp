//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#ifndef QT5XHB_MACROS_H
#define QT5XHB_MACROS_H

#include "qt5xhb_macros_activeqt.hpp"
#include "qt5xhb_macros_qtbluetooth.hpp"
#include "qt5xhb_macros_qtcharts.hpp"
#include "qt5xhb_macros_qtcore.hpp"
#include "qt5xhb_macros_qtdatavisualization.hpp"
#include "qt5xhb_macros_qtdbus.hpp"
#include "qt5xhb_macros_qtdeclarative.hpp"
#include "qt5xhb_macros_qtdesigner.hpp"
#include "qt5xhb_macros_qtgamepad.hpp"
#include "qt5xhb_macros_qtgui.hpp"
#include "qt5xhb_macros_qthelp.hpp"
#include "qt5xhb_macros_qtlocation.hpp"
#include "qt5xhb_macros_qtmacextras.hpp"
#include "qt5xhb_macros_qtmultimedia.hpp"
#include "qt5xhb_macros_qtmultimediawidgets.hpp"
#include "qt5xhb_macros_qtnetwork.hpp"
#include "qt5xhb_macros_qtnetworkauth.hpp"
#include "qt5xhb_macros_qtopengl.hpp"
#include "qt5xhb_macros_qtpositioning.hpp"
#include "qt5xhb_macros_qtprintsupport.hpp"
#include "qt5xhb_macros_qtpurchasing.hpp"
#include "qt5xhb_macros_qtqml.hpp"
#include "qt5xhb_macros_qtquick.hpp"
#include "qt5xhb_macros_qtquickwidgets.hpp"
#include "qt5xhb_macros_qtscript.hpp"
#include "qt5xhb_macros_qtscripttools.hpp"
#include "qt5xhb_macros_qtsensors.hpp"
#include "qt5xhb_macros_qtserialbus.hpp"
#include "qt5xhb_macros_qtserialport.hpp"
#include "qt5xhb_macros_qtsql.hpp"
#include "qt5xhb_macros_qtsvg.hpp"
#include "qt5xhb_macros_qttexttospeech.hpp"
#include "qt5xhb_macros_qtuitools.hpp"
#include "qt5xhb_macros_qtwebchannel.hpp"
#include "qt5xhb_macros_qtwebengine.hpp"
#include "qt5xhb_macros_qtwebenginecore.hpp"
#include "qt5xhb_macros_qtwebenginewidgets.hpp"
#include "qt5xhb_macros_qtwebkit.hpp"
#include "qt5xhb_macros_qtwebkitwidgets.hpp"
#include "qt5xhb_macros_qtwebsockets.hpp"
#include "qt5xhb_macros_qtwebview.hpp"
#include "qt5xhb_macros_qtwidgets.hpp"
#include "qt5xhb_macros_qtwinextras.hpp"
#include "qt5xhb_macros_qtx11extras.hpp"
#include "qt5xhb_macros_qtxml.hpp"
#include "qt5xhb_macros_qtxmlpatterns.hpp"

// TODO: revise
#define ISQSTRINGREF(n)                                     Qt5xHb::isObjectDerivedFrom(n, "QStringRef")
#define PQSTRINGREF(n)                                      (QStringRef *)Qt5xHb::itemGetPtr(n)
#define ISQRUNNABLE(n)                                      Qt5xHb::isObjectDerivedFrom(n, "QRunnable")
#define PQRUNNABLE(n)                                       (QRunnable *)Qt5xHb::itemGetPtr(n)
#define ISQLATIN1STRING(n)                                  Qt5xHb::isObjectDerivedFrom(n, "QLatin1String")
#define PQLATIN1STRING(n)                                   (QLatin1String *)Qt5xHb::itemGetPtr(n)
#define PQLATIN1CHAR(n)                                     (QLatin1Char *)Qt5xHb::itemGetPtr(n)
#define ISQDESIGNERFORMWINDOWINTERFACE(n)                   Qt5xHb::isObjectDerivedFrom(n, "QDesignerFormWindowInterface")
#define PQDESIGNERFORMWINDOWINTERFACE(n)                    (QDesignerFormWindowInterface *)Qt5xHb::itemGetPtr(n)

#define ISBETWEEN(a, b)                                     hb_pcount() >= a && hb_pcount() <= b
#define ISNUMPAR(a)                                         hb_pcount() == a
#define INHERITS(a, b)                                      Qt5xHb::isObjectDerivedFrom(a, b)

// macros for parameters
#define PQREAL(n)                                           static_cast<qreal>(hb_parnd(n))
//#define PQREAL(n, d)                                      (qreal)HB_ISNIL(n) ? d : hb_parnd(n)
//#define PQSTRING(n)                                       _qt5xhb_convert_string_parameter_to_qstring(n)
#define PQSTRING(n)                                         QString::fromLatin1(hb_parc(n))
//#define PQSTRING(n)                                       QString::fromUtf8(hb_parc(n))
#define PBOOL(n)                                            static_cast<bool>(hb_parl(n))
#define PCHAR(n)                                            static_cast<char>(hb_parni(n))
#define PUCHAR(n)                                           static_cast<uchar>(hb_parni(n))
#define PSHORT(n)                                           static_cast<short>(hb_parni(n))
#define PUSHORT(n)                                          static_cast<ushort>(hb_parni(n))
#define PINT(n)                                             static_cast<int>(hb_parni(n))
#define PUINT(n)                                            static_cast<uint>(hb_parni(n))
#define PFLOAT(n)                                           static_cast<float>(hb_parnd(n))
#define PDOUBLE(n)                                          static_cast<double>(hb_parnd(n))
#define PLONG(n)                                            static_cast<long>(hb_parnl(n))
#define PULONG(n)                                           static_cast<ulong>(hb_parnl(n))
#define PCONSTCHAR(n)                                       (const char *)hb_parc(n)
#define PCONSTUCHAR(n)                                      (const uchar *)hb_parc(n)
#define PQSTRINGLIST(n)                                     Qt5xHb::convert_array_parameter_to_qstringlist(n)
#define PQVARIANTLIST(n)                                    Qt5xHb::convert_array_parameter_to_qvariantlist(n)
#define PQINT8(n)                                           static_cast<qint8>(hb_parni(n))
#define PQINT16(n)                                          static_cast<qint16>(hb_parni(n))
#define PQINT32(n)                                          static_cast<qint32>(hb_parni(n))
#define PQINT64(n)                                          static_cast<qint64>(hb_parnll(n))
#define PQUINT8(n)                                          static_cast<quint8>(hb_parni(n))
#define PQUINT16(n)                                         static_cast<quint16>(hb_parni(n))
#define PQUINT32(n)                                         static_cast<quint32>(hb_parni(n))
#define PQUINT64(n)                                         static_cast<quint64>(hb_parnll(n))
#define PQLONGLONG(n)                                       static_cast<qlonglong>(hb_parnll(n))
#define PQULONGLONG(n)                                      static_cast<qulonglong>(hb_parnll(n))
#define PGLBOOLEAN(n)                                       static_cast<GLboolean>(hb_parl(n))
#define PGLINT(n)                                           static_cast<GLint>(hb_parni(n))
#define PGLUINT(n)                                          static_cast<GLuint>(hb_parni(n))
#define PGLUINT64(n)                                        static_cast<GLuint64>(hb_parnll(n))
#define PGLFLOAT(n)                                         static_cast<GLfloat>(hb_parnd(n))
#define PGLCLAMPF(n)                                        static_cast<GLclampf>(hb_parnd(n))
#define PGLENUM(n)                                          static_cast<GLenum>(hb_parni(n))
#define PGLBITFIELD(n)                                      static_cast<GLbitfield>(hb_parni(n))
#define PGLSIZEI(n)                                         static_cast<GLsizei>(hb_parni(n))
#define PUNSIGNEDLONG(n)                                    static_cast<unsigned long>(hb_parnl(n))
#define PQRGB(n)                                            static_cast<QRgb>(hb_parni(n))
// TODO: checar macros qintptr/quintptr
#define PQINTPTR(n)                                         static_cast<qintptr>(hb_parnll(n))
#define PQUINTPTR(n)                                        static_cast<quintptr>(hb_parnll(n))
#define PBLOCKORSYMBOL(n)                                   hb_param(n, HB_IT_BLOCK | HB_IT_SYMBOL)

// macros for optional parameters
#define OPBOOL(n, v)                                        static_cast<bool>(HB_ISNIL(n) ? v : hb_parl(n))
#define OPCHAR(n, v)                                        static_cast<char>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPUSHORT(n, v)                                      static_cast<ushort>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPINT(n, v)                                         static_cast<int>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPUINT(n, v)                                        static_cast<uint>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPFLOAT(n, v)                                       static_cast<float>(HB_ISNIL(n) ? v : hb_parnd(n))
#define OPDOUBLE(n, v)                                      static_cast<double>(HB_ISNIL(n) ? v : hb_parnd(n))
#define OPQREAL(n, v)                                       static_cast<qreal>(HB_ISNIL(n) ? v : hb_parnd(n))
#define OPCONSTCHAR(n, v)                                   (const char *)HB_ISNIL(n) ? v : hb_parc(n)
#define OPQSTRING(n, v)                                     HB_ISNIL(n) ? v : QString::fromLatin1(hb_parc(n))
//#define OPQSTRING(n, v)                                   HB_ISNIL(n) ? v : QString::fromUtf8(hb_parc(n))
#define OPQSTRINGLIST(n, v)                                 HB_ISNIL(n) ? v : Qt5xHb::convert_array_parameter_to_qstringlist(n)
#define OPQVARIANTLIST(n, v)                                HB_ISNIL(n) ? v : Qt5xHb::convert_array_parameter_to_qvariantlist(n)
#define OPQINT8(n, v)                                       static_cast<qint8>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPQINT16(n, v)                                      static_cast<qint16>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPQINT32(n, v)                                      static_cast<qint32>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPQINT64(n, v)                                      static_cast<qint64>(HB_ISNIL(n) ? v : hb_parnll(n))
#define OPQUINT8(n, v)                                      static_cast<quint8>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPQUINT16(n, v)                                     static_cast<quint16>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPQUINT32(n, v)                                     static_cast<quint32>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPQUINT64(n, v)                                     static_cast<quint64>(HB_ISNIL(n) ? v : hb_parnll(n))
#define OPGLBOOLEAN(n, v)                                   static_cast<GLboolean>(HB_ISNIL(n) ? v : hb_parl(n))
#define OPGLINT(n, v)                                       static_cast<GLint>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPGLUINT(n, v)                                      static_cast<GLuint>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPGLUINT64(n, v)                                    static_cast<GLuint64>(HB_ISNIL(n) ? v : hb_parnll(n))
#define OPGLFLOAT(n, v)                                     static_cast<GLfloat>(HB_ISNIL(n) ? v : hb_parnd(n))
#define OPGLCLAMPF(n, v)                                    static_cast<GLclampf>(HB_ISNIL(n) ? v : hb_parnd(n))
#define OPGLENUM(n, v)                                      static_cast<GLenum>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPGLBITFIELD(n, v)                                  static_cast<GLbitfield>(HB_ISNIL(n) ? v : hb_parni(n))
#define OPGLSIZEI(n, v)                                     static_cast<GLsizei>(HB_ISNIL(n) ? v : hb_parni(n))

// macros for return's
#define RQSTRING(x)                                         hb_retc((const char *)x.toLatin1().data())
//#define RQSTRING(x)                                       (const char *)x.toUtf8().data()
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
#define RQREAL(x)                                           hb_retnd(x)
#define RQINT8(x)                                           hb_retni(x)
#define RQINT16(x)                                          hb_retni(x)
#define RQINT32(x)                                          hb_retni(x)
#define RQINT64(x)                                          hb_retnll(x)
#define RQUINT8(x)                                          hb_retni(x)
#define RQUINT16(x)                                         hb_retni(x)
#define RQUINT32(x)                                         hb_retni(x)
#define RQUINT64(x)                                         hb_retnll(x)
#define RGLBOOLEAN(x)                                       hb_retl(static_cast<GLboolean>(x))
#define RGLINT(x)                                           hb_retni(static_cast<GLint>(x))
#define RGLUINT(x)                                          hb_retni(static_cast<GLuint>(x))
#define RGLUINT64(x)                                        hb_retnll(static_cast<GLuint64>(x))
#define RGLFLOAT(x)                                         hb_retnd(static_cast<GLfloat>(x))
#define RGLCLAMPF(n)                                        hb_retnd(static_cast<GLclampf>(x))
#define RGLENUM(x)                                          hb_retni(static_cast<GLenum>(x))
#define RGLBITFIELD(x)                                      hb_retni(static_cast<(GLbitfield>(x))
#define RGLSIZEI(x)                                         hb_retni(static_cast<GLsizei>(x))
#define RQSTRINGLIST(x)                                     Qt5xHb::convert_qstringlist_to_array(x)
#define RENUM(x)                                            hb_retni(static_cast<int>(x))
#define RQRGB(x)                                            hb_retni(x)
#define RQINTPTR(x)                                         hb_retnll(x)
#define RQUINTPTR(x)                                        hb_retnll(x)

// conversion from QString to string
#define QSTRINGTOSTRING(x)                                  (const char *)x.toLatin1().data()
//#define QSTRINGTOSTRING(x)                                (const char *)x.toUtf8().data()

#define ISNUMORNIL(n) (HB_ISNUM(n) || HB_ISNIL(n))
#define ISCHARORNIL(n) (HB_ISCHAR(n) || HB_ISNIL(n))
#define ISQWIDGETORNIL(n) (ISQWIDGET(n) || HB_ISNIL(n))
#define ISQOBJECTORNIL(n) (ISQOBJECT(n) || HB_ISNIL(n))

#endif // QT5XHB_MACROS_H
