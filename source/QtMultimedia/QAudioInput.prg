//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QIODEVICE
#endif

CLASS QAudioInput INHERIT QObject

   METHOD new
   METHOD delete
   METHOD bufferSize
   METHOD bytesReady
   METHOD elapsedUSecs
   METHOD error
   METHOD format
   METHOD notifyInterval
   METHOD periodSize
   METHOD processedUSecs
   METHOD reset
   METHOD resume
   METHOD setBufferSize
   METHOD setNotifyInterval
   METHOD start
   METHOD state
   METHOD stop
   METHOD suspend
   METHOD setVolume
   METHOD volume

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAudioInput
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QAudioInput>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QAudioInput>
#endif

HB_FUNC_STATIC(QAUDIOINPUT_NEW)
{
  if (ISBETWEEN(0, 2) && (ISQAUDIOFORMAT(1) || HB_ISNIL(1)) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QAudioInput( const QAudioFormat &format = QAudioFormat(), QObject * parent = nullptr )
    */
    QAudioInput *obj =
        new QAudioInput(HB_ISNIL(1) ? QAudioFormat() : *(QAudioFormat *)Qt5xHb::itemGetPtr(1), OPQOBJECT(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 3) && ISQAUDIODEVICEINFO(1) && (ISQAUDIOFORMAT(2) || HB_ISNIL(2)) &&
           (ISQOBJECT(3) || HB_ISNIL(3)))
  {
    /*
    QAudioInput( const QAudioDeviceInfo &audioDeviceInfo, const QAudioFormat &format = QAudioFormat(), QObject *
    parent = nullptr )
    */
    QAudioInput *obj =
        new QAudioInput(*PQAUDIODEVICEINFO(1), HB_ISNIL(2) ? QAudioFormat() : *(QAudioFormat *)Qt5xHb::itemGetPtr(2),
                        OPQOBJECT(3, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QAudioInput()
*/
HB_FUNC_STATIC(QAUDIOINPUT_DELETE)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

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
int bufferSize() const
*/
HB_FUNC_STATIC(QAUDIOINPUT_BUFFERSIZE)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->bufferSize());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int bytesReady() const
*/
HB_FUNC_STATIC(QAUDIOINPUT_BYTESREADY)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->bytesReady());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qint64 elapsedUSecs() const
*/
HB_FUNC_STATIC(QAUDIOINPUT_ELAPSEDUSECS)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQINT64(obj->elapsedUSecs());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QAudio::Error error() const
*/
HB_FUNC_STATIC(QAUDIOINPUT_ERROR)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->error());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QAudioFormat format() const
*/
HB_FUNC_STATIC(QAUDIOINPUT_FORMAT)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAudioFormat *ptr = new QAudioFormat(obj->format());
      Qt5xHb::createReturnClass(ptr, "QAUDIOFORMAT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int notifyInterval() const
*/
HB_FUNC_STATIC(QAUDIOINPUT_NOTIFYINTERVAL)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->notifyInterval());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int periodSize() const
*/
HB_FUNC_STATIC(QAUDIOINPUT_PERIODSIZE)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->periodSize());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qint64 processedUSecs() const
*/
HB_FUNC_STATIC(QAUDIOINPUT_PROCESSEDUSECS)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQINT64(obj->processedUSecs());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void reset()
*/
HB_FUNC_STATIC(QAUDIOINPUT_RESET)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->reset();
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
void resume()
*/
HB_FUNC_STATIC(QAUDIOINPUT_RESUME)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->resume();
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
void setBufferSize( int bytes )
*/
HB_FUNC_STATIC(QAUDIOINPUT_SETBUFFERSIZE)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setBufferSize(PINT(1));
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
void setNotifyInterval( int milliSeconds )
*/
HB_FUNC_STATIC(QAUDIOINPUT_SETNOTIFYINTERVAL)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setNotifyInterval(PINT(1));
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

HB_FUNC_STATIC(QAUDIOINPUT_START)
{
  if (ISNUMPAR(1) && ISQIODEVICE(1))
  {
    /*
    void start( QIODevice * device )
    */
    QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->start(PQIODEVICE(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(0))
  {
    /*
    QIODevice * start()
    */
    QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QIODevice *ptr = obj->start();
      Qt5xHb::createReturnQObjectClass(ptr, "QIODEVICE");
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QAudio::State state() const
*/
HB_FUNC_STATIC(QAUDIOINPUT_STATE)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->state());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void stop()
*/
HB_FUNC_STATIC(QAUDIOINPUT_STOP)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->stop();
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
void suspend()
*/
HB_FUNC_STATIC(QAUDIOINPUT_SUSPEND)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->suspend();
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
void setVolume( qreal volume )
*/
HB_FUNC_STATIC(QAUDIOINPUT_SETVOLUME)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setVolume(PQREAL(1));
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
qreal volume() const
*/
HB_FUNC_STATIC(QAUDIOINPUT_VOLUME)
{
  QAudioInput *obj = (QAudioInput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->volume());
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
