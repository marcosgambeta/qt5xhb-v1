//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QStyleOptionSpinBox INHERIT QStyleOptionComplex

   METHOD new
   METHOD buttonSymbols
   METHOD setButtonSymbols
   METHOD stepEnabled
   METHOD setStepEnabled
   METHOD frame
   METHOD setFrame

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionSpinBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionSpinBox>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionSpinBox>
#endif

HB_FUNC_STATIC(QSTYLEOPTIONSPINBOX_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QStyleOptionSpinBox()
    */
    QStyleOptionSpinBox *obj = new QStyleOptionSpinBox();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONSPINBOX(1))
  {
    /*
    QStyleOptionSpinBox( const QStyleOptionSpinBox &other )
    */
    QStyleOptionSpinBox *obj = new QStyleOptionSpinBox(*PQSTYLEOPTIONSPINBOX(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QAbstractSpinBox::ButtonSymbols buttonSymbols
*/
HB_FUNC_STATIC(QSTYLEOPTIONSPINBOX_BUTTONSYMBOLS)
{
  QStyleOptionSpinBox *obj = (QStyleOptionSpinBox *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->buttonSymbols);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONSPINBOX_SETBUTTONSYMBOLS)
{
  QStyleOptionSpinBox *obj = (QStyleOptionSpinBox *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->buttonSymbols = (QAbstractSpinBox::ButtonSymbols)hb_parni(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QAbstractSpinBox::StepEnabled stepEnabled
*/
HB_FUNC_STATIC(QSTYLEOPTIONSPINBOX_STEPENABLED)
{
  QStyleOptionSpinBox *obj = (QStyleOptionSpinBox *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->stepEnabled);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONSPINBOX_SETSTEPENABLED)
{
  QStyleOptionSpinBox *obj = (QStyleOptionSpinBox *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->stepEnabled = (QAbstractSpinBox::StepEnabled)hb_parni(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool frame
*/
HB_FUNC_STATIC(QSTYLEOPTIONSPINBOX_FRAME)
{
  QStyleOptionSpinBox *obj = (QStyleOptionSpinBox *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RBOOL(obj->frame);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONSPINBOX_SETFRAME)
{
  QStyleOptionSpinBox *obj = (QStyleOptionSpinBox *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
      obj->frame = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
