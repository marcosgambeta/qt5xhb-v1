//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// clang-format off

#include "hbclass.ch"

CLASS HCodeBlockValidator INHERIT QValidator

   METHOD new
   METHOD delete
   METHOD validate
   METHOD fixup

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS HCodeBlockValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include "HCodeBlockValidator.hpp"

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

HB_FUNC_STATIC(HCODEBLOCKVALIDATOR_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    /*
    explicit HCodeBlockValidator( QObject *parent = 0 )
    */
    HCodeBlockValidator *o = new HCodeBlockValidator(OPQOBJECT(1, 0));
    Qt5xHb::returnNewObject(o, false);
  }
  else if (ISBETWEEN(1, 2) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    HCodeBlockValidator( PHB_ITEM codeblock, QObject *parent = 0 )
    */
    HCodeBlockValidator *o = new HCodeBlockValidator(PBLOCKORSYMBOL(1), OPQOBJECT(2, 0));
    Qt5xHb::returnNewObject(o, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~HCodeBlockValidator()
*/
HB_FUNC_STATIC(HCODEBLOCKVALIDATOR_DELETE)
{
  HCodeBlockValidator *obj = (HCodeBlockValidator *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QValidator::State validate( QString & input, int & pos ) const
*/
HB_FUNC_STATIC(HCODEBLOCKVALIDATOR_VALIDATE)
{
}

/*
void fixup( QString & input ) const
*/
HB_FUNC_STATIC(HCODEBLOCKVALIDATOR_FIXUP)
{
}

#pragma ENDDUMP
