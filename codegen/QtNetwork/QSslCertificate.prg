$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QDATETIME
REQUEST QSSLKEY
#endif

CLASS QSslCertificate

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD clear
   METHOD digest
   METHOD effectiveDate
   METHOD expiryDate
   METHOD isNull
   METHOD issuerInfo1
   METHOD issuerInfo2
   METHOD issuerInfo
   METHOD publicKey
   METHOD serialNumber
   METHOD subjectInfo1
   METHOD subjectInfo2
   METHOD subjectInfo
   METHOD swap
   METHOD toDer
   METHOD toPem
   METHOD toText
   METHOD version
   METHOD fromData
   METHOD fromDevice
   METHOD fromPath

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

#include <QDateTime>
#include <QSslKey>
#include <QStringList>

$prototype=QSslCertificate ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
$constructor=|new1|QIODevice *,QSsl::EncodingFormat=QSsl::Pem

$prototype=QSslCertificate ( const QByteArray & data = QByteArray(), QSsl::EncodingFormat format = QSsl::Pem )
$constructor=|new2|const QByteArray &=QByteArray(),QSsl::EncodingFormat=QSsl::Pem

$prototype=QSslCertificate ( const QSslCertificate & other )
$constructor=|new3|const QSslCertificate &

//[1]QSslCertificate ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
//[2]QSslCertificate ( const QByteArray & data = QByteArray(), QSsl::EncodingFormat format = QSsl::Pem )
//[3]QSslCertificate ( const QSslCertificate & other )

HB_FUNC_STATIC( QSSLCERTIFICATE_NEW )
{
  if( ISBETWEEN(1,2) && ISQIODEVICE(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_NEW1 );
  }
  else if( ISBETWEEN(0,2) && ISOPTQBYTEARRAY(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void clear ()
$method=|void|clear|

$prototype=QByteArray digest ( QCryptographicHash::Algorithm algorithm = QCryptographicHash::Md5 ) const
$method=|QByteArray|digest|QCryptographicHash::Algorithm=QCryptographicHash::Md5

$prototype=QDateTime effectiveDate () const
$method=|QDateTime|effectiveDate|

$prototype=QDateTime expiryDate () const
$method=|QDateTime|expiryDate|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=QStringList issuerInfo ( SubjectInfo subject ) const
$method=|QStringList|issuerInfo,issuerInfo1|QSslCertificate::SubjectInfo

$prototype=QStringList issuerInfo ( const QByteArray & attribute ) const
$method=|QStringList|issuerInfo,issuerInfo2|const QByteArray &

//[1]QStringList issuerInfo ( SubjectInfo subject ) const
//[2]QStringList issuerInfo ( const QByteArray & tag ) const

HB_FUNC_STATIC( QSSLCERTIFICATE_ISSUERINFO )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_ISSUERINFO1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_ISSUERINFO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QSslKey publicKey () const
$method=|QSslKey|publicKey|

$prototype=QByteArray serialNumber () const
$method=|QByteArray|serialNumber|

$prototype=QStringList subjectInfo ( SubjectInfo subject ) const
$method=|QStringList|subjectInfo,subjectInfo1|QSslCertificate::SubjectInfo

$prototype=QString subjectInfo ( const QByteArray & attribute ) const
$method=|QString|subjectInfo,subjectInfo2|const QByteArray &

//[1]QStringList subjectInfo(SubjectInfo subject) const
//[2]QStringList subjectInfo(const QByteArray & attribute) const

HB_FUNC_STATIC( QSSLCERTIFICATE_SUBJECTINFO )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_SUBJECTINFO1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_SUBJECTINFO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void swap(QSslCertificate & other)
$method=|void|swap|QSslCertificate &

$prototype=QByteArray toDer () const
$method=|QByteArray|toDer|

$prototype=QByteArray toPem () const
$method=|QByteArray|toPem|

$prototype=QString toText() const
$method=|QString|toText|

$prototype=QByteArray version () const
$method=|QByteArray|version|

$prototype=static QList<QSslCertificate> fromData ( const QByteArray & data, QSsl::EncodingFormat format = QSsl::Pem )
$staticMethod=|QList<QSslCertificate>|fromData|const QByteArray &,QSsl::EncodingFormat=QSsl::Pem

$prototype=static QList<QSslCertificate> fromDevice ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
$staticMethod=|QList<QSslCertificate>|fromDevice|QIODevice *,QSsl::EncodingFormat=QSsl::Pem

$prototype=static QList<QSslCertificate> fromPath ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
$staticMethod=|QList<QSslCertificate>|fromPath|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

$extraMethods

#pragma ENDDUMP
