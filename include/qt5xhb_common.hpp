//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include <hbapi.h>
#include <hbapiitm.h>
#include <hbapierr.h>
#include <hbvm.h>
#include <hbstack.h>
#include <hbdate.h>

#ifndef __XHARBOUR__
#include <hbapicls.h>
#endif

// TOCHECK: for xHarbour compatibility
#ifdef __XHARBOUR__
#define hb_objGetClass(x) HB_OBJ_CLASS(x)
#endif
