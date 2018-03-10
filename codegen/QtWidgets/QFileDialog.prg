%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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
#include <QAbstractItemDelegate>
#include <QAbstractProxyModel>

$prototype=QFileDialog ( QWidget * parent, Qt::WindowFlags flags )
$internalConstructor=|new1|QWidget *,Qt::WindowFlags

$prototype=QFileDialog ( QWidget * parent = 0, const QString & caption = QString(), const QString & directory = QString(), const QString & filter = QString() )
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

$prototype=AcceptMode acceptMode () const
$method=|QFileDialog::AcceptMode|acceptMode|

$prototype=void setAcceptMode ( AcceptMode mode )
$method=|void|setAcceptMode|QFileDialog::AcceptMode

$prototype=bool confirmOverwrite () const
$method=|bool|confirmOverwrite|

$prototype=void setConfirmOverwrite ( bool enabled )
$method=|void|setConfirmOverwrite|bool

$prototype=QString defaultSuffix () const
$method=|QString|defaultSuffix|

$prototype=void setDefaultSuffix ( const QString & suffix )
$method=|void|setDefaultSuffix|const QString &

$prototype=FileMode fileMode () const
$method=|QFileDialog::FileMode|fileMode|

$prototype=void setFileMode ( FileMode mode )
$method=|void|setFileMode|QFileDialog::FileMode

$prototype=QDir::Filters filter () const
$method=|QDir::Filters|filter|

$prototype=void setFilter ( QDir::Filters filters )
$method=|void|setFilter|QDir::Filters

$prototype=QStringList history () const
$method=|QStringList|history|

$prototype=void setHistory ( const QStringList & paths )
$method=|void|setHistory|const QStringList &

$prototype=QFileIconProvider * iconProvider () const
$method=|QFileIconProvider *|iconProvider|

$prototype=void setIconProvider ( QFileIconProvider * provider )
$method=|void|setIconProvider|QFileIconProvider *

$prototype=bool isNameFilterDetailsVisible () const
$method=|bool|isNameFilterDetailsVisible|

$prototype=void setNameFilterDetailsVisible ( bool enabled )
$method=|void|setNameFilterDetailsVisible|bool

$prototype=bool isReadOnly () const
$method=|bool|isReadOnly|

$prototype=void setReadOnly ( bool enabled )
$method=|void|setReadOnly|bool

$prototype=QAbstractItemDelegate * itemDelegate () const
$method=|QAbstractItemDelegate *|itemDelegate|

$prototype=void setItemDelegate ( QAbstractItemDelegate * delegate )
$method=|void|setItemDelegate|QAbstractItemDelegate *

$prototype=QString labelText ( DialogLabel label ) const
$method=|QString|labelText|QFileDialog::DialogLabel

$prototype=void setLabelText ( DialogLabel label, const QString & text )
$method=|void|setLabelText|QFileDialog::DialogLabel,const QString &

$prototype=QStringList nameFilters () const
$method=|QStringList|nameFilters|

$prototype=void setNameFilters ( const QStringList & filters )
$method=|void|setNameFilters|const QStringList &

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototype=Options options () const
$method=|QFileDialog::Options|options|

$prototype=void setOptions ( Options options )
$method=|void|setOptions|QFileDialog::Options

$prototype=QAbstractProxyModel * proxyModel () const
$method=|QAbstractProxyModel *|proxyModel||#ifndef QT_NO_PROXYMODEL

$prototype=void setProxyModel ( QAbstractProxyModel * proxyModel )
$method=|void|setProxyModel|QAbstractProxyModel *|#ifndef QT_NO_PROXYMODEL

$prototype=bool resolveSymlinks () const
$method=|bool|resolveSymlinks|

$prototype=void setResolveSymlinks ( bool enabled )
$method=|void|setResolveSymlinks|bool

$prototype=bool restoreState ( const QByteArray & state )
$method=|bool|restoreState|const QByteArray &

$prototype=QByteArray saveState () const
$method=|QByteArray|saveState|

$prototype=void selectFile ( const QString & filename )
$method=|void|selectFile|const QString &

$prototype=void selectNameFilter ( const QString & filter )
$method=|void|selectNameFilter|const QString &

$prototype=QStringList selectedFiles () const
$method=|QStringList|selectedFiles|

$prototype=QString selectedNameFilter () const
$method=|QString|selectedNameFilter|

$prototype=QDir directory () const
$method=|QDir|directory|

$prototype=void setDirectory ( const QString & directory )
$internalMethod=|void|setDirectory,setDirectory1|const QString &

$prototype=void setDirectory ( const QDir & directory )
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

$prototype=void setNameFilter ( const QString & filter )
$method=|void|setNameFilter|const QString &

$prototype=void setOption ( Option option, bool on = true )
$method=|void|setOption|QFileDialog::Option,bool=true

$prototype=QList<QUrl> sidebarUrls () const
$method=|QList<QUrl>|sidebarUrls|

$prototype=void setSidebarUrls ( const QList<QUrl> & urls )
$method=|void|setSidebarUrls|const QList<QUrl> &

