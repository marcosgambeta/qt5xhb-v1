/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFILEICONPROVIDER
REQUEST QABSTRACTITEMDELEGATE
REQUEST QABSTRACTPROXYMODEL
REQUEST QBYTEARRAY
REQUEST QDIR
REQUEST QURL
#endif

CLASS QFileDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD acceptMode
   METHOD setAcceptMode
   METHOD confirmOverwrite
   METHOD setConfirmOverwrite
   METHOD defaultSuffix
   METHOD setDefaultSuffix
   METHOD fileMode
   METHOD setFileMode
   METHOD filter
   METHOD setFilter
   METHOD history
   METHOD setHistory
   METHOD iconProvider
   METHOD setIconProvider
   METHOD isNameFilterDetailsVisible
   METHOD setNameFilterDetailsVisible
   METHOD isReadOnly
   METHOD setReadOnly
   METHOD itemDelegate
   METHOD setItemDelegate
   METHOD labelText
   METHOD setLabelText
   METHOD nameFilters
   METHOD setNameFilters
   METHOD open
   METHOD options
   METHOD setOptions
   METHOD proxyModel
   METHOD setProxyModel
   METHOD resolveSymlinks
   METHOD setResolveSymlinks
   METHOD restoreState
   METHOD saveState
   METHOD selectFile
   METHOD selectNameFilter
   METHOD selectedFiles
   METHOD selectedNameFilter
   METHOD directory
   METHOD setDirectory
   METHOD setNameFilter
   METHOD setOption
   METHOD sidebarUrls
   METHOD setSidebarUrls
   METHOD testOption
   METHOD viewMode
   METHOD setViewMode
   METHOD setVisible
   METHOD directoryUrl
   METHOD setDirectoryUrl
   METHOD selectUrl
   METHOD selectedUrls
   METHOD mimeTypeFilters
   METHOD setMimeTypeFilters
   METHOD selectMimeTypeFilter
   METHOD getExistingDirectory
   METHOD getOpenFileName
   METHOD getOpenFileNames
   METHOD getSaveFileName
   METHOD getOpenFileUrl
   METHOD getSaveFileUrl
   METHOD getExistingDirectoryUrl
   METHOD getOpenFileUrls

   METHOD onCurrentChanged
   METHOD onDirectoryEntered
   METHOD onFileSelected
   METHOD onFilesSelected
   METHOD onFilterSelected
   METHOD onUrlSelected
   METHOD onUrlsSelected
   METHOD onCurrentUrlChanged
   METHOD onDirectoryUrlEntered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFileDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFileDialog>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFileDialog>
#endif

#include <QUrl>

/*
QFileDialog ( QWidget * parent, Qt::WindowFlags flags )
*/
void QFileDialog_new1 ()
{
  int par2 = hb_parni(2);
  QFileDialog * o = new QFileDialog ( PQWIDGET(1), (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QFileDialog ( QWidget * parent = 0, const QString & caption = QString(), const QString & directory = QString(), const QString & filter = QString() )
*/
void QFileDialog_new2 ()
{
  QFileDialog * o = new QFileDialog ( OPQWIDGET(1,0), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QFileDialog ( QWidget * parent, Qt::WindowFlags flags )
//[2]explicit QFileDialog ( QWidget * parent = 0, const QString & caption = QString(), const QString & directory = QString(), const QString & filter = QString() )

HB_FUNC_STATIC( QFILEDIALOG_NEW )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QFileDialog_new1();
  }
  else if( ISBETWEEN(0,4) && ISOPTQWIDGET(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) )
  {
    QFileDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFILEDIALOG_DELETE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
AcceptMode acceptMode () const
*/
HB_FUNC_STATIC( QFILEDIALOG_ACCEPTMODE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->acceptMode () );
  }
}

/*
void setAcceptMode ( AcceptMode mode )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETACCEPTMODE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setAcceptMode ( (QFileDialog::AcceptMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool confirmOverwrite () const
*/
HB_FUNC_STATIC( QFILEDIALOG_CONFIRMOVERWRITE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->confirmOverwrite () );
  }
}

/*
void setConfirmOverwrite ( bool enabled )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETCONFIRMOVERWRITE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setConfirmOverwrite ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString defaultSuffix () const
*/
HB_FUNC_STATIC( QFILEDIALOG_DEFAULTSUFFIX )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->defaultSuffix () );
  }
}

/*
void setDefaultSuffix ( const QString & suffix )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETDEFAULTSUFFIX )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setDefaultSuffix ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
FileMode fileMode () const
*/
HB_FUNC_STATIC( QFILEDIALOG_FILEMODE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->fileMode () );
  }
}

