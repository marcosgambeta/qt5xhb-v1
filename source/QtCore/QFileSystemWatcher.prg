/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QFileSystemWatcher INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addPath
   METHOD addPaths
   METHOD directories
   METHOD files
   METHOD removePath
   METHOD removePaths

   METHOD onDirectoryChanged
   METHOD onFileChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFileSystemWatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QFileSystemWatcher>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QFileSystemWatcher>
#endif

#include <QtCore/QStringList>

HB_FUNC_STATIC(QFILESYSTEMWATCHER_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    /*
    QFileSystemWatcher( QObject * parent = 0 )
    */
    QFileSystemWatcher *obj = new QFileSystemWatcher(OPQOBJECT(1, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && HB_ISARRAY(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QFileSystemWatcher( const QStringList & paths, QObject * parent = 0 )
    */
    QFileSystemWatcher *obj = new QFileSystemWatcher(PQSTRINGLIST(1), OPQOBJECT(2, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QFILESYSTEMWATCHER_DELETE)
{
  QFileSystemWatcher *obj = (QFileSystemWatcher *)Qt5xHb::itemGetPtrStackSelfItem();

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
bool addPath( const QString & path )
*/
HB_FUNC_STATIC(QFILESYSTEMWATCHER_ADDPATH)
{
  QFileSystemWatcher *obj = (QFileSystemWatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->addPath(PQSTRING(1)));
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
QStringList addPaths( const QStringList & paths )
*/
HB_FUNC_STATIC(QFILESYSTEMWATCHER_ADDPATHS)
{
  QFileSystemWatcher *obj = (QFileSystemWatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      RQSTRINGLIST(obj->addPaths(PQSTRINGLIST(1)));
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
QStringList directories() const
*/
HB_FUNC_STATIC(QFILESYSTEMWATCHER_DIRECTORIES)
{
  QFileSystemWatcher *obj = (QFileSystemWatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->directories());
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
QStringList files() const
*/
HB_FUNC_STATIC(QFILESYSTEMWATCHER_FILES)
{
  QFileSystemWatcher *obj = (QFileSystemWatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->files());
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
bool removePath( const QString & path )
*/
HB_FUNC_STATIC(QFILESYSTEMWATCHER_REMOVEPATH)
{
  QFileSystemWatcher *obj = (QFileSystemWatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->removePath(PQSTRING(1)));
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
QStringList removePaths( const QStringList & paths )
*/
HB_FUNC_STATIC(QFILESYSTEMWATCHER_REMOVEPATHS)
{
  QFileSystemWatcher *obj = (QFileSystemWatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      RQSTRINGLIST(obj->removePaths(PQSTRINGLIST(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QFileSystemWatcherSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QFILESYSTEMWATCHER_ONDIRECTORYCHANGED)
{
  QFileSystemWatcherSlots_connect_signal("directoryChanged(QString)", "directoryChanged(QString)");
}

HB_FUNC_STATIC(QFILESYSTEMWATCHER_ONFILECHANGED)
{
  QFileSystemWatcherSlots_connect_signal("fileChanged(QString)", "fileChanged(QString)");
}

#pragma ENDDUMP
