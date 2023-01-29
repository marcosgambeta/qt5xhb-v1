/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAccessibleTextCursorEvent INHERIT QAccessibleEvent

   METHOD new
   METHOD delete
   METHOD setCursorPosition
   METHOD cursorPosition

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAccessibleTextCursorEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QAccessibleTextCursorEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QAccessibleTextCursorEvent>
#endif

/*
QAccessibleTextCursorEvent( QObject * obj, int cursorPos )
*/
HB_FUNC_STATIC( QACCESSIBLETEXTCURSOREVENT_NEW )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISNUM(2) )
  {
    QAccessibleTextCursorEvent * obj = new QAccessibleTextCursorEvent( PQOBJECT(1), PINT(2) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QACCESSIBLETEXTCURSOREVENT_DELETE )
{
  QAccessibleTextCursorEvent * obj = (QAccessibleTextCursorEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setCursorPosition( int position )
*/
HB_FUNC_STATIC( QACCESSIBLETEXTCURSOREVENT_SETCURSORPOSITION )
{
  QAccessibleTextCursorEvent * obj = (QAccessibleTextCursorEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setCursorPosition( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int cursorPosition() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTCURSOREVENT_CURSORPOSITION )
{
  QAccessibleTextCursorEvent * obj = (QAccessibleTextCursorEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->cursorPosition() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
