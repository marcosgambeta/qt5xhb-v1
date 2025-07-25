//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDeclarative/QtDeclarativeVersion>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtDeclarative/QtDeclarativeVersion>
#endif

HB_FUNC(QTDECLARATIVE_VERSION_STR)
{
  hb_retc(static_cast<const char *>(QTDECLARATIVE_VERSION_STR));
}

HB_FUNC(QTDECLARATIVE_VERSION)
{
  hb_retni(QTDECLARATIVE_VERSION);
}