$prototype=bool testOption ( Option option ) const
$method=|bool|testOption|QFileDialog::Option

$prototype=ViewMode viewMode () const
$method=|QFileDialog::ViewMode|viewMode|

$prototype=void setViewMode ( ViewMode mode )
$method=|void|setViewMode|QFileDialog::ViewMode

$prototype=void setVisible ( bool visible )
$method=|void|setVisible|bool

$prototype=QUrl directoryUrl() const
$method=|QUrl|directoryUrl|

$prototype=void setDirectoryUrl(const QUrl &directory)
$method=|void|setDirectoryUrl|const QUrl &

$prototype=void selectUrl(const QUrl &url)
$method=|void|selectUrl|const QUrl &

$prototype=QList<QUrl> selectedUrls() const
$method=|QList<QUrl>|selectedUrls|

$prototype=QStringList mimeTypeFilters() const
$method=|QStringList|mimeTypeFilters|

$prototype=void setMimeTypeFilters(const QStringList &filters)
$method=|void|setMimeTypeFilters|const QStringList &

$prototype=void selectMimeTypeFilter(const QString &filter)
$method=|void|selectMimeTypeFilter|const QString &

$prototype=static QString getExistingDirectory ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), Options options = ShowDirsOnly )
$staticMethod=|QString|getExistingDirectory|QWidget *=0,const QString &=QString(),const QString &=QString(),QFileDialog::Options=QFileDialog::ShowDirsOnly

$prototype=static QString getOpenFileName (QWidget *parent = 0, const QString &caption = QString(), const QString &dir = QString(), const QString &filter = QString(), QString *selectedFilter = 0, Options options = 0)
$staticMethod=|QString|getOpenFileName|QWidget *=0,const QString &=QString(),const QString &=QString(),const QString &=QString(),QString *=0,QFileDialog::Options=0

$prototype=static QStringList getOpenFileNames ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, Options options = 0 )
$staticMethod=|QStringList|getOpenFileNames|QWidget *=0,const QString &=QString(),const QString &=QString(),const QString &=QString(),QString *=0,QFileDialog::Options=0

$prototype=static QString getSaveFileName (QWidget *parent = 0, const QString &caption = QString(), const QString &dir = QString(), const QString &filter = QString(), QString *selectedFilter = 0, Options options = 0)
$staticMethod=|QString|getSaveFileName|QWidget *=0,const QString &=QString(),const QString &=QString(),const QString &=QString(),QString *=0,QFileDialog::Options=0

$prototype=static QUrl getOpenFileUrl (QWidget *parent = 0, const QString &caption = QString(), const QUrl &dir = QUrl(), const QString &filter = QString(), QString *selectedFilter = 0, Options options = 0, const QStringList &supportedSchemes = QStringList())
$staticMethod=|QUrl|getOpenFileUrl|QWidget *=0,const QString &=QString(),const QUrl &=QUrl(),const QString &=QString(),QString *=0,QFileDialog::Options=0,const QStringList &=QStringList()

$prototype=static QUrl getSaveFileUrl (QWidget *parent = 0, const QString &caption = QString(), const QUrl &dir = QUrl(), const QString &filter = QString(), QString *selectedFilter = 0, Options options = 0, const QStringList &supportedSchemes = QStringList())
$staticMethod=|QUrl|getSaveFileUrl|QWidget *=0,const QString &=QString(),const QUrl &=QUrl(),const QString &=QString(),QString *=0,QFileDialog::Options=0,const QStringList &=QStringList()

$prototype=static QUrl getExistingDirectoryUrl (QWidget *parent = 0, const QString &caption = QString(), const QUrl &dir = QUrl(), Options options = ShowDirsOnly, const QStringList &supportedSchemes = QStringList())
$staticMethod=|QUrl|getExistingDirectoryUrl|QWidget *=0,const QString &=QString(),const QUrl &=QUrl(),QFileDialog::Options=QFileDialog::ShowDirsOnly,const QStringList &=QStringList()

$prototype=static QList<QUrl> getOpenFileUrls (QWidget *parent = 0, const QString &caption = QString(), const QUrl &dir = QUrl(), const QString &filter = QString(), QString *selectedFilter = 0, Options options = 0, const QStringList &supportedSchemes = QStringList())
$staticMethod=|QList<QUrl>|getOpenFileUrls|QWidget *=0,const QString &=QString(),const QUrl &=QUrl(),const QString &=QString(),QString *=0,QFileDialog::Options=0,const QStringList &=QStringList()

$beginSignals
$signalMethod=|currentChanged(QString)
$signalMethod=|directoryEntered(QString)
$signalMethod=|fileSelected(QString)
$signalMethod=|filesSelected(QStringList)
$signalMethod=|filterSelected(QString)
$signalMethod=|urlSelected(QUrl)
$signalMethod=|urlsSelected(QList<QUrl>)
$signalMethod=|currentUrlChanged(QUrl)
$signalMethod=|directoryUrlEntered(QUrl)
$endSignals

#pragma ENDDUMP
