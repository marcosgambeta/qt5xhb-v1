%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% #ifndef QT_NO_SSL
%% #endif // QT_NO_SSL

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete

   METHOD swap
   METHOD isNull
%% #if QT_DEPRECATED_SINCE(5,0)
   METHOD isValid
%% #endif
   METHOD isBlacklisted
   METHOD isSelfSigned
   METHOD clear
   METHOD version
   METHOD serialNumber
   METHOD digest
   METHOD issuerInfo
   METHOD subjectInfo
   METHOD subjectInfoAttributes
   METHOD issuerInfoAttributes
%% #if QT_DEPRECATED_SINCE(5,0)
%%   METHOD alternateSubjectNames
%% #endif
%%   METHOD subjectAlternativeNames
   METHOD effectiveDate
   METHOD expiryDate
   METHOD publicKey
   METHOD extensions
   METHOD toPem
   METHOD toDer
   METHOD toText
   METHOD fromPath
   METHOD fromDevice
   METHOD fromData
   METHOD verify
%%   METHOD importPkcs12
   METHOD handle

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QDateTime>
#include <QSslKey>
#include <QStringList>
#include <QSslCertificateExtension>
#include <QSslError>

$prototype=explicit QSslCertificate ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
$internalConstructor=|new1|QIODevice *,QSsl::EncodingFormat=QSsl::Pem

$prototype=explicit QSslCertificate ( const QByteArray & data = QByteArray(), QSsl::EncodingFormat format = QSsl::Pem )
$internalConstructor=|new2|const QByteArray &=QByteArray(),QSsl::EncodingFormat=QSsl::Pem

$prototype=QSslCertificate ( const QSslCertificate & other )
$internalConstructor=|new3|const QSslCertificate &

//[1]explicit QSslCertificate ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
//[2]explicit QSslCertificate ( const QByteArray & data = QByteArray(), QSsl::EncodingFormat format = QSsl::Pem )
//[3]QSslCertificate ( const QSslCertificate & other )

HB_FUNC_STATIC( QSSLCERTIFICATE_NEW )
{
  if( ISBETWEEN(1,2) && ISQIODEVICE(1) && ISOPTNUM(2) )
  {
    QSslCertificate_new1();
  }
  else if( ISBETWEEN(0,2) && ISOPTQBYTEARRAY(1) && ISOPTNUM(2) )
  {
    QSslCertificate_new2();
  }
  else if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
  {
    QSslCertificate_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QSslCertificate()
$deleteMethod

$prototype=void swap(QSslCertificate &other) Q_DECL_NOTHROW
$method=|void|swap|QSslCertificate &

$prototype=bool isNull () const
$method=|bool|isNull|

%% #if QT_DEPRECATED_SINCE(5,0)
$prototype=bool isValid() const
$method=|bool|isValid||#if QT_DEPRECATED_SINCE(5,0)
%% #endif

$prototype=bool isBlacklisted() const
$method=|bool|isBlacklisted|

$prototype=bool isSelfSigned() const
$method=5,4,0|bool|isSelfSigned|

$prototype=void clear ()
$method=|void|clear|

$prototype=QByteArray version () const
$method=|QByteArray|version|

$prototype=QByteArray serialNumber () const
$method=|QByteArray|serialNumber|

$prototype=QByteArray digest(QCryptographicHash::Algorithm algorithm = QCryptographicHash::Md5) const
$method=|QByteArray|digest|QCryptographicHash::Algorithm=QCryptographicHash::Md5

$prototype=QStringList issuerInfo ( SubjectInfo subject ) const
$internalMethod=|QStringList|issuerInfo,issuerInfo1|QSslCertificate::SubjectInfo

$prototype=QStringList issuerInfo ( const QByteArray & attribute ) const
$internalMethod=|QStringList|issuerInfo,issuerInfo2|const QByteArray &

//[1]QStringList issuerInfo ( SubjectInfo subject ) const
//[2]QStringList issuerInfo ( const QByteArray & tag ) const

HB_FUNC_STATIC( QSSLCERTIFICATE_ISSUERINFO )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSslCertificate_issuerInfo1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QSslCertificate_issuerInfo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QStringList subjectInfo ( SubjectInfo subject ) const
$internalMethod=|QStringList|subjectInfo,subjectInfo1|QSslCertificate::SubjectInfo

$prototype=QStringList subjectInfo ( const QByteArray & attribute ) const
$internalMethod=|QStringList|subjectInfo,subjectInfo2|const QByteArray &

//[1]QStringList subjectInfo(SubjectInfo subject) const
//[2]QStringList subjectInfo(const QByteArray & attribute) const

HB_FUNC_STATIC( QSSLCERTIFICATE_SUBJECTINFO )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSslCertificate_subjectInfo1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QSslCertificate_subjectInfo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QList<QByteArray> subjectInfoAttributes() const
$method=|QList<QByteArray>|subjectInfoAttributes|

$prototype=QList<QByteArray> issuerInfoAttributes() const
$method=|QList<QByteArray>|issuerInfoAttributes|

%% #if QT_DEPRECATED_SINCE(5,0)
$prototype=QMultiMap<QSsl::AlternateNameEntryType, QString> alternateSubjectNames() const
%% TODO: implementar QMultiMap
%% #endif

$prototype=QMultiMap<QSsl::AlternativeNameEntryType, QString> subjectAlternativeNames() const
%% TODO: implementar QMultiMap

$prototype=QDateTime effectiveDate () const
$method=|QDateTime|effectiveDate|

$prototype=QDateTime expiryDate () const
$method=|QDateTime|expiryDate|

$prototype=QSslKey publicKey () const
$method=|QSslKey|publicKey|

$prototype=QList<QSslCertificateExtension> extensions() const
$method=|QList<QSslCertificateExtension>|extensions|

$prototype=QByteArray toPem () const
$method=|QByteArray|toPem|

$prototype=QByteArray toDer () const
$method=|QByteArray|toDer|

$prototype=QString toText() const
$method=|QString|toText|

$prototype=static QList<QSslCertificate> fromPath(const QString &path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString)
$staticMethod=|QList<QSslCertificate>|fromPath|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

$prototype=static QList<QSslCertificate> fromDevice(QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem)
$staticMethod=|QList<QSslCertificate>|fromDevice|QIODevice *,QSsl::EncodingFormat=QSsl::Pem

$prototype=static QList<QSslCertificate> fromData(const QByteArray &data, QSsl::EncodingFormat format = QSsl::Pem)
$staticMethod=|QList<QSslCertificate>|fromData|const QByteArray &,QSsl::EncodingFormat=QSsl::Pem

$prototype=static QList<QSslError> verify(QList<QSslCertificate> certificateChain, const QString &hostName = QString())
$staticMethod=|QList<QSslError>|verify|QList<QSslCertificate>,const QString &=QString()

$prototype=static bool importPkcs12(QIODevice *device, QSslKey *key, QSslCertificate *cert, QList<QSslCertificate> *caCertificates = Q_NULLPTR, const QByteArray &passPhrase=QByteArray())
%% TODO: implementar
%% $staticMethod=5,4,0|bool|importPkcs12|QIODevice *,QSslKey *,QSslCertificate *,QList<QSslCertificate> *=0,const QByteArray &=QByteArray()

$prototype=Qt::HANDLE handle() const
$method=|Qt::HANDLE|handle|

$extraMethods

#pragma ENDDUMP
