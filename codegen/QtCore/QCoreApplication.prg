$header

#include "hbclass.ch"

CLASS QCoreApplication INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD notify
   METHOD quit
   METHOD addLibraryPath
   METHOD applicationDirPath
   METHOD applicationFilePath
   METHOD applicationName
   METHOD applicationPid
   METHOD applicationVersion
   METHOD arguments
   METHOD closingDown
   METHOD exec
   METHOD exit
   METHOD flush
   METHOD hasPendingEvents
   METHOD installTranslator
   METHOD instance
   METHOD libraryPaths
   METHOD organizationDomain
   METHOD organizationName
   METHOD postEvent
   METHOD processEvents
   METHOD removeLibraryPath
   METHOD removePostedEvents
   METHOD removeTranslator
   METHOD sendEvent
   METHOD sendPostedEvents
   METHOD setApplicationName
   METHOD setApplicationVersion
   METHOD setAttribute
   METHOD setLibraryPaths
   METHOD setOrganizationDomain
   METHOD setOrganizationName
   METHOD startingUp
   METHOD testAttribute
   METHOD translate

   METHOD onAboutToQuit

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

/*
QCoreApplication ( int & argc, char ** argv )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_NEW ) // TODO: implementar(?) outros construtores e checagem de parametros
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QCoreApplication * o = NULL;
  o = new QCoreApplication( argc, argv );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
virtual bool notify ( QObject * receiver, QEvent * event )
*/
$method=|bool|notify|QObject *,QEvent *

/*
void quit ()
*/
$method=|void|quit|

/*
static void addLibraryPath ( const QString & path )
*/
$staticMethod=|void|addLibraryPath|const QString &

/*
static QString applicationDirPath ()
*/
$staticMethod=|QString|applicationDirPath|

/*
static QString applicationFilePath ()
*/
$staticMethod=|QString|applicationFilePath|

/*
static QString applicationName ()
*/
$staticMethod=|QString|applicationName|

/*
static qint64 applicationPid ()
*/
$staticMethod=|qint64|applicationPid|

/*
static QString applicationVersion ()
*/
$staticMethod=|QString|applicationVersion|

/*
static QStringList arguments ()
*/
$staticMethod=|QStringList|arguments|

/*
static bool closingDown ()
*/
$staticMethod=|bool|closingDown|

/*
static int exec ()
*/
$staticMethod=|int|exec|

/*
static void exit ( int returnCode = 0 )
*/
$staticMethod=|void|exit|int=0

/*
static void flush ()
*/
$staticMethod=|void|flush|

/*
static bool hasPendingEvents ()
*/
$staticMethod=|bool|hasPendingEvents|

/*
static void installTranslator ( QTranslator * translationFile )
*/
$staticMethod=|void|installTranslator|QTranslator *

/*
static QCoreApplication * instance ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_INSTANCE )
{
  QCoreApplication * ptr = QCoreApplication::instance ();
  _qt5xhb_createReturnClass ( ptr, "QCOREAPPLICATION" );
}

/*
static QStringList libraryPaths ()
*/
$staticMethod=|QStringList|libraryPaths|

/*
static QString organizationDomain ()
*/
$staticMethod=|QString|organizationDomain|

/*
static QString organizationName ()
*/
$staticMethod=|QString|organizationName|

