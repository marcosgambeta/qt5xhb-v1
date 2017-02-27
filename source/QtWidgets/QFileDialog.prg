/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QFILEICONPROVIDER
REQUEST QABSTRACTITEMDELEGATE
REQUEST QABSTRACTPROXYMODEL
REQUEST QBYTEARRAY
REQUEST QDIR
REQUEST QURL
#endif

CLASS QFileDialog INHERIT QDialog

   DATA class_id INIT Class_Id_QFileDialog
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
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
   METHOD setDirectory1
   METHOD setDirectory2
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QFileDialog>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QFileDialog>
#endif
#endif

#include <QUrl>

/*
QFileDialog ( QWidget * parent, Qt::WindowFlags flags )
*/
HB_FUNC_STATIC( QFILEDIALOG_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QFileDialog * o = new QFileDialog ( par1,  (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QFileDialog ( QWidget * parent = 0, const QString & caption = QString(), const QString & directory = QString(), const QString & filter = QString() )
*/
HB_FUNC_STATIC( QFILEDIALOG_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QFileDialog * o = new QFileDialog ( par1, par2, par3, par4 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


//[1]QFileDialog ( QWidget * parent, Qt::WindowFlags flags )
//[2]explicit QFileDialog ( QWidget * parent = 0, const QString & caption = QString(), const QString & directory = QString(), const QString & filter = QString() )

HB_FUNC_STATIC( QFILEDIALOG_NEW )
{
  if( ISBETWEEN(1,2) && ISQWIDGET(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QFILEDIALOG_NEW1 );
  }
  else if( ISBETWEEN(0,4) && (ISQWIDGET(1)||ISNIL(1)) && (ISCHAR(2)||ISNIL(2)) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QFILEDIALOG_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFILEDIALOG_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
AcceptMode acceptMode () const
*/
HB_FUNC_STATIC( QFILEDIALOG_ACCEPTMODE )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->acceptMode (  ) );
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
    int par1 = hb_parni(1);
    obj->setAcceptMode (  (QFileDialog::AcceptMode) par1 );
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
    hb_retl( obj->confirmOverwrite (  ) );
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
    obj->setConfirmOverwrite ( (bool) hb_parl(1) );
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
    hb_retc( (const char *) obj->defaultSuffix (  ).toLatin1().data() );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDefaultSuffix ( par1 );
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
    hb_retni( obj->fileMode (  ) );
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
    int par1 = hb_parni(1);
    obj->setFileMode (  (QFileDialog::FileMode) par1 );
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
    hb_retni( obj->filter (  ) );
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
    int par1 = hb_parni(1);
    obj->setFilter (  (QDir::Filters) par1 );
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
    QStringList strl = obj->history (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    obj->setHistory ( par1 );
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
    QFileIconProvider * ptr = obj->iconProvider (  );
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
    QFileIconProvider * par1 = (QFileIconProvider *) _qt5xhb_itemGetPtr(1);
    obj->setIconProvider ( par1 );
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
    hb_retl( obj->isNameFilterDetailsVisible (  ) );
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
    obj->setNameFilterDetailsVisible ( (bool) hb_parl(1) );
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
    hb_retl( obj->isReadOnly (  ) );
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
    obj->setReadOnly ( (bool) hb_parl(1) );
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
    QAbstractItemDelegate * ptr = obj->itemDelegate (  );
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
    QAbstractItemDelegate * par1 = (QAbstractItemDelegate *) _qt5xhb_itemGetPtr(1);
    obj->setItemDelegate ( par1 );
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
    int par1 = hb_parni(1);
    hb_retc( (const char *) obj->labelText (  (QFileDialog::DialogLabel) par1 ).toLatin1().data() );
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
    int par1 = hb_parni(1);
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setLabelText (  (QFileDialog::DialogLabel) par1, par2 );
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
    QStringList strl = obj->nameFilters (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    obj->setNameFilters ( par1 );
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
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    const char * par2 = hb_parc(2);
    obj->open ( par1,  (const char *) par2 );
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
    hb_retni( obj->options (  ) );
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
    int par1 = hb_parni(1);
    obj->setOptions (  (QFileDialog::Options) par1 );
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
    QAbstractProxyModel * ptr = obj->proxyModel (  );
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
    QAbstractProxyModel * par1 = (QAbstractProxyModel *) _qt5xhb_itemGetPtr(1);
    obj->setProxyModel ( par1 );
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
    hb_retl( obj->resolveSymlinks (  ) );
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
    obj->setResolveSymlinks ( (bool) hb_parl(1) );
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
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->restoreState ( *par1 ) );
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
    QByteArray * ptr = new QByteArray( obj->saveState (  ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->selectFile ( par1 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->selectNameFilter ( par1 );
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
    QStringList strl = obj->selectedFiles (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
    hb_retc( (const char *) obj->selectedNameFilter (  ).toLatin1().data() );
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
    QDir * ptr = new QDir( obj->directory (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDIR", true );
  }
}

/*
void setDirectory ( const QString & directory )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETDIRECTORY1 )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDirectory ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDirectory ( const QDir & directory )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETDIRECTORY2 )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDir * par1 = (QDir *) _qt5xhb_itemGetPtr(1);
    obj->setDirectory ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setDirectory ( const QString & directory )
//[2]void setDirectory ( const QDir & directory )

HB_FUNC_STATIC( QFILEDIALOG_SETDIRECTORY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILEDIALOG_SETDIRECTORY1 );
  }
  else if( ISNUMPAR(1) && ISQDIR(1) )
  {
    HB_FUNC_EXEC( QFILEDIALOG_SETDIRECTORY2 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setNameFilter ( par1 );
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
    int par1 = hb_parni(1);
    obj->setOption (  (QFileDialog::Option) par1, (bool) ISNIL(2)? true : hb_parl(2) );
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
    QList<QUrl> list = obj->sidebarUrls (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QURL" );
    #else
    pDynSym = hb_dynsymFindName( "QURL" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
    int par1 = hb_parni(1);
    hb_retl( obj->testOption (  (QFileDialog::Option) par1 ) );
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
    hb_retni( obj->viewMode (  ) );
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
    int par1 = hb_parni(1);
    obj->setViewMode (  (QFileDialog::ViewMode) par1 );
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
    obj->setVisible ( (bool) hb_parl(1) );
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
    QUrl * ptr = new QUrl( obj->directoryUrl (  ) );
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
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->setDirectoryUrl ( *par1 );
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
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->selectUrl ( *par1 );
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
    QList<QUrl> list = obj->selectedUrls (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QURL" );
    #else
    pDynSym = hb_dynsymFindName( "QURL" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
    QStringList strl = obj->mimeTypeFilters (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    obj->setMimeTypeFilters ( par1 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->selectMimeTypeFilter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QString getExistingDirectory ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), Options options = ShowDirsOnly )
*/
HB_FUNC_STATIC( QFILEDIALOG_GETEXISTINGDIRECTORY )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  int par4 = ISNIL(4)? (int) QFileDialog::ShowDirsOnly : hb_parni(4);
  hb_retc( (const char *) QFileDialog::getExistingDirectory ( par1, par2, par3,  (QFileDialog::Options) par4 ).toLatin1().data() );
}


/*
static QString getOpenFileName (QWidget *parent = 0, const QString &caption = QString(), const QString &dir = QString(), const QString &filter = QString(), QString *selectedFilter = 0, Options options = 0)
*/
HB_FUNC_STATIC( QFILEDIALOG_GETOPENFILENAME )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QString par5 = ISNIL(5)? 0 : hb_parc(5);
  int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
  hb_retc( (const char *) QFileDialog::getOpenFileName ( par1, par2, par3, par4, &par5,  (QFileDialog::Options) par6 ).toLatin1().data() );
}


/*
static QStringList getOpenFileNames ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, Options options = 0 )
*/
HB_FUNC_STATIC( QFILEDIALOG_GETOPENFILENAMES )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QString par5 = ISNIL(5)? 0 : hb_parc(5);
  int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
  QStringList strl = QFileDialog::getOpenFileNames ( par1, par2, par3, par4, &par5,  (QFileDialog::Options) par6 );
  _qt5xhb_convert_qstringlist_to_array ( strl );
}


/*
static QString getSaveFileName (QWidget *parent = 0, const QString &caption = QString(), const QString &dir = QString(), const QString &filter = QString(), QString *selectedFilter = 0, Options options = 0)
*/
HB_FUNC_STATIC( QFILEDIALOG_GETSAVEFILENAME )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QString par5 = ISNIL(5)? 0 : hb_parc(5);
  int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
  hb_retc( (const char *) QFileDialog::getSaveFileName ( par1, par2, par3, par4, &par5,  (QFileDialog::Options) par6 ).toLatin1().data() );
}


/*
static QUrl getOpenFileUrl (QWidget *parent = 0, const QString &caption = QString(), const QUrl &dir = QUrl(), const QString &filter = QString(), QString *selectedFilter = 0, Options options = 0, const QStringList &supportedSchemes = QStringList())
*/
HB_FUNC_STATIC( QFILEDIALOG_GETOPENFILEURL )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3);
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QString par5 = ISNIL(5)? 0 : hb_parc(5);
  int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
QStringList par7;
PHB_ITEM aStrings7 = hb_param(7, HB_IT_ARRAY);
int i7;
int nLen7 = hb_arrayLen(aStrings7);
for (i7=0;i7<nLen7;i7++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings7, i7+1) );
par7 << temp;
}
  QUrl * ptr = new QUrl( QFileDialog::getOpenFileUrl ( par1, par2, par3, par4, &par5,  (QFileDialog::Options) par6, par7 ) );
  _qt5xhb_createReturnClass ( ptr, "QURL", true );
}


/*
static QUrl getSaveFileUrl (QWidget *parent = 0, const QString &caption = QString(), const QUrl &dir = QUrl(), const QString &filter = QString(), QString *selectedFilter = 0, Options options = 0, const QStringList &supportedSchemes = QStringList())
*/
HB_FUNC_STATIC( QFILEDIALOG_GETSAVEFILEURL )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3);
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QString par5 = ISNIL(5)? 0 : hb_parc(5);
  int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
QStringList par7;
PHB_ITEM aStrings7 = hb_param(7, HB_IT_ARRAY);
int i7;
int nLen7 = hb_arrayLen(aStrings7);
for (i7=0;i7<nLen7;i7++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings7, i7+1) );
par7 << temp;
}
  QUrl * ptr = new QUrl( QFileDialog::getSaveFileUrl ( par1, par2, par3, par4, &par5,  (QFileDialog::Options) par6, par7 ) );
  _qt5xhb_createReturnClass ( ptr, "QURL", true );
}


