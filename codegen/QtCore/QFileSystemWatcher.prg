$header

#include "hbclass.ch"

CLASS QFileSystemWatcher INHERIT QObject

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

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

/*
QFileSystemWatcher(QObject * parent = 0)
*/
void QFileSystemWatcher_new1 ()
{
  QFileSystemWatcher * o = new QFileSystemWatcher ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)
*/
void QFileSystemWatcher_new2 ()
{
  QFileSystemWatcher * o = new QFileSystemWatcher ( PQSTRINGLIST(1), OPQOBJECT(2,0) );
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

$deleteMethod

/*
bool addPath(const QString & path)
*/
$method=|bool|addPath|const QString &

/*
QStringList addPaths(const QStringList & paths)
*/
$method=|QStringList|addPaths|const QStringList &

/*
QStringList directories() const
*/
$method=|QStringList|directories|

/*
QStringList files() const
*/
$method=|QStringList|files|

/*
bool removePath(const QString & path)
*/
$method=|bool|removePath|const QString &

/*
QStringList removePaths(const QStringList & paths)
*/
$method=|QStringList|removePaths|const QStringList &

#pragma ENDDUMP