/*
void setFileMode ( FileMode mode )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETFILEMODE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setFileMode ( (QFileDialog::FileMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDir::Filters filter () const
*/
HB_FUNC_STATIC( QFILEDIALOG_FILTER )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->filter () );
  }
}

/*
void setFilter ( QDir::Filters filters )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETFILTER )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setFilter ( (QDir::Filters) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList history () const
*/
HB_FUNC_STATIC( QFILEDIALOG_HISTORY )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->history () );
  }
}

/*
void setHistory ( const QStringList & paths )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETHISTORY )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      obj->setHistory ( PQSTRINGLIST(1) );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFileIconProvider * iconProvider () const
*/
HB_FUNC_STATIC( QFILEDIALOG_ICONPROVIDER )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFileIconProvider * ptr = obj->iconProvider ();
    _qt5xhb_createReturnClass ( ptr, "QFILEICONPROVIDER" );
  }
}

/*
void setIconProvider ( QFileIconProvider * provider )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETICONPROVIDER )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQFILEICONPROVIDER(1) )
    {
      obj->setIconProvider ( PQFILEICONPROVIDER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isNameFilterDetailsVisible () const
*/
HB_FUNC_STATIC( QFILEDIALOG_ISNAMEFILTERDETAILSVISIBLE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isNameFilterDetailsVisible () );
  }
}

/*
void setNameFilterDetailsVisible ( bool enabled )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETNAMEFILTERDETAILSVISIBLE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setNameFilterDetailsVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isReadOnly () const
*/
HB_FUNC_STATIC( QFILEDIALOG_ISREADONLY )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isReadOnly () );
  }
}

/*
void setReadOnly ( bool enabled )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETREADONLY )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setReadOnly ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAbstractItemDelegate * itemDelegate () const
*/
HB_FUNC_STATIC( QFILEDIALOG_ITEMDELEGATE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegate ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}

/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETITEMDELEGATE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTITEMDELEGATE(1) )
    {
      obj->setItemDelegate ( PQABSTRACTITEMDELEGATE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString labelText ( DialogLabel label ) const
*/
HB_FUNC_STATIC( QFILEDIALOG_LABELTEXT )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->labelText ( (QFileDialog::DialogLabel) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLabelText ( DialogLabel label, const QString & text )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETLABELTEXT )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) )
    {
      obj->setLabelText ( (QFileDialog::DialogLabel) hb_parni(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList nameFilters () const
*/
HB_FUNC_STATIC( QFILEDIALOG_NAMEFILTERS )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->nameFilters () );
  }
}

/*
void setNameFilters ( const QStringList & filters )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETNAMEFILTERS )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      obj->setNameFilters ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QFILEDIALOG_OPEN )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) && ISCHAR(2) )
    {
      obj->open ( PQOBJECT(1), PCONSTCHAR(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Options options () const
*/
HB_FUNC_STATIC( QFILEDIALOG_OPTIONS )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->options () );
  }
}

/*
void setOptions ( Options options )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETOPTIONS )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setOptions ( (QFileDialog::Options) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAbstractProxyModel * proxyModel () const
*/
HB_FUNC_STATIC( QFILEDIALOG_PROXYMODEL )
{
#ifndef QT_NO_PROXYMODEL
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractProxyModel * ptr = obj->proxyModel ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTPROXYMODEL" );
  }
#endif
}

/*
void setProxyModel ( QAbstractProxyModel * proxyModel )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETPROXYMODEL )
{
#ifndef QT_NO_PROXYMODEL
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTPROXYMODEL(1) )
    {
      obj->setProxyModel ( PQABSTRACTPROXYMODEL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool resolveSymlinks () const
*/
HB_FUNC_STATIC( QFILEDIALOG_RESOLVESYMLINKS )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->resolveSymlinks () );
  }
}

/*
void setResolveSymlinks ( bool enabled )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETRESOLVESYMLINKS )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setResolveSymlinks ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool restoreState ( const QByteArray & state )
*/
HB_FUNC_STATIC( QFILEDIALOG_RESTORESTATE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) )
    {
      RBOOL( obj->restoreState ( *PQBYTEARRAY(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray saveState () const
*/
HB_FUNC_STATIC( QFILEDIALOG_SAVESTATE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->saveState () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
void selectFile ( const QString & filename )
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTFILE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->selectFile ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void selectNameFilter ( const QString & filter )
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTNAMEFILTER )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->selectNameFilter ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList selectedFiles () const
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTEDFILES )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->selectedFiles () );
  }
}

/*
QString selectedNameFilter () const
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTEDNAMEFILTER )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->selectedNameFilter () );
  }
}

/*
QDir directory () const
*/
HB_FUNC_STATIC( QFILEDIALOG_DIRECTORY )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDir * ptr = new QDir( obj->directory () );
    _qt5xhb_createReturnClass ( ptr, "QDIR", true );
  }
}