/*
static QUrl getExistingDirectoryUrl (QWidget *parent = 0, const QString &caption = QString(), const QUrl &dir = QUrl(), Options options = ShowDirsOnly, const QStringList &supportedSchemes = QStringList())
*/
HB_FUNC_STATIC( QFILEDIALOG_GETEXISTINGDIRECTORYURL )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3);
  int par4 = ISNIL(4)? (int) QFileDialog::ShowDirsOnly : hb_parni(4);
QStringList par5;
PHB_ITEM aStrings5 = hb_param(5, HB_IT_ARRAY);
int i5;
int nLen5 = hb_arrayLen(aStrings5);
for (i5=0;i5<nLen5;i5++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings5, i5+1) );
par5 << temp;
}
  QUrl * ptr = new QUrl( QFileDialog::getExistingDirectoryUrl ( par1, par2, par3,  (QFileDialog::Options) par4, par5 ) );
  _qt5xhb_createReturnClass ( ptr, "QURL", true );
}


/*
static QList<QUrl> getOpenFileUrls (QWidget *parent = 0, const QString &caption = QString(), const QUrl &dir = QUrl(),       const QString &filter = QString(), QString *selectedFilter = 0, Options options = 0, const QStringList &supportedSchemes = QStringList())
*/
HB_FUNC_STATIC( QFILEDIALOG_GETOPENFILEURLS )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3);
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QString par5 = ISNIL(5)? 0 : hb_parc(5);
  int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
QStringList par7;
PHB_ITEM aStrings7 = hb_param(7, HB_IT_ARRAY);
int i7;
int nLen7 = hb_arrayLen(aStrings7);
for (i7=0;i7<nLen7;i7++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings7, i7+1) );
par7 << temp;
}
  QList<QUrl> list = QFileDialog::getOpenFileUrls ( par1, par2, par3, par4, &par5,  (QFileDialog::Options) par6, par7 );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QURL" );
  #else
  pDynSym = hb_dynsymFindName( "QURL" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
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




#pragma ENDDUMP
