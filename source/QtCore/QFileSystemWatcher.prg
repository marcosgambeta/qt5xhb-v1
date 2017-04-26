/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QFileSystemWatcher INHERIT QObject

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QFileSystemWatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFileSystemWatcher>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFileSystemWatcher>
#endif

#include <QStringList>

/*
QFileSystemWatcher(QObject * parent = 0)
*/
void QFileSystemWatcher_new1 ()
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QFileSystemWatcher * o = new QFileSystemWatcher ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)
*/
void QFileSystemWatcher_new2 ()
{
  QStringList par1 = _qt5xhb_convert_array_parameter_to_qstringlist(1);
  //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
  //int i1;
  //int nLen1 = hb_arrayLen(aStrings1);
  //for (i1=0;i1<nLen1;i1++)
  //{
  //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
  //  par1 << temp;
  //}
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QFileSystemWatcher * o = new QFileSystemWatcher ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QFileSystemWatcher(QObject * parent = 0)
//[2]QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)

HB_FUNC_STATIC( QFILESYSTEMWATCHER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QFileSystemWatcher_new1();
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && ISOPTQOBJECT(2) )
  {
    QFileSystemWatcher_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFILESYSTEMWATCHER_DELETE )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool addPath(const QString & path)
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_ADDPATH )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      hb_retl( obj->addPath ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList addPaths(const QStringList & paths)
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_ADDPATHS )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      QStringList par1 = _qt5xhb_convert_array_parameter_to_qstringlist(1);
      //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
      //int i1;
      //int nLen1 = hb_arrayLen(aStrings1);
      //for (i1=0;i1<nLen1;i1++)
      //{
      //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
      //  par1 << temp;
      //}
      QStringList strl = obj->addPaths ( par1 );
      _qt5xhb_convert_qstringlist_to_array ( strl );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList directories() const
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_DIRECTORIES )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringList strl = obj->directories (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

/*
QStringList files() const
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_FILES )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringList strl = obj->files (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

/*
bool removePath(const QString & path)
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_REMOVEPATH )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      hb_retl( obj->removePath ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList removePaths(const QStringList & paths)
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_REMOVEPATHS )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      QStringList par1 = _qt5xhb_convert_array_parameter_to_qstringlist(1);
      //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
      //int i1;
      //int nLen1 = hb_arrayLen(aStrings1);
      //for (i1=0;i1<nLen1;i1++)
      //{
      //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
      //  par1 << temp;
      //}
      QStringList strl = obj->removePaths ( par1 );
      _qt5xhb_convert_qstringlist_to_array ( strl );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