/*
void setDirectory ( const QString & directory )
*/
void QFileDialog_setDirectory1 ()
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setDirectory ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDirectory ( const QDir & directory )
*/
void QFileDialog_setDirectory2 ()
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setDirectory ( *PQDIR(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setDirectory ( const QString & directory )
//[2]void setDirectory ( const QDir & directory )

HB_FUNC_STATIC( QFILEDIALOG_SETDIRECTORY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFileDialog_setDirectory1();
  }
  else if( ISNUMPAR(1) && ISQDIR(1) )
  {
    QFileDialog_setDirectory2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setNameFilter ( const QString & filter )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETNAMEFILTER )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setNameFilter ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOption ( Option option, bool on = true )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETOPTION )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTLOG(2) )
    {
      obj->setOption ( (QFileDialog::Option) hb_parni(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QUrl> sidebarUrls () const
*/
HB_FUNC_STATIC( QFILEDIALOG_SIDEBARURLS )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QUrl> list = obj->sidebarUrls ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QURL" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QUrl *) new QUrl ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
void setSidebarUrls ( const QList<QUrl> & urls )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETSIDEBARURLS )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      QList<QUrl> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->setSidebarUrls ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool testOption ( Option option ) const
*/
HB_FUNC_STATIC( QFILEDIALOG_TESTOPTION )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->testOption ( (QFileDialog::Option) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
ViewMode viewMode () const
*/
HB_FUNC_STATIC( QFILEDIALOG_VIEWMODE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->viewMode () );
  }
}

/*
void setViewMode ( ViewMode mode )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETVIEWMODE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setViewMode ( (QFileDialog::ViewMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETVISIBLE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QUrl directoryUrl() const
*/
HB_FUNC_STATIC( QFILEDIALOG_DIRECTORYURL )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QUrl * ptr = new QUrl( obj->directoryUrl () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}

/*
void setDirectoryUrl(const QUrl &directory)
*/
HB_FUNC_STATIC( QFILEDIALOG_SETDIRECTORYURL )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQURL(1) )
    {
      obj->setDirectoryUrl ( *PQURL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void selectUrl(const QUrl &url)
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTURL )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQURL(1) )
    {
      obj->selectUrl ( *PQURL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QUrl> selectedUrls() const
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTEDURLS )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QUrl> list = obj->selectedUrls ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QURL" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QUrl *) new QUrl ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QStringList mimeTypeFilters() const
*/
HB_FUNC_STATIC( QFILEDIALOG_MIMETYPEFILTERS )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->mimeTypeFilters () );
  }
}

