//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGAMEPAD
#endif

CLASS QGamepadKeyNavigation INHERIT QObject

   METHOD new
   METHOD active
   METHOD setActive
   METHOD gamepad
   METHOD setGamepad
   METHOD upKey
   METHOD setUpKey
   METHOD downKey
   METHOD setDownKey
   METHOD leftKey
   METHOD setLeftKey
   METHOD rightKey
   METHOD setRightKey
   METHOD buttonAKey
   METHOD setButtonAKey
   METHOD buttonBKey
   METHOD setButtonBKey
   METHOD buttonXKey
   METHOD setButtonXKey
   METHOD buttonYKey
   METHOD setButtonYKey
   METHOD buttonSelectKey
   METHOD setButtonSelectKey
   METHOD buttonStartKey
   METHOD setButtonStartKey
   METHOD buttonGuideKey
   METHOD setButtonGuideKey
   METHOD buttonL1Key
   METHOD setButtonL1Key
   METHOD buttonR1Key
   METHOD setButtonR1Key
   METHOD buttonL2Key
   METHOD setButtonL2Key
   METHOD buttonR2Key
   METHOD setButtonR2Key
   METHOD buttonL3Key
   METHOD setButtonL3Key
   METHOD buttonR3Key
   METHOD setButtonR3Key

   METHOD onActiveChanged
   METHOD onGamepadChanged
   METHOD onUpKeyChanged
   METHOD onDownKeyChanged
   METHOD onLeftKeyChanged
   METHOD onRightKeyChanged
   METHOD onButtonAKeyChanged
   METHOD onButtonBKeyChanged
   METHOD onButtonXKeyChanged
   METHOD onButtonYKeyChanged
   METHOD onButtonSelectKeyChanged
   METHOD onButtonStartKeyChanged
   METHOD onButtonGuideKeyChanged
   METHOD onButtonL1KeyChanged
   METHOD onButtonR1KeyChanged
   METHOD onButtonL2KeyChanged
   METHOD onButtonR2KeyChanged
   METHOD onButtonL3KeyChanged
   METHOD onButtonR3KeyChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGamepadKeyNavigation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
#include <QtGamepad/QGamepadKeyNavigation>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
#include <QtGamepad/QGamepadKeyNavigation>
#endif
#endif

#include <QtGamepad/QGamepad>

    /*
    QGamepadKeyNavigation( QObject * parent = nullptr )
    */
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QGamepadKeyNavigation *obj = new QGamepadKeyNavigation(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
bool active() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ACTIVE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->active());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setActive( bool isActive )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETACTIVE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setActive(PBOOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QGamepad * gamepad() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_GAMEPAD)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QGamepad *ptr = obj->gamepad();
      Qt5xHb::createReturnQObjectClass(ptr, "QGAMEPAD");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setGamepad( QGamepad * gamepad )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETGAMEPAD)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQGAMEPAD(1))
    {
#endif
      obj->setGamepad(PQGAMEPAD(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key upKey() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_UPKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->upKey());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setUpKey( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETUPKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setUpKey((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key downKey() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_DOWNKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->downKey());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setDownKey( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETDOWNKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setDownKey((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key leftKey() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_LEFTKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->leftKey());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setLeftKey( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETLEFTKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setLeftKey((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key rightKey() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_RIGHTKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->rightKey());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setRightKey( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETRIGHTKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setRightKey((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key buttonAKey() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_BUTTONAKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->buttonAKey());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setButtonAKey( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETBUTTONAKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setButtonAKey((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key buttonBKey() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_BUTTONBKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->buttonBKey());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setButtonBKey( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETBUTTONBKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setButtonBKey((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key buttonXKey() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_BUTTONXKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->buttonXKey());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setButtonXKey( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETBUTTONXKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setButtonXKey((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key buttonYKey() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_BUTTONYKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->buttonYKey());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setButtonYKey( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETBUTTONYKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setButtonYKey((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key buttonSelectKey() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_BUTTONSELECTKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->buttonSelectKey());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setButtonSelectKey( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETBUTTONSELECTKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setButtonSelectKey((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key buttonStartKey() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_BUTTONSTARTKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->buttonStartKey());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setButtonStartKey( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETBUTTONSTARTKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setButtonStartKey((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key buttonGuideKey() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_BUTTONGUIDEKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->buttonGuideKey());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setButtonGuideKey( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETBUTTONGUIDEKEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setButtonGuideKey((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key buttonL1Key() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_BUTTONL1KEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->buttonL1Key());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setButtonL1Key( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETBUTTONL1KEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setButtonL1Key((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key buttonR1Key() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_BUTTONR1KEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->buttonR1Key());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setButtonR1Key( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETBUTTONR1KEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setButtonR1Key((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key buttonL2Key() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_BUTTONL2KEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->buttonL2Key());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setButtonL2Key( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETBUTTONL2KEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setButtonL2Key((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key buttonR2Key() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_BUTTONR2KEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->buttonR2Key());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setButtonR2Key( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETBUTTONR2KEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setButtonR2Key((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key buttonL3Key() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_BUTTONL3KEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->buttonL3Key());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setButtonL3Key( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETBUTTONL3KEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setButtonL3Key((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Qt::Key buttonR3Key() const
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_BUTTONR3KEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->buttonR3Key());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setButtonR3Key( Qt::Key key )
*/
HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_SETBUTTONR3KEY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigation *obj = (QGamepadKeyNavigation *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setButtonR3Key((Qt::Key)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

void QGamepadKeyNavigationSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONACTIVECHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("activeChanged(bool)", "activeChanged(bool)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONGAMEPADCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("gamepadChanged(QGamepad*)", "gamepadChanged(QGamepad*)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONUPKEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("upKeyChanged(Qt::Key)", "upKeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONDOWNKEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("downKeyChanged(Qt::Key)", "downKeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONLEFTKEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("leftKeyChanged(Qt::Key)", "leftKeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONRIGHTKEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("rightKeyChanged(Qt::Key)", "rightKeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONBUTTONAKEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("buttonAKeyChanged(Qt::Key)", "buttonAKeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONBUTTONBKEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("buttonBKeyChanged(Qt::Key)", "buttonBKeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONBUTTONXKEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("buttonXKeyChanged(Qt::Key)", "buttonXKeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONBUTTONYKEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("buttonYKeyChanged(Qt::Key)", "buttonYKeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONBUTTONSELECTKEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("buttonSelectKeyChanged(Qt::Key)", "buttonSelectKeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONBUTTONSTARTKEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("buttonStartKeyChanged(Qt::Key)", "buttonStartKeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONBUTTONGUIDEKEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("buttonGuideKeyChanged(Qt::Key)", "buttonGuideKeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONBUTTONL1KEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("buttonL1KeyChanged(Qt::Key)", "buttonL1KeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONBUTTONR1KEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("buttonR1KeyChanged(Qt::Key)", "buttonR1KeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONBUTTONL2KEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("buttonL2KeyChanged(Qt::Key)", "buttonL2KeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONBUTTONR2KEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("buttonR2KeyChanged(Qt::Key)", "buttonR2KeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONBUTTONL3KEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("buttonL3KeyChanged(Qt::Key)", "buttonL3KeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QGAMEPADKEYNAVIGATION_ONBUTTONR3KEYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QGamepadKeyNavigationSlots_connect_signal("buttonR3KeyChanged(Qt::Key)", "buttonR3KeyChanged(Qt::Key)");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
