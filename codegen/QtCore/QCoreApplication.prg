%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

$prototype=QCoreApplication ( int & argc, char ** argv )
HB_FUNC_STATIC( QCOREAPPLICATION_NEW ) // TODO: implementar(?) outros construtores e checagem de parametros
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QCoreApplication * o = NULL;
  o = new QCoreApplication( argc, argv );
  _qt5xhb_returnNewObject( o, false );
}
$addMethod=new

$deleteMethod

$prototype=virtual bool notify ( QObject * receiver, QEvent * event )
$virtualMethod=|bool|notify|QObject *,QEvent *

$prototype=void quit ()
$method=|void|quit|

$prototype=static void addLibraryPath ( const QString & path )
$staticMethod=|void|addLibraryPath|const QString &

$prototype=static QString applicationDirPath ()
$staticMethod=|QString|applicationDirPath|

$prototype=static QString applicationFilePath ()
$staticMethod=|QString|applicationFilePath|

$prototype=static QString applicationName ()
$staticMethod=|QString|applicationName|

$prototype=static qint64 applicationPid ()
$staticMethod=|qint64|applicationPid|

$prototype=static QString applicationVersion ()
$staticMethod=|QString|applicationVersion|

$prototype=static QStringList arguments ()
$staticMethod=|QStringList|arguments|

$prototype=static bool closingDown ()
$staticMethod=|bool|closingDown|

$prototype=static int exec ()
$staticMethod=|int|exec|

$prototype=static void exit ( int returnCode = 0 )
$staticMethod=|void|exit|int=0

$prototype=static void flush ()
$staticMethod=|void|flush|

$prototype=static bool hasPendingEvents ()
$staticMethod=|bool|hasPendingEvents|

$prototype=static void installTranslator ( QTranslator * translationFile )
$staticMethod=|void|installTranslator|QTranslator *

$prototype=static QCoreApplication * instance ()
$staticMethod=|QCoreApplication *|instance|

$prototype=static QStringList libraryPaths ()
$staticMethod=|QStringList|libraryPaths|

$prototype=static QString organizationDomain ()
$staticMethod=|QString|organizationDomain|

$prototype=static QString organizationName ()
$staticMethod=|QString|organizationName|

$prototype=static void postEvent ( QObject * receiver, QEvent * event )
$internalStaticMethod=|void|postEvent,postEvent1|QObject *,QEvent *

$prototype=static void postEvent ( QObject * receiver, QEvent * event, int priority )
$internalStaticMethod=|void|postEvent,postEvent2|QObject *,QEvent *,int

//[1]void postEvent ( QObject * receiver, QEvent * event )
//[2]void postEvent ( QObject * receiver, QEvent * event, int priority )

HB_FUNC_STATIC( QCOREAPPLICATION_POSTEVENT )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISQEVENT(2) )
  {
    QCoreApplication_postEvent1();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISQEVENT(2) && ISNUM(3) )
  {
    QCoreApplication_postEvent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=postEvent

$prototype=static void processEvents ( QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents )
$internalStaticMethod=|void|processEvents,processEvents1|QEventLoop::ProcessEventsFlags=QEventLoop::AllEvents

$prototype=static void processEvents ( QEventLoop::ProcessEventsFlags flags, int maxtime )
$internalStaticMethod=|void|processEvents,processEvents2|QEventLoop::ProcessEventsFlags,int

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
$addMethod=processEvents

$prototype=static void removeLibraryPath ( const QString & path )
$staticMethod=|void|removeLibraryPath|const QString &

$prototype=static void removePostedEvents ( QObject * receiver )
$internalStaticMethod=|void|removePostedEvents,removePostedEvents1|QObject *

$prototype=static void removePostedEvents ( QObject * receiver, int eventType )
$internalStaticMethod=|void|removePostedEvents,removePostedEvents2|QObject *,int

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
$addMethod=removePostedEvents

$prototype=static void removeTranslator ( QTranslator * translationFile )
$staticMethod=|void|removeTranslator|QTranslator *

$prototype=static bool sendEvent ( QObject * receiver, QEvent * event )
$staticMethod=|bool|sendEvent|QObject *,QEvent *

$prototype=static void sendPostedEvents ( QObject * receiver, int event_type )
$internalStaticMethod=|void|sendPostedEvents,sendPostedEvents1|QObject *,int

$prototype=static void sendPostedEvents ()
$internalStaticMethod=|void|sendPostedEvents,sendPostedEvents2|

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
$addMethod=sendPostedEvents

$prototype=static void setApplicationName ( const QString & application )
$staticMethod=|void|setApplicationName|const QString &

$prototype=static void setApplicationVersion ( const QString & version )
$staticMethod=|void|setApplicationVersion|const QString &

$prototype=static void setAttribute ( Qt::ApplicationAttribute attribute, bool on = true )
$staticMethod=|void|setAttribute|Qt::ApplicationAttribute,bool=true

$prototype=static void setLibraryPaths ( const QStringList & paths )
$staticMethod=|void|setLibraryPaths|const QStringList &

$prototype=static void setOrganizationDomain ( const QString & orgDomain )
$staticMethod=|void|setOrganizationDomain|const QString &

$prototype=static void setOrganizationName ( const QString & orgName )
$staticMethod=|void|setOrganizationName|const QString &

$prototype=static bool startingUp ()
$staticMethod=|bool|startingUp|

$prototype=static bool testAttribute ( Qt::ApplicationAttribute attribute )
$staticMethod=|bool|testAttribute|Qt::ApplicationAttribute

$prototype=static QString translate(const char * context, const char * sourceText, const char * disambiguation = 0, int n = -1)
$staticMethod=|QString|translate|const char *,const char *,const char *=0,int=-1

$beginSignals
$signal=|aboutToQuit()
$endSignals

#pragma ENDDUMP