/*
void setMimeTypeFilters(const QStringList &filters)
*/
HB_FUNC_STATIC( QFILEDIALOG_SETMIMETYPEFILTERS )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      obj->setMimeTypeFilters ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void selectMimeTypeFilter(const QString &filter)
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTMIMETYPEFILTER )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->selectMimeTypeFilter ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QString getExistingDirectory ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), Options options = ShowDirsOnly )
*/
HB_FUNC_STATIC( QFILEDIALOG_GETEXISTINGDIRECTORY )
{
  if( ISOPTQWIDGET(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
    int par4 = ISNIL(4)? (int) QFileDialog::ShowDirsOnly : hb_parni(4);
    RQSTRING( QFileDialog::getExistingDirectory ( OPQWIDGET(1,0), OPQSTRING(2,QString()), OPQSTRING(3,QString()), (QFileDialog::Options) par4 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString getOpenFileName (QWidget *parent = 0, const QString &caption = QString(), const QString &dir = QString(), const QString &filter = QString(), QString *selectedFilter = 0, Options options = 0)
*/
HB_FUNC_STATIC( QFILEDIALOG_GETOPENFILENAME )
{
  if( ISOPTQWIDGET(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) && ISOPTCHAR(5) && ISOPTNUM(6) )
  {
    QString par5 = ISNIL(5)? 0 : hb_parc(5);
    int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
    RQSTRING( QFileDialog::getOpenFileName ( OPQWIDGET(1,0), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()), &par5, (QFileDialog::Options) par6 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QStringList getOpenFileNames ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, Options options = 0 )
*/
HB_FUNC_STATIC( QFILEDIALOG_GETOPENFILENAMES )
{
  if( ISOPTQWIDGET(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) && ISOPTCHAR(5) && ISOPTNUM(6) )
  {
    QString par5 = ISNIL(5)? 0 : hb_parc(5);
    int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
    RQSTRINGLIST( QFileDialog::getOpenFileNames ( OPQWIDGET(1,0), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()), &par5, (QFileDialog::Options) par6 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString getSaveFileName (QWidget *parent = 0, const QString &caption = QString(), const QString &dir = QString(), const QString &filter = QString(), QString *selectedFilter = 0, Options options = 0)
*/
HB_FUNC_STATIC( QFILEDIALOG_GETSAVEFILENAME )
{
  if( ISOPTQWIDGET(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) && ISOPTCHAR(5) && ISOPTNUM(6) )
  {
    QString par5 = ISNIL(5)? 0 : hb_parc(5);
    int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
    RQSTRING( QFileDialog::getSaveFileName ( OPQWIDGET(1,0), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()), &par5, (QFileDialog::Options) par6 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QUrl getOpenFileUrl (QWidget *parent = 0, const QString &caption = QString(), const QUrl &dir = QUrl(), const QString &filter = QString(), QString *selectedFilter = 0, Options options = 0, const QStringList &supportedSchemes = QStringList())
*/
HB_FUNC_STATIC( QFILEDIALOG_GETOPENFILEURL )
{
  if( ISOPTQWIDGET(1) && ISOPTCHAR(2) && (ISQURL(3)||ISNIL(3)) && ISOPTCHAR(4) && ISOPTCHAR(5) && ISOPTNUM(6) && ISOPTARRAY(7) )
  {
    QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3);
    QString par5 = ISNIL(5)? 0 : hb_parc(5);
    int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
    QUrl * ptr = new QUrl( QFileDialog::getOpenFileUrl ( OPQWIDGET(1,0), OPQSTRING(2,QString()), par3, OPQSTRING(4,QString()), &par5, (QFileDialog::Options) par6, OPQSTRINGLIST(7,QStringList()) ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QUrl getSaveFileUrl (QWidget *parent = 0, const QString &caption = QString(), const QUrl &dir = QUrl(), const QString &filter = QString(), QString *selectedFilter = 0, Options options = 0, const QStringList &supportedSchemes = QStringList())
*/
HB_FUNC_STATIC( QFILEDIALOG_GETSAVEFILEURL )
{
  if( ISOPTQWIDGET(1) && ISOPTCHAR(2) && (ISQURL(3)||ISNIL(3)) && ISOPTCHAR(4) && ISOPTCHAR(5) && ISOPTNUM(6) && ISOPTARRAY(7) )
  {
    QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3);
    QString par5 = ISNIL(5)? 0 : hb_parc(5);
    int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
    QUrl * ptr = new QUrl( QFileDialog::getSaveFileUrl ( OPQWIDGET(1,0), OPQSTRING(2,QString()), par3, OPQSTRING(4,QString()), &par5, (QFileDialog::Options) par6, OPQSTRINGLIST(7,QStringList()) ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QUrl getExistingDirectoryUrl (QWidget *parent = 0, const QString &caption = QString(), const QUrl &dir = QUrl(), Options options = ShowDirsOnly, const QStringList &supportedSchemes = QStringList())
*/
HB_FUNC_STATIC( QFILEDIALOG_GETEXISTINGDIRECTORYURL )
{
  if( ISOPTQWIDGET(1) && ISOPTCHAR(2) && (ISQURL(3)||ISNIL(3)) && ISOPTNUM(4) && ISOPTARRAY(5) )
  {
    QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3);
    int par4 = ISNIL(4)? (int) QFileDialog::ShowDirsOnly : hb_parni(4);
    QUrl * ptr = new QUrl( QFileDialog::getExistingDirectoryUrl ( OPQWIDGET(1,0), OPQSTRING(2,QString()), par3, (QFileDialog::Options) par4, OPQSTRINGLIST(5,QStringList()) ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QList<QUrl> getOpenFileUrls (QWidget *parent = 0, const QString &caption = QString(), const QUrl &dir = QUrl(), const QString &filter = QString(), QString *selectedFilter = 0, Options options = 0, const QStringList &supportedSchemes = QStringList())
*/
HB_FUNC_STATIC( QFILEDIALOG_GETOPENFILEURLS )
{
  if( ISOPTQWIDGET(1) && ISOPTCHAR(2) && (ISQURL(3)||ISNIL(3)) && ISOPTCHAR(4) && ISOPTCHAR(5) && ISOPTNUM(6) && ISOPTARRAY(7) )
  {
    QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3);
    QString par5 = ISNIL(5)? 0 : hb_parc(5);
    int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
    QList<QUrl> list = QFileDialog::getOpenFileUrls ( OPQWIDGET(1,0), OPQSTRING(2,QString()), par3, OPQSTRING(4,QString()), &par5, (QFileDialog::Options) par6, OPQSTRINGLIST(7,QStringList()) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QURL" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QUrl *) new QUrl ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
