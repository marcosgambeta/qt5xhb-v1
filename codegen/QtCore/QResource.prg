$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
%%REQUEST UCHAR // TODO: corrigir
REQUEST QLOCALE
#endif

CLASS QResource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD absoluteFilePath
   METHOD data
   METHOD fileName
   METHOD isCompressed
   METHOD isValid
   METHOD locale
   METHOD setFileName
   METHOD setLocale
   METHOD size
   METHOD registerResource
   METHOD unregisterResource

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QResource ( const QString & file = QString(), const QLocale & locale = QLocale() )
*/
$constructor=|new|const QString &=QString(),const QLocale &=QLocale()

$deleteMethod

/*
QString absoluteFilePath () const
*/
$method=|QString|absoluteFilePath|

/*
const uchar * data () const
*/
$method=|const uchar *|data|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
bool isCompressed () const
*/
$method=|bool|isCompressed|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QLocale locale () const
*/
$method=|QLocale|locale|

/*
void setFileName ( const QString & file )
*/
$method=|void|setFileName|const QString &

/*
void setLocale ( const QLocale & locale )
*/
$method=|void|setLocale|const QLocale &

/*
qint64 size () const
*/
$method=|qint64|size|

/*
static bool registerResource ( const QString & rccFileName, const QString & mapRoot = QString() )
*/
$staticMethod=|bool|registerResource|const QString &,const QString &=QString()

/*
static bool unregisterResource ( const QString & rccFileName, const QString & mapRoot = QString() )
*/
$staticMethod=|bool|unregisterResource|const QString &,const QString &=QString()

$extraMethods

#pragma ENDDUMP
