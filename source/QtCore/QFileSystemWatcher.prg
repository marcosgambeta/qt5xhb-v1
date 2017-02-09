/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QFileSystemWatcher INHERIT QObject

   DATA class_id INIT Class_Id_QFileSystemWatcher
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
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

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QFileSystemWatcher>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QFileSystemWatcher>
#endif
#endif

#include <QStringList>

/*
QFileSystemWatcher(QObject * parent = 0)
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QFileSystemWatcher * o = new QFileSystemWatcher ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFileSystemWatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QFileSystemWatcher * o = new QFileSystemWatcher ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFileSystemWatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QFileSystemWatcher(QObject * parent = 0)
//[2]QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)

HB_FUNC_STATIC( QFILESYSTEMWATCHER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QFILESYSTEMWATCHER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QFILESYSTEMWATCHER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFILESYSTEMWATCHER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
bool addPath(const QString & path)
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_ADDPATH )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->addPath ( par1 ) );
  }
}


/*
QStringList addPaths(const QStringList & paths)
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_ADDPATHS )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    QStringList strl = obj->addPaths ( par1 );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QStringList directories() const
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_DIRECTORIES )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->directories (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QStringList files() const
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_FILES )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->files (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
bool removePath(const QString & path)
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_REMOVEPATH )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->removePath ( par1 ) );
  }
}


/*
QStringList removePaths(const QStringList & paths)
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_REMOVEPATHS )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    QStringList strl = obj->removePaths ( par1 );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}




#pragma ENDDUMP
