$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QBYTEARRAY
REQUEST QURL
#endif

CLASS QHelpEngineCore INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addCustomFilter
   METHOD autoSaveFilter
   METHOD collectionFile
   METHOD copyCollectionFile
   METHOD currentFilter
   METHOD customFilters
   METHOD customValue
   METHOD documentationFileName
   METHOD error
   METHOD fileData
   METHOD filterAttributes
   METHOD findFile
   METHOD registerDocumentation
   METHOD registeredDocumentations
   METHOD removeCustomFilter
   METHOD removeCustomValue
   METHOD setAutoSaveFilter
   METHOD setCollectionFile
   METHOD setCurrentFilter
   METHOD setCustomValue
   METHOD setupData
   METHOD unregisterDocumentation
   METHOD metaData
   METHOD namespaceName

   METHOD onCurrentFilterChanged
   METHOD onSetupFinished
   METHOD onSetupStarted
   METHOD onWarning

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

/*
QHelpEngineCore ( const QString & collectionFile, QObject * parent = 0 )
*/
$constructor=|new|const QString &,QObject *=0

$deleteMethod

/*
bool addCustomFilter ( const QString & filterName, const QStringList & attributes )
*/
$method=|bool|addCustomFilter|const QString &,const QStringList &

/*
bool autoSaveFilter () const
*/
$method=|bool|autoSaveFilter|

/*
QString collectionFile () const
*/
$method=|QString|collectionFile|

/*
bool copyCollectionFile ( const QString & fileName )
*/
$method=|bool|copyCollectionFile|const QString &

/*
QString currentFilter () const
*/
$method=|QString|currentFilter|

/*
QStringList customFilters () const
*/
$method=|QStringList|customFilters|

/*
QVariant customValue ( const QString & key, const QVariant & defaultValue = QVariant() ) const
*/
$method=|QVariant|customValue|const QString &,const QVariant &=QVariant()

/*
QString documentationFileName ( const QString & namespaceName )
*/
$method=|QString|documentationFileName|const QString &

/*
QString error () const
*/
$method=|QString|error|

/*
QByteArray fileData ( const QUrl & url ) const
*/
$method=|QByteArray|fileData|const QUrl &

/*
QStringList filterAttributes () const
*/
$internalMethod=|QStringList|filterAttributes,filterAttributes1|

/*
QStringList filterAttributes ( const QString & filterName ) const
*/
$internalMethod=|QStringList|filterAttributes,filterAttributes2|const QString &

//[1]QStringList filterAttributes () const
//[2]QStringList filterAttributes ( const QString & filterName ) const

HB_FUNC_STATIC( QHELPENGINECORE_FILTERATTRIBUTES )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QHELPENGINECORE_FILTERATTRIBUTES1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QHELPENGINECORE_FILTERATTRIBUTES2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QUrl findFile ( const QUrl & url ) const
*/
$method=|QUrl|findFile|const QUrl &

/*
bool registerDocumentation ( const QString & documentationFileName )
*/
$method=|bool|registerDocumentation|const QString &

/*
QStringList registeredDocumentations () const
*/
$method=|QStringList|registeredDocumentations|

/*
bool removeCustomFilter ( const QString & filterName )
*/
$method=|bool|removeCustomFilter|const QString &

/*
bool removeCustomValue ( const QString & key )
*/
$method=|bool|removeCustomValue|const QString &

/*
void setAutoSaveFilter ( bool save )
*/
$method=|void|setAutoSaveFilter|bool

/*
void setCollectionFile ( const QString & fileName )
*/
$method=|void|setCollectionFile|const QString &

/*
void setCurrentFilter ( const QString & filterName )
*/
$method=|void|setCurrentFilter|const QString &

/*
bool setCustomValue ( const QString & key, const QVariant & value )
*/
$method=|bool|setCustomValue|const QString &,const QVariant &

/*
bool setupData ()
*/
$method=|bool|setupData|

/*
bool unregisterDocumentation ( const QString & namespaceName )
*/
$method=|bool|unregisterDocumentation|const QString &

/*
static QVariant metaData ( const QString & documentationFileName, const QString & name )
*/
$staticMethod=|QVariant|metaData|const QString &,const QString &

/*
static QString namespaceName ( const QString & documentationFileName )
*/
$staticMethod=|QString|namespaceName|const QString &

#pragma ENDDUMP
