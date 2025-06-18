//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include <QtCore/Qt>

#include <hbapi.h>

HB_FUNC(Q_OS_WIN)
{
#if defined(Q_OS_WIN)
  hb_retl(true);
#else
  hb_retl(false);
#endif
}

HB_FUNC(Q_OS_WIN32)
{
#if defined(Q_OS_WIN32)
  hb_retl(true);
#else
  hb_retl(false);
#endif
}

HB_FUNC(Q_OS_WIN64)
{
#if defined(Q_OS_WIN64)
  hb_retl(true);
#else
  hb_retl(false);
#endif
}

HB_FUNC(Q_OS_WINCE)
{
#if defined(Q_OS_WINCE)
  hb_retl(true);
#else
  hb_retl(false);
#endif
}

HB_FUNC(Q_OS_WINCE_WM)
{
#if defined(Q_OS_WINCE_WM)
  hb_retl(true);
#else
  hb_retl(false);
#endif
}

HB_FUNC(Q_OS_WINRT)
{
#if defined(Q_OS_WINRT)
  hb_retl(true);
#else
  hb_retl(false);
#endif
}

HB_FUNC(Q_OS_UNIX)
{
#if defined(Q_OS_UNIX)
  hb_retl(true);
#else
  hb_retl(false);
#endif
}

HB_FUNC(Q_OS_LINUX)
{
#if defined(Q_OS_LINUX)
  hb_retl(true);
#else
  hb_retl(false);
#endif
}

HB_FUNC(Q_OS_ANDROID)
{
#if defined(Q_OS_ANDROID)
  hb_retl(true);
#else
  hb_retl(false);
#endif
}

HB_FUNC(Q_OS_MAC)
{
#if defined(Q_OS_MAC)
  hb_retl(true);
#else
  hb_retl(false);
#endif
}

HB_FUNC(Q_OS_QNX)
{
#if defined(Q_OS_QNX)
  hb_retl(true);
#else
  hb_retl(false);
#endif
}

HB_FUNC(Q_OS_BLACKBERRY)
{
#if defined(Q_OS_BLACKBERRY)
  hb_retl(true);
#else
  hb_retl(false);
#endif
}
