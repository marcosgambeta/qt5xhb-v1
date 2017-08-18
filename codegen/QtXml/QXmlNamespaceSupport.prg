$header

#include "hbclass.ch"

CLASS QXmlNamespaceSupport

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD popContext
   METHOD prefix
   METHOD prefixes1
   METHOD prefixes2
   METHOD prefixes
   METHOD processName
   METHOD pushContext
   METHOD reset
   METHOD setPrefix
   METHOD splitName
   METHOD uri

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
QXmlNamespaceSupport ()
*/
$constructor=|new|

$deleteMethod

/*
void popContext ()
*/
$method=|void|popContext|

/*
QString prefix ( const QString & uri ) const
*/
$method=|QString|prefix|const QString &

/*
QStringList prefixes () const
*/
$method=|QStringList|prefixes,prefixes1|

/*
QStringList prefixes ( const QString & uri ) const
*/
$method=|QStringList|prefixes,prefixes2|const QString &

//[1]QStringList prefixes () const
//[2]QStringList prefixes ( const QString & uri ) const

HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_PREFIXES )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLNAMESPACESUPPORT_PREFIXES1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLNAMESPACESUPPORT_PREFIXES2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void processName ( const QString & qname, bool isAttribute, QString & nsuri, QString & localname ) const
*/
$method=|void|processName|const QString &,bool,QString &,QString &

/*
void pushContext ()
*/
$method=|void|pushContext|

/*
void reset ()
*/
$method=|void|reset|

/*
void setPrefix ( const QString & pre, const QString & uri )
*/
$method=|void|setPrefix|const QString &,const QString &

/*
void splitName ( const QString & qname, QString & prefix, QString & localname ) const
*/
$method=|void|splitName|const QString &,QString &,QString &

/*
QString uri ( const QString & prefix ) const
*/
$method=|QString|uri|const QString &

$extraMethods

#pragma ENDDUMP
