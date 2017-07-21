$header

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

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>

/*
QFileDialog ( QWidget * parent, Qt::WindowFlags flags )
*/
$internalConstructor=|new1|QWidget *,Qt::WindowFlags

/*
QFileDialog ( QWidget * parent = 0, const QString & caption = QString(), const QString & directory = QString(), const QString & filter = QString() )
*/
$internalConstructor=|new2|QWidget *=0,const QString &=QString(),const QString &=QString(),const QString &=QString()

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

$deleteMethod

/*
AcceptMode acceptMode () const
*/
$method=|QFileDialog::AcceptMode|acceptMode|

/*
void setAcceptMode ( AcceptMode mode )
*/
$method=|void|setAcceptMode|QFileDialog::AcceptMode

/*
bool confirmOverwrite () const
*/
$method=|bool|confirmOverwrite|

/*
void setConfirmOverwrite ( bool enabled )
*/
$method=|void|setConfirmOverwrite|bool

/*
QString defaultSuffix () const
*/
$method=|QString|defaultSuffix|

/*
void setDefaultSuffix ( const QString & suffix )
*/
$method=|void|setDefaultSuffix|const QString &

/*
FileMode fileMode () const
*/
$method=|QFileDialog::FileMode|fileMode|

/*
void setFileMode ( FileMode mode )
*/
$method=|void|setFileMode|QFileDialog::FileMode

/*
QDir::Filters filter () const
*/
$method=|QDir::Filters|filter|

/*
void setFilter ( QDir::Filters filters )
*/
$method=|void|setFilter|QDir::Filters

/*
QStringList history () const
*/
$method=|QStringList|history|

/*
void setHistory ( const QStringList & paths )
*/
$method=|void|setHistory|const QStringList &

/*
QFileIconProvider * iconProvider () const
*/
$method=|QFileIconProvider *|iconProvider|

/*
void setIconProvider ( QFileIconProvider * provider )
*/
$method=|void|setIconProvider|QFileIconProvider *

/*
bool isNameFilterDetailsVisible () const
*/
$method=|bool|isNameFilterDetailsVisible|

/*
void setNameFilterDetailsVisible ( bool enabled )
*/
$method=|void|setNameFilterDetailsVisible|bool

/*
bool isReadOnly () const
*/
$method=|bool|isReadOnly|

/*
void setReadOnly ( bool enabled )
*/
$method=|void|setReadOnly|bool

/*
QAbstractItemDelegate * itemDelegate () const
*/
$method=|QAbstractItemDelegate *|itemDelegate|

/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
$method=|void|setItemDelegate|QAbstractItemDelegate *

/*
QString labelText ( DialogLabel label ) const
*/
$method=|QString|labelText|QFileDialog::DialogLabel

/*
void setLabelText ( DialogLabel label, const QString & text )
*/
$method=|void|setLabelText|QFileDialog::DialogLabel,const QString &

/*
QStringList nameFilters () const
*/
$method=|QStringList|nameFilters|

/*
void setNameFilters ( const QStringList & filters )
*/
$method=|void|setNameFilters|const QStringList &

/*
void open ( QObject * receiver, const char * member )
*/
$method=|void|open|QObject *,const char *

/*
Options options () const
*/
$method=|QFileDialog::Options|options|

/*
void setOptions ( Options options )
*/
$method=|void|setOptions|QFileDialog::Options

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
$method=|bool|resolveSymlinks|

/*
void setResolveSymlinks ( bool enabled )
*/
$method=|void|setResolveSymlinks|bool

/*
bool restoreState ( const QByteArray & state )
*/
$method=|bool|restoreState|const QByteArray &

/*
QByteArray saveState () const
*/
$method=|QByteArray|saveState|

/*
void selectFile ( const QString & filename )
*/
$method=|void|selectFile|const QString &

/*
void selectNameFilter ( const QString & filter )
*/
$method=|void|selectNameFilter|const QString &

/*
QStringList selectedFiles () const
*/
$method=|QStringList|selectedFiles|

/*
QString selectedNameFilter () const
*/
$method=|QString|selectedNameFilter|

/*
QDir directory () const
*/
$method=|QDir|directory|

/*
void setDirectory ( const QString & directory )
*/
$internalMethod=|void|setDirectory,setDirectory1|const QString &

/*
void setDirectory ( const QDir & directory )
*/
$internalMethod=|void|setDirectory,setDirectory2|const QDir &

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
$method=|void|setNameFilter|const QString &

/*
void setOption ( Option option, bool on = true )
*/
$method=|void|setOption|QFileDialog::Option,bool=true

/*
QList<QUrl> sidebarUrls () const
*/
HB_FUNC_STATIC( QFILEDIALOG_SIDEBARURLS )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QUrl> list = obj->sidebarUrls ();
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
$method=|bool|testOption|QFileDialog::Option

/*
ViewMode viewMode () const
*/
$method=|QFileDialog::ViewMode|viewMode|

/*
void setViewMode ( ViewMode mode )
*/
$method=|void|setViewMode|QFileDialog::ViewMode

/*
void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
QUrl directoryUrl() const
*/
$method=|QUrl|directoryUrl|

/*
void setDirectoryUrl(const QUrl &directory)
*/
$method=|void|setDirectoryUrl|const QUrl &

/*
void selectUrl(const QUrl &url)
*/
$method=|void|selectUrl|const QUrl &

/*
QList<QUrl> selectedUrls() const
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTEDURLS )
{
  QFileDialog * obj = (QFileDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QUrl> list = obj->selectedUrls ();
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
$method=|QStringList|mimeTypeFilters|

/*
void setMimeTypeFilters(const QStringList &filters)
*/
$method=|void|setMimeTypeFilters|const QStringList &

/*
void selectMimeTypeFilter(const QString &filter)
*/
$method=|void|selectMimeTypeFilter|const QString &

/*
static QString getExistingDirectory ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), Options options = ShowDirsOnly )
*/
$staticMethod=|QString|getExistingDirectory|QWidget *=0,const QString &=QString(),const QString &=QString(),QFileDialog::Options=QFileDialog::ShowDirsOnly

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
