/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

HB_FUNC(QT5XHB_ISCPP11)
{
  hb_retl(false);
}

/*
  a função abaixo existe para compatibilidade com o Qt4xHb
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
  Funções do Qt Framework (inclui funções, constantes e macros)
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
