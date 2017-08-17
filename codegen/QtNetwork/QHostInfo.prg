$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
#endif

CLASS QHostInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addresses
   METHOD error
   METHOD errorString
   METHOD hostName
   METHOD lookupId
   METHOD setAddresses
   METHOD setError
   METHOD setErrorString
   METHOD setHostName
   METHOD setLookupId
   METHOD abortHostLookup
   METHOD fromName
   METHOD localDomainName
   METHOD localHostName
   METHOD lookupHost

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
QHostInfo ( int id = -1 )
*/
$constructor=|new1|int=-1

/*
QHostInfo ( const QHostInfo & other )
*/
$constructor=|new2|const QHostInfo &

//[1]QHostInfo ( int id = -1 )
//[2]QHostInfo ( const QHostInfo & other )

HB_FUNC_STATIC( QHOSTINFO_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    HB_FUNC_EXEC( QHOSTINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQHOSTINFO(1) )
  {
    HB_FUNC_EXEC( QHOSTINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QList<QHostAddress> addresses () const
*/
$method=|QList<QHostAddress>|addresses|

/*
HostInfoError error () const
*/
$method=|QHostInfo::HostInfoError|error|

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
QString hostName () const
*/
$method=|QString|hostName|

/*
int lookupId () const
*/
$method=|int|lookupId|

/*
void setAddresses ( const QList<QHostAddress> & addresses )
*/
$method=|void|setAddresses|const QList<QHostAddress> &

/*
void setError ( HostInfoError error )
*/
$method=|void|setError|QHostInfo::HostInfoError

/*
void setErrorString ( const QString & str )
*/
$method=|void|setErrorString|const QString &

/*
void setHostName ( const QString & hostName )
*/
$method=|void|setHostName|const QString &

/*
void setLookupId ( int id )
*/
$method=|void|setLookupId|int

/*
static void abortHostLookup ( int id )
*/
$staticMethod=|void|abortHostLookup|int

/*
static QHostInfo fromName ( const QString & name )
*/
$staticMethod=|QHostInfo|fromName|const QString &

/*
static QString localDomainName ()
*/
$staticMethod=|QString|localDomainName|

/*
static QString localHostName ()
*/
$staticMethod=|QString|localHostName|

/*
static int lookupHost ( const QString & name, QObject * receiver, const char * member )
*/
$staticMethod=|int|lookupHost|const QString &,QObject *,const char *

$extraMethods

#pragma ENDDUMP
