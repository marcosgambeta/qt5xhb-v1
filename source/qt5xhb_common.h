/*

  Qt5xHb - biblioteca de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#include "hbdate.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#define ISOPTLOG(n) (ISLOG(n)||ISNIL(n))
#define ISOPTNUM(n) (ISNUM(n)||ISNIL(n))
#define ISOPTCHAR(n) (ISCHAR(n)||ISNIL(n))
#define ISOPTARRAY(n) (ISARRAY(n)||ISNIL(n))
