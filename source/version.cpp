//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include <QtCore/QtGlobal>

#include <hbapi.h>

HB_FUNC(QT5XHB_VERSION)
{
  hb_retc(static_cast<const char *>("1.0.0dev"));
}

HB_FUNC(QT5XHB_VERSION_DATE)
{
  hb_retc(static_cast<const char *>("01/01/2023 02:45:00"));
}

HB_FUNC(QT5XHB_BUILD_DATE)
{
  hb_retc(static_cast<const char *>(__DATE__));
}

HB_FUNC(QT5XHB_BUILD_TIME)
{
  hb_retc(static_cast<const char *>(__TIME__));
}

HB_FUNC(QT5XHB_ISCPP11)
{
  hb_retl(false);
}

/*
  a fun��o abaixo existe para compatibilidade com o Qt4xHb
*/

HB_FUNC(QT4XHB_VERSION)
{
  hb_retc(static_cast<const char *>("1.0.0dev"));
}

HB_FUNC(QT4XHB_VERSION_DATE)
{
  hb_retc(static_cast<const char *>("01/01/2023 02:45:00"));
}

/*
  Fun��es do Qt Framework (inclui fun��es, constantes e macros)
*/

HB_FUNC(QVERSION)
{
  hb_retc(static_cast<const char *>(qVersion()));
}

HB_FUNC(QSHAREDBUILD)
{
  hb_retl(qSharedBuild());
}

HB_FUNC(QT_VERSION_STR)
{
  hb_retc(static_cast<const char *>(QT_VERSION_STR));
}

HB_FUNC(QT_VERSION)
{
  hb_retni(QT_VERSION);
}

HB_FUNC(QT_VERSION_CHECK)
{
  hb_retni(QT_VERSION_CHECK(hb_parni(1), hb_parni(2), hb_parni(3)));
}