/*
static void postEvent ( QObject * receiver, QEvent * event )
*/
void QCoreApplication_postEvent1 ()
{
  QCoreApplication::postEvent ( PQOBJECT(1), PQEVENT(2) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void postEvent ( QObject * receiver, QEvent * event, int priority )
*/
void QCoreApplication_postEvent2 ()
{
  QCoreApplication::postEvent ( PQOBJECT(1), PQEVENT(2), PINT(3) );
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void postEvent ( QObject * receiver, QEvent * event )
//[2]void postEvent ( QObject * receiver, QEvent * event, int priority )

HB_FUNC_STATIC( QCOREAPPLICATION_POSTEVENT )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISOBJECT(2) )
  {
    QCoreApplication_postEvent1();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISOBJECT(2) && ISNUM(3) )
  {
    QCoreApplication_postEvent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void processEvents ( QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents )
*/
void QCoreApplication_processEvents1 ()
{
  int par1 = ISNIL(1)? (int) QEventLoop::AllEvents : hb_parni(1);
  QCoreApplication::processEvents ( (QEventLoop::ProcessEventsFlags) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void processEvents ( QEventLoop::ProcessEventsFlags flags, int maxtime )
*/
void QCoreApplication_processEvents2 ()
{
  int par1 = hb_parni(1);
  QCoreApplication::processEvents ( (QEventLoop::ProcessEventsFlags) par1, PINT(2) );
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void processEvents ( QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents )
//[2]void processEvents ( QEventLoop::ProcessEventsFlags flags, int maxtime )

HB_FUNC_STATIC( QCOREAPPLICATION_PROCESSEVENTS )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QCoreApplication_processEvents1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QCoreApplication_processEvents2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void removeLibraryPath ( const QString & path )
*/
$staticMethod=|void|removeLibraryPath|const QString &

/*
static void removePostedEvents ( QObject * receiver )
*/
void QCoreApplication_removePostedEvents1 ()
{
  QCoreApplication::removePostedEvents ( PQOBJECT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void removePostedEvents ( QObject * receiver, int eventType )
*/
void QCoreApplication_removePostedEvents2 ()
{
  QCoreApplication::removePostedEvents ( PQOBJECT(1), PINT(2) );
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void removePostedEvents ( QObject * receiver )
//[2]void removePostedEvents ( QObject * receiver, int eventType )

HB_FUNC_STATIC( QCOREAPPLICATION_REMOVEPOSTEDEVENTS )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QCoreApplication_removePostedEvents1();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    QCoreApplication_removePostedEvents2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void removeTranslator ( QTranslator * translationFile )
*/
$staticMethod=|void|removeTranslator|QTranslator *

/*
static bool sendEvent ( QObject * receiver, QEvent * event )
*/
$staticMethod=|bool|sendEvent|QObject *,QEvent *

/*
static void sendPostedEvents ( QObject * receiver, int event_type )
*/
void QCoreApplication_sendPostedEvents1 ()
{
  QCoreApplication::sendPostedEvents ( PQOBJECT(1), PINT(2) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void sendPostedEvents ()
*/
void QCoreApplication_sendPostedEvents2 ()
{
  QCoreApplication::sendPostedEvents ();
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void sendPostedEvents ( QObject * receiver, int event_type )
//[2]void sendPostedEvents ()

HB_FUNC_STATIC( QCOREAPPLICATION_SENDPOSTEDEVENTS )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    QCoreApplication_sendPostedEvents1();
  }
  else if( ISNUMPAR(0) )
  {
    QCoreApplication_sendPostedEvents2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setApplicationName ( const QString & application )
*/
$staticMethod=|void|setApplicationName|const QString &

/*
static void setApplicationVersion ( const QString & version )
*/
$staticMethod=|void|setApplicationVersion|const QString &

/*
static void setAttribute ( Qt::ApplicationAttribute attribute, bool on = true )
*/
$staticMethod=|void|setAttribute|Qt::ApplicationAttribute,bool=true

/*
static void setLibraryPaths ( const QStringList & paths )
*/
$staticMethod=|void|setLibraryPaths|const QStringList &

/*
static void setOrganizationDomain ( const QString & orgDomain )
*/
$staticMethod=|void|setOrganizationDomain|const QString &

/*
static void setOrganizationName ( const QString & orgName )
*/
$staticMethod=|void|setOrganizationName|const QString &

/*
static bool startingUp ()
*/
$staticMethod=|bool|startingUp|

/*
static bool testAttribute ( Qt::ApplicationAttribute attribute )
*/
$staticMethod=|bool|testAttribute|Qt::ApplicationAttribute

/*
static QString translate(const char * context, const char * sourceText, const char * disambiguation = 0, int n = -1)
*/
HB_FUNC_STATIC( QCOREAPPLICATION_TRANSLATE )
{
  if( ISCHAR(1) && ISCHAR(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
    RQSTRING( QCoreApplication::translate ( PCONSTCHAR(1), PCONSTCHAR(2), OPCONSTCHAR(3,0), OPINT(4,-1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
